import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemon_card_background.dart';
import 'package:pokedex/widgets/pokemon_card_data.dart';

import '../models/pokemon_screen_data.dart';

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
// class DetailImage extends StatelessWidget {
//   final String image;

//   const DetailImage({Key? key, required this.image}) : super(key: key);

//   BoxDecoration getContainerDecoration() => BoxDecoration(
//         borderRadius: BorderRadius.circular(24),
//         border: Border.all(
//           color: Colors.grey.withOpacity(0.24),
//           width: 1,
//         ),
//       );
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(24),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(24),
//         enableFeedback: true,
//         splashColor: Colors.red[50],
//         onTap: () => {
//           Navigator.pushNamed(
//             context,
//             "/details",
//             arguments: PokemonScreenData(id, name, image),
//           )
//         },
//         child: Container(
//           padding: const EdgeInsets.all(7),
//           decoration: getContainerDecoration(),
//           child: Stack(
//             children: [
//               PokemonCardBackground(id: id),
//               PokemonCardData(id: id, name: name, image: image),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Container(
//   //     constraints: const BoxConstraints(
//   //       maxHeight: 500,
//   //     ),
//   //     color: Colors.black,
//   //     child: Center(
//   //       child: Stack(
//   //         children: [
//   //           Container(
//   //             height: 500,
//   //             width: 500,
//   //             decoration: const BoxDecoration(
//   //               color: Colors.white10,
//   //               shape: BoxShape.circle,
//   //             ),
//   //           ),
//   //           CachedNetworkImage(
//   //             imageUrl: image,
//   //             fit: BoxFit.contain,
//   //             alignment: Alignment.center,
//   //             placeholder: (context, url) =>
//   //                 const Center(child: CircularProgressIndicator()),
//   //             errorWidget: (context, url, error) => const Icon(Icons.error),
//   //           ),
//   //           // Image.network(
//   //           //   image,
//   //           //   fit: BoxFit.contain,
//   //           //   alignment: Alignment.center,
//   //           // ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
// }
