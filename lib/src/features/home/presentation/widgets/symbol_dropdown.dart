import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/core/widgets/dropdown.dart';
import 'package:pricetracker/src/features/home/data/models/dropdown.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/socket_cubit.dart';

class SymbolDropDown extends StatelessWidget {
  const SymbolDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SocketCubit, SocketState>(
      listener: (context, state) {
        if (state is SymbolsLoaded) {
          print("SymbolsLoaded listener");
        }
        else if (state is SymbolsEmpty) {
          print("SymbolEmpty listener");
        }
        return;
      },
      builder: (context, state) {
        if (state is SymbolsLoaded) {
          print("SymbolsLoaded build");
          return AppDropdown(
            dropDownOptions: state.symbols.active_symbols
                .map((symbols) =>
                    DropdownModel(symbols.display_name, symbols.symbol))
                .toList(),
            callBack: (_) => onSymbolSelection,
            hint: Constants.dropdownSymbolHint,
          );
        }
        return  Container(color: Colors.amber, height: 40,);
      },
    );
  }

  void onSymbolSelection(String val) {
    //sl<HomeCubit>().changeSymbol(val);
  }
}
