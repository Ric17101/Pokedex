import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonCardData extends StatelessWidget {
  final int id;
  final String image;
  final String name;
  const PokemonCardData({
    Key? key,
    required this.id,
    required this.name,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(11),
            child: Hero(
              tag: "image-$id",
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.contain,
                alignment: Alignment.bottomRight,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              // child: Image.network(
              //   image,
              //   fit: BoxFit.contain,
              //   alignment: Alignment.bottomRight,
              // ),
            ),
          ),
        ),
        const Divider(),
        Hero(
          tag: "name-$id",
          child: Material(
            color: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(21),
              ),
            ),
            child: Center(
              child: Text(
                "${name[0].toUpperCase()}${name.substring(1)}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 21,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
