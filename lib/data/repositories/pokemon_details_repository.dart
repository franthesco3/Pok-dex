import 'package:pokedex/data/api/setup/endpoint.dart';

import '../api/setup/api_provider.dart';

abstract class PokemonDetailsRepositoryProtocol {
  void getDetails({required String name, Success? success, Failure? failure});
}

class PokemonDetailsRepository extends PokemonDetailsRepositoryProtocol {
  final ApiProvider _provider;

  PokemonDetailsRepository({required ApiProvider provider})
      : _provider = provider;

  @override
  void getDetails({required String name, Success? success, Failure? failure}) {
    
    final endpoint = Endpoint(
      path: '/pokemon/$name',
      method: Method.get,
      queryParameters: {},
    );

    _provider.request(endpoint: endpoint, success: success, failure: failure);
  }
}
