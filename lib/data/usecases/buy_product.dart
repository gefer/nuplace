import 'package:nuplace/data/graphql/abstract_graphql_client.dart';
import 'package:nuplace/domain/usecases/usecases.dart';

class BuyProductUseCase implements BuyProduct {
  final String url;
  final String query;
  final AbstractGraphQlClient graphQlClient;

  BuyProductUseCase({
    required this.url,
    required this.query,
    required this.graphQlClient,
  });

  @override
  Future<dynamic> make(String id) async {
    graphQlClient.mutate(url: url, query: query);
  }
}
