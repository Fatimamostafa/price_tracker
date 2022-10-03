import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/extension.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';

import 'package:pricetracker/src/core/widgets/dropdown.dart';
import 'package:pricetracker/src/core/widgets/loading_indicator.dart';
import 'package:pricetracker/src/features/home/data/models/dropdown.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/symbol_cubit.dart';

class CompanyDropDown extends StatelessWidget {
  const CompanyDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is CompanyLoaded) {}
        return;
      },
      builder: (context, state) {
        if (state is Initial) {
          print("Company Initial");
          return const LoadingIndicator();
        } else if (state is CompanyLoaded) {
          print("Company CompanyLoaded");
          return AppDropdown(
            dropDownOptions: state.companyEnums
                .map((symbols) => DropdownModel(symbols.toTitleCase(), symbols))
                .toList(),
            callBack: (String? s) => onCompanySelection(s),
            hint: Constants.dropdownCompanyHint,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }

  void onCompanySelection(String? val) {
    if (val != null) {
      sl<SymbolCubit>().getActiveSymbols(val);
    }
  }
}
