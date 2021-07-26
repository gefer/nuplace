import 'package:nuplace/data/graphql/abstract_graphql_client.dart';
import 'package:nuplace/data/models/models.dart';
import 'package:nuplace/domain/usecases/usecases.dart';

class GetOffers implements LoadOffers {
  final String url;
  final String query;
  final AbstractGraphQlClient graphQlClient;

  GetOffers({
    required this.url,
    required this.query,
    required this.graphQlClient,
  });

  Future<Viewer> getViewer() async {
    final queryResult = await graphQlClient.execute(url: url, query: query);
    return Viewer.fromJson(queryResult.data["viewer"]);
  }
}
