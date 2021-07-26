import 'package:graphql/client.dart';
import 'package:nuplace/data/graphql/abstract_graphql_client.dart';
import 'package:nuplace/main/factories/graphql/api_factory.dart';

class GraphQLAdapter implements AbstractGraphQlClient {
  static Policies policies = Policies(
    fetch: FetchPolicy.noCache,
  );

  final GraphQLClient client = GraphQLClient(
    link: makeLink(getApiUrl('/query'), getToken()),
    cache: GraphQLCache(),
    defaultPolicies: DefaultPolicies(
      watchQuery: policies,
      query: policies,
      mutate: policies,
    ),
  );

  @override
  Future<dynamic> execute({required String url, required String query}) {
    final QueryOptions _options = QueryOptions(document: gql(query));
    return client.query(_options);
  }

  @override
  Future mutate({required String url, required String query}) {
    final MutationOptions _options = MutationOptions(document: gql(query));
    return client.mutate(_options);
  }

  static makeLink(String url, String token) {
    final HttpLink httpLink = HttpLink(url);
    final AuthLink authLink = AuthLink(getToken: () async => 'Bearer $token');

    return authLink.concat(httpLink);
  }
}
