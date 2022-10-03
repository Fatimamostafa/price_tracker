import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/core/widgets/app_widgets.dart';
import 'package:pricetracker/src/core/widgets/dropdown.dart';
import 'package:pricetracker/src/core/widgets/dropdown_inactive.dart';
import 'package:pricetracker/src/features/home/data/models/dropdown.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/symbol_cubit.dart';

class SymbolDropDown extends StatelessWidget {
  const SymbolDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SymbolCubit, SymbolState>(
      listener: (context, state) {
       if (state is SymbolsEmpty) {
          AppWidgets.showSnackBar(state.message);
        }
      },
      builder: (context, state) {
        if (state is SymbolsLoaded) {
          return AppDropdown(
            dropDownOptions: state.symbols.active_symbols
                .map((symbols) =>
                    DropdownModel(symbols.display_name, symbols.symbol))
                .toList(),
            callBack: (_) => onSymbolSelection,
            hint: Constants.dropdownSymbolHint,
          );
        } else if (state is SymbolsLoading) {
          return const AppDropdownInactive(
              hint: Constants.dropdownEmptySymbolHint, isLoading: true);
        }
        return const AppDropdownInactive(
            hint: Constants.dropdownEmptySymbolHint, isLoading: false);
      },
    );
  }

  void onSymbolSelection(String symbol) {
    sl<PriceCubit>().getPrice(symbol);
  }
}
