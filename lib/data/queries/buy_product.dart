const String buy_product_query = r'''
  mutation {
   purchase(offerId: $offerId) {
    success
    errorMessage
    customer {
      id
      name
      balance
    }
  }
}
''';