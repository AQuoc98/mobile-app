import 'dart:convert';

import 'package:http/http.dart' as http;

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

String url = 'rest.coinapi.io';
String apiKey = '52DAFE6D-B343-4CB2-A9AE-0294DE33FBA9';
Map<String, String> headers = {"X-CoinAPI-Key": apiKey};

class CoinData {
  Future getCoinData(String selectedCurrency) async {
    Map<String, String> cryptoPrices = {};

    for (String crypto in cryptoList) {
      Uri requestURL =
          Uri.https(url, 'v1/exchangerate/$crypto/$selectedCurrency');
      http.Response response = await http.get(requestURL, headers: headers);

      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        print(decodedData);

        double lastPrice = decodedData['rate'];

        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        throw 'Problem with the get request';
      }
    }

    return cryptoPrices;
  }
}
