import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/widgets/app_widgets.dart';
import 'package:pricetracker/src/core/widgets/loading_indicator.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';

class PriceValue extends StatelessWidget {
  const PriceValue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PriceCubit, PriceState>(
      listener: (context, state) {
        if (state is PriceNotFound) {
          AppWidgets.showSnackBar(state.message);
        }
      },
      builder: (context, state) {
        if (state is PriceLoaded) {
          return AppText(
            text: "Price: ${state.price.toString()}",
            textType: TextType.bold,
            textAlign: TextAlign.center,
          );
        } else if (state is PriceLoading) {
          return const LoadingIndicator();
        } else if (state is PriceNotFound) {
          return AppText(
            text: state.message,
            textType: TextType.regular,
            textAlign: TextAlign.center,
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
