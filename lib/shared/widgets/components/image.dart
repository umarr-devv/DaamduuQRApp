import 'package:app/shared/theme/theme.dart';
import 'package:app/utils/file.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    this.imageId,
    this.placehodler = 'assets/placeholder/default.png',
    this.height = double.infinity,
    this.width = double.infinity,
    this.fit = BoxFit.cover,
  });

  final String? imageId;
  final String placehodler;
  final double height;
  final double width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Builder(
      builder: (context) {
        if (imageId != null) {
          return CachedNetworkImage(
            imageUrl: fileUrl(imageId!),
            height: height,
            width: width,
            fit: BoxFit.cover,
            placeholder: (context, url) {
              return Padding(
                padding: const EdgeInsets.all(4),
                child: SpinKitDualRing(color: theme.custom.primaryColor),
              );
            },
          );
        } else {
          return Image.asset(
            placehodler,
            height: height,
            width: width,
            fit: BoxFit.cover,
          );
        }
      },
    );
  }
}
