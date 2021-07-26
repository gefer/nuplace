import 'package:nuplace/data/queries/buy_product.dart';
import 'package:nuplace/data/usecases/usecases.dart';
import 'package:nuplace/main/factories/graphql/api_factory.dart';
import 'package:nuplace/main/factories/usecases/buy_product_graphql_client_decorator_factory.dart';

BuyProductUseCase makeBuyProduct() => BuyProductUseCase(
  url: getApiUrl('/query'),
  query: buy_product_query,
  graphQlClient: createPurchaseOfferClientDecorator(),
);
