import 'package:pricetracker/src/core/utils/imports.dart';

class AppBarX extends StatelessWidget {
  final BuildContext context;
  final String? title;
  final bool showBack;

  const AppBarX({
    super.key,
    required this.context,
    required this.title,
    required this.showBack,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: showBack
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: applySpacing(3),
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              )
            : null,
        centerTitle: false,
        backgroundColor: Colors.white,
        title: AppText(
          textType: TextType.regular,
            text: title ?? "",
            softWrap: true,
            fontSize: applySpacing(2.5),
            fontWeight: FontWeight.w700),
        titleSpacing: 0,
        elevation: 0,

    );
  }
}
