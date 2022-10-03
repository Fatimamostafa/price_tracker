import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/widgets/app_widgets.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';

class PriceValue extends StatelessWidget {
  const PriceValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceCubit, PriceState>(
      listener: (context, state) {
        if (state is PriceError) {
          AppWidgets.showSnackBar(state.message);
        }
      },
      builder: (context, state) {
        if (state is PriceLoaded) {
          return AppText(
            text: state.price,
            textType: TextType.bold,
            textAlign: TextAlign.center,
          );
        }
        return const AppText(
          text: '0',
          textType: TextType.bold,
          textAlign: TextAlign.center,
        );
      },
    );
  }
}
