import 'package:app/features/search/bloc/search/search_cubit.dart';
import 'package:app/features/search/widgets/appbar.dart';
import 'package:auto_route/annotations.dart';
import 'package:daamduuqr_client/daamduuqr_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key, this.establishment});

  final EstablishmentScheme? establishment;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchCubit(establishment: establishment),
        ),
      ],
      child: Scaffold(
        body: CustomScrollView(slivers: [SearchAppBar()]),
      ),
    );
  }
}
