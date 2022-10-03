import 'package:pricetracker/src/core/values/constants.dart';
import 'package:web_socket_channel/io.dart';

abstract class HomeDataSource {
  List<String> getCompany();
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
}
