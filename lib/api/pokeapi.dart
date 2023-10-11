import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:pokedex/utilities/app_config.dart';

class PokeAPI {
  static Future<http.Response> getPokemon() =>
      http.get(Uri.parse(AppConfig().pokemonApi));
}
