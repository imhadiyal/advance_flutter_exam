import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../modals/quotes_modals.dart';

class QuotesApi {
  QuotesApi._();
  static final QuotesApi helper = QuotesApi._();
  Future<List<Quotes>> initdata() async {
    List<Quotes> allQuotes = [];
    String api = 'https://dummyjson.com/quotes';
    http.Response response = await http.get(
      Uri.parse(api),
    );
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List quotes = data['quotes'];
      allQuotes = quotes
          .map(
            (e) => Quotes.fromJson(e),
          )
          .toList();
    }
    return allQuotes;
  }
}
