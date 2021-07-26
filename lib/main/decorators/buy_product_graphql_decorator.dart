import 'package:nuplace/data/graphql/abstract_graphql_client.dart';

class BuyProductGraphQLDecorator implements AbstractGraphQlClient {
  final AbstractGraphQlClient decorateeClient;

  BuyProductGraphQLDecorator({required this.decorateeClient});

  @override
  Future<dynamic> execute({required String url, required String query}) async {
    throw UnimplementedError();
  }

  @override
  Future<dynamic> mutate({required String url, required String query}) async {
    return await decorateeClient.mutate(url: url, query: query);
  }
}
