import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pricetracker/src/core/utils/imports.dart';
import 'package:pricetracker/src/core/utils/service_locator.dart';
import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/home/home_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/price/price_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/cubit/symbol/symbol_cubit.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/company_dropdown.dart';
import 'package:pricetracker/src/features/home/presentation/widgets/price.dart';
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
        title: const AppText(
          text: Constants.appTitle,
          textType: TextType.bold,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Spacing(
            size: 4,
          ),
          BlocProvider(
            create: (_) => sl<HomeCubit>(),
            child: const CompanyDropDown(),
          ),
          const Spacing(
            size: 2,
          ),
          BlocProvider(
            create: (context) => sl<SymbolCubit>(),
            child: const SymbolDropDown(),
          ),
          const Spacing(
            size: 4,
          ),
          BlocProvider(
            create: (context) => sl<PriceCubit>(),
            child: const PriceValue(),
          ),
        ],
      ).withPadding(
        padding: EdgeInsets.all(
          applySpacing(2.5),
        ),
      ),
    );
  }
}
