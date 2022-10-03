import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/values/constants.dart';
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
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AppText(
                text: Constants.price,
                textType: TextType.bold,
                textAlign: TextAlign.center,
              ),
              AppText(
                text: state.currentPrice.toString(),
                textType: TextType.bold,
                color: _getPriceColor(state),
                textAlign: TextAlign.center,
              ),
            ],
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

  Color _getPriceColor(PriceLoaded state) {
    if (state.currentPrice < state.previousPrice) {
      return AppColors.red;
    } else if (state.currentPrice > state.previousPrice) {
      return AppColors.green;
    } else {
      return Colors.black54;
    }
  }
}
