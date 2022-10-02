import 'dart:convert';

import 'package:pricetracker/src/core/values/constants.dart';
import 'package:pricetracker/src/features/home/data/models/active_symbols.dart';
import 'package:web_socket_channel/io.dart';

abstract class HomeDataSource {
  List<String> getCompany();

  Future<ActiveSymbols> getActiveSymbols(String landingCompany);
}

class HomeDataSourceImpl implements HomeDataSource {
  var channel = IOWebSocketChannel.connect(Uri.parse(Constants.baseUrl));

  @override
  List<String> getCompany() {
    final companyEnums = [
      "iom",
      "malta",
      "maltainvest",
      "svg",
      "virtual",
      "vanuatu",
      "champion",
      "champion-virtual",
    ];
    return companyEnums;
  }

  @override
  Future<ActiveSymbols> getActiveSymbols(String landingCompany) async {
     late ActiveSymbols activeSymbols;

    channel.sink.add(jsonEncode({
      "active_symbols": "brief",
      "landing_company": landingCompany,
    }));

    channel.stream.listen((message) {
      try {
        final result = jsonDecode(message);
        activeSymbols = ActiveSymbols.fromJson(
          result,
        );
      } catch (e) {
        throw Exception();
      }
    });

    return activeSymbols;
  }
}
