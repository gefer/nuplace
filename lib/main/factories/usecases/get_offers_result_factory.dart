import 'package:nuplace/data/usecases/get_offers.dart';
import 'package:nuplace/main/factories/graphql/api_factory.dart';
import 'package:nuplace/data/queries/get_offers_query.dart';
import 'get_offers_graphql_client_decorator_factory.dart';

GetOffers makeGetOffers() => GetOffers(
      url: getApiUrl('/query'),
      query: get_offers_query,
      graphQlClient: createGetOffersClientDecorator(),
    );
