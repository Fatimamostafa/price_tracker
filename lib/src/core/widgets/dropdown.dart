import 'package:pricetracker/src/core/utils/callback.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/widgets/containers/card_container.dart';
import 'package:pricetracker/src/features/home/data/models/dropdown.dart';

class AppDropdown extends StatefulWidget {
  final List<DropdownModel> dropDownOptions;
  final String hint;
  final StringCallback callBack;

  const AppDropdown({
    Key? key,
    required this.dropDownOptions,
    required this.callBack,
    required this.hint,
  }) : super(key: key);

  @override
  State<AppDropdown> createState() => _AppDropdownState();
}

class _AppDropdownState extends State<AppDropdown> {
  DropdownModel? selectedItem;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CardContainer(
      padding: 0,
      withBorder: true,
      child: DropdownButton<DropdownModel>(
          isExpanded: true,
              hint: AppText(
                textType: TextType.regular,
                text: widget.hint,
              ),
              selectedItemBuilder: (context) {
                return widget.dropDownOptions.map<Widget>((DropdownModel e) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppText(
                        textType: TextType.regular,
                        text: e.display,
                        color: AppColors.blue,
                      )
                    ],
                  );
                }).toList();
              },
              underline: const SizedBox.shrink(),
              style: TextStyle(
                fontSize: applySpacing(1.5),
                fontWeight: FontWeight.w700,
                color: AppColors.blue,
              ),
              items: widget.dropDownOptions
                  .map<DropdownMenuItem<DropdownModel>>(
                      (DropdownModel dropdownModel) {
                return DropdownMenuItem<DropdownModel>(
                    value: dropdownModel,
                    child: AppText(
                      textType: TextType.regular,
                      text: dropdownModel.display,
                    ));
              }).toList(),
              value: selectedItem,
              onChanged: _changeSelection)
          .withPaddingSymmetric(
        horizontal: applySpacing(2),
      ),
    );
  }

  void _changeSelection(DropdownModel? val) {
    if (val != null) {
      setState(() {
        selectedItem = val;
      });

      widget.callBack(val.value);
    }
  }
}
