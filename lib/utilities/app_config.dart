class AppConfig {
  static final AppConfig _instance = AppConfig._internal();

  factory AppConfig() => _instance;

  AppConfig._internal();

  // String get environment => _config.environment;

  String get appName => "Pokedex";

  String get pokeApiBaseUrl => "https://pokeapi.co/api/v2/";

  String get pokemonApi => "${pokeApiBaseUrl}pokemon?limit=151&offset=0";
  // String get pokemonGenerationApi => "${pokeApiBaseUrl}generation/1?limit=20&offset=20";

  String pokemonImageApi(int id) =>
      "https://assets.pokemon.com/assets/cms2/img/pokedex/full/${id.toString().padLeft(3, '0')}.png";
  // "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${element.key + 1}.png";
}
