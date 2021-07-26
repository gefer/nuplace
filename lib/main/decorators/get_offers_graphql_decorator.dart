import 'package:nuplace/data/graphql/abstract_graphql_client.dart';

class GetOffersGraphQLDecorator implements AbstractGraphQlClient {
  final AbstractGraphQlClient decorateeClient;

  GetOffersGraphQLDecorator({required this.decorateeClient});

  @override
  Future<dynamic> execute({required String url, required String query}) async {
    return await decorateeClient.execute(url: url, query: query);
  }

  @override
  Future mutate({required String url, required String query}) {
    throw UnimplementedError();
  }
}
