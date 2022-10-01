import 'package:pricetracker/src/core/utils/imports.dart';


class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AppText(
          text: "Home",
          textType: TextType.regular,
        ));
  }
}
