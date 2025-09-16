import 'package:app/features/scanner/bloc/cubit/barcode_cubit.dart';
import 'package:app/features/scanner/widgets/info.dart';
import 'package:app/features/scanner/widgets/widgets.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final cubit = BarcodeCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScannerCamera(cubit: cubit),
          ScannerBackground(),
          ScannerAction(),
          ScannerInfo(cubit: cubit),
        ],
      ),
    );
  }
}
