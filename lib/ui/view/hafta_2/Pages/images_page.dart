import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


Widget uploadPicture(String pictureUrl) {
  return CachedNetworkImage(
    imageUrl: pictureUrl,
    placeholder: (context, url) => const CircularProgressIndicator(),
    errorWidget: (context, url, error) => const Icon(Icons.error),
  );
}

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  final String pictureUrl =
      "https://etotek.com.tr/wp-content/uploads/2024/10/cropped-etotek-Photoroom.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Images"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            uploadPicture(pictureUrl),
            Image.asset("lib/images/etotek.png"),
          ],
        ),
      ),
    );
  }
}