import 'package:nuplace/data/graphql/abstract_graphql_client.dart';
import 'package:nuplace/main/decorators/get_offers_graphql_decorator.dart';
import 'package:nuplace/main/factories/graphql/graphql_client_factory.dart';

AbstractGraphQlClient createGetOffersUserDecorator() =>
    GetOffersGraphQLDecorator(decorateeClient: createGraphQLAdapter());
