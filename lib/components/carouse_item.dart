import 'package:dietrecommendation/blank_image.dart';
import 'package:flutter/material.dart';

class CarouseItem extends StatelessWidget {
  const CarouseItem({
    super.key,
    required this.url,
    required this.title
  });
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(url),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          )
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black54,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))
            ),

            padding:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            child: Column(
              children: [
                Text(
                  title,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }
}
