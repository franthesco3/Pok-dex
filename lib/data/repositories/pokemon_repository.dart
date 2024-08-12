import 'package:pokedex/data/api/setup/api_provider.dart';

import '../api/setup/endpoint.dart';

abstract class PokemonRepositoryProtocol {
  void getPokemons({Success? success, Failure? failure});
}

class PokemonRepository extends PokemonRepositoryProtocol {
  final ApiProvider _provider;

  PokemonRepository({required ApiProvider provider}) : _provider = provider;

  @override
  void getPokemons({Success? success, Failure? failure}) {

    final endpoint = Endpoint(
      path: '/pokemon?limit=80',
      method: Method.get,
      queryParameters: {},
    );

    _provider.request(endpoint: endpoint, success: success, failure: failure);
  }
}
