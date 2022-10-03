import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/symbol_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/company.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/price.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/symbols.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const AppText(
          text: Constants.appTitle,
          textType: TextType.bold,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Spacing(
            size: 4,
          ),
          BlocProvider(
            create: (_) => sl<HomeCubit>(),
            child: const CompanyDropDown(),
          ),
          const Spacing(
            size: 2,
          ),
          BlocProvider(
            create: (context) => sl<SymbolCubit>(),
            child: const SymbolDropDown(),
          ),
          const Spacing(
            size: 4,
          ),
          BlocProvider(
            create: (context) => sl<PriceCubit>(),
            child: const PriceValue(),
          ),
        ],
      ).withPadding(
        padding: EdgeInsets.all(
          applySpacing(2.5),
        ),
      ),
    );
  }
}
