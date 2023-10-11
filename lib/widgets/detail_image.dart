import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  final int id;
  final String image;

  const DetailImage({
    Key? key,
    required this.image,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 500,
      ),
      color: Colors.black,
      child: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              decoration: const BoxDecoration(
                color: Colors.white10,
                shape: BoxShape.circle,
              ),
            ),
            Hero(
              tag: "image-$id",
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.contain,
                alignment: Alignment.center,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              // child: Image.network(
              //   image,
              //   fit: BoxFit.contain,
              //   alignment: Alignment.center,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
