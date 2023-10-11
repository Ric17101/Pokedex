import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final String image;
  final String name;
  const PokemonCardData({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.contain,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        const Divider(),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(
            fontSize: 21,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
