import 'package:exam_1/services/quotes.dart';
import 'package:get/get.dart';
import '../helper/quotes_helper.dart';
import '../modals/quotes_modals.dart';

class QuotesController extends GetxController {
  QuotesController() {
    getdata();
    initDataBase();
  }
  RxList<Quotes> quotes = <Quotes>[].obs;
  RxList<Quotes> allFavQuotes = <Quotes>[].obs;
  RxList<Quotes> allFavQuotesAuthor = <Quotes>[].obs;

  Future<void> getdata() async {
    quotes(await QuotesApi.helper.initdata());
  }

  Future<void> initDataBase() async {
    allFavQuotes(await QuoteDataBase.quoteDataBase.getAllData());
  }

  Future<void> addFavQuoteInDataBase({required Quotes quote}) async {
    await QuoteDataBase.quoteDataBase.insetData(quote: quote);
    initDataBase();
  }
}
