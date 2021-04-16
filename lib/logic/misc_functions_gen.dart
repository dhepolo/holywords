import 'global_state.dart';

import 'data/item.dart';

//TODO: do we still need this?

void limitQuotesAndFillersByMenuChoice() {
  if (quoteChoicesAfterMenu.isNotEmpty) {
    print("ALL ANIMALS NON NULL!");
    quoteChoicesAfterMenu.clear();
  }

  print("inside limitQuotesByMenuChoice");

  quoteChoicesAfterMenu = List.from(quotesAndTranslationsCat1);
  fillerChoicesAfterMenu = List.from(fillersQuotes);
}
