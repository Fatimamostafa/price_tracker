import 'package:pricetracker/main.dart';
import 'package:pricetracker/src/core/utils/imports.dart';


/// This class be will be used for reusable widgets throughout the app
class AppWidgets {
  /// Shows a snackbar with specific [msg] argument
  static void showSnackBar(String? msg, {Color? color}) {
    var currentScaffold = globalScaffoldKey.currentState!;
    currentScaffold.hideCurrentSnackBar();
    currentScaffold.showSnackBar(SnackBar(
      backgroundColor: color ?? AppColors.purple,
      content: AppText(
        textType: TextType.bold,
        text: msg,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }
}
