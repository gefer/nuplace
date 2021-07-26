abstract class AbstractGraphQlClient {
  Future<dynamic> execute({
    required String url,
    required String query,
  });

  Future<dynamic> mutate({
    required String url,
    required String query,
  });
}
