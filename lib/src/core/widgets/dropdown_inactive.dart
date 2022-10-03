import 'package:pricetracker/src/core/utils/callback.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/widgets/containers/card_container.dart';
import 'package:pricetracker/src/core/widgets/loading_indicator.dart';
import 'package:pricetracker/src/features/home/data/models/dropdown.dart';

class AppDropdownInactive extends StatelessWidget {
  final String hint;
  final bool isLoading;

  const AppDropdownInactive({
    Key? key,
    required this.hint,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      padding: 0,
      withBorder: true,
      borderColor: Colors.grey,
      child: DropdownButton<DropdownModel>(
        isExpanded: true,
        menuMaxHeight: applySpacing(8),
        hint: isLoading
            ? const LoadingIndicator()
            : AppText(
                textType: TextType.regular,
                text: hint,
              ),

        onChanged: (_) {},
        items: const [],
        underline: const SizedBox.shrink(),
      ).withPaddingSymmetric(
        horizontal: applySpacing(2),
      ),
    );
  }
}
