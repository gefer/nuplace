import 'package:nuplace/data/graphql/abstract_graphql_client.dart';
import 'package:nuplace/main/decorators/decorators.dart';
import 'package:nuplace/main/factories/graphql/graphql_client_factory.dart';

AbstractGraphQlClient createGetOffersClientDecorator() =>
    GetOffersGraphQLDecorator(
      decorateeClient: createGraphQLAdapter(),
    );
