const String get_offers_query = r'''
  query {
  viewer {
    id
    balance
    name
    offers {
      id
      price
      product {
        id
        name
        description
        image
      }
    }
  }
}
''';