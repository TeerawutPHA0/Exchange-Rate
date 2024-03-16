import 'package:exchangerate/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class API {
  static Future<List<EC_Rates>> fetchExchangeRate() async {
    var today = DateTime.now().toString().substring(0, 10);
    print(today);
    var headers = {
      'X-IBM-Client-Id': '8c3c2cb1-175e-4600-b5b5-d8df48b2c7ec',
    };

    var params = {
      'start_period': '2024-03-01',
      'end_period': today,
      'currency': 'USD',
    };

    var uri = Uri.https(
      'apigw1.bot.or.th',
      '/bot/public/Stat-ExchangeRate/v2/DAILY_AVG_EXG_RATE/',
      params,
    );

    var response = await http.get(uri, headers: headers);

    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var result = jsonResponse['result'];
      EC_Rates ecRates = EC_Rates.fromMap(result);
      return [ecRates];
    } else {
      print('Request failed with status: ${response.statusCode}');
      throw Exception('Failed to fetch exchange rate');
    }
  }
}
