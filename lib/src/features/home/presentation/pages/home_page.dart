import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/socket_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/company_dropdown.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/symbol_dropdown.dart';
import 'package:web_socket_channel/io.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var channel = IOWebSocketChannel.connect(
      Uri.parse('wss://ws.binaryws.com/websockets/v3?app_id=33006'));

  String selectedSymbol = Constants.dropdownSymbolHint;
  String selectedCompany = 'iom';

  @override
  void initState() {
    super.initState();
    streamListener();
  }

  streamListener() {
    channel.sink.add(jsonEncode({"active_symbols": "brief"}));

    channel.stream.listen((message) {
      Map data = jsonDecode(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: AppText(
          text: "Price Tracker",
          textType: TextType.bold,
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider(
              create: (_) => sl<HomeCubit>(),
              child: CompanyDropDown(),
            ),
            BlocProvider(
              create: (context) => sl<SocketCubit>(),
              child: SymbolDropDown(),
            )
          ],
        ),
      ),
    );
  }
}
