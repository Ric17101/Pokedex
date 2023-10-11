import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemon_card.dart';

import '../models/pokemon_model.dart';

Widget pokemonGridItem(
  BuildContext context,
  int index,
  Animation<double> animation,
  List<Pokemon> pokemon,
) =>
    FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: pokemon.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : PokemonCard(
              id: pokemon.elementAt(index).id,
              name: pokemon.elementAt(index).name,
              image: pokemon.elementAt(index).img,
            ),
    );
