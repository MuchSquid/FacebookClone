import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Image.asset(
                'assets/images/StopMobVote.jpg',
                width: 300,
                height: 300,
                // fit: BoxFit.fill,
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Image.network(
                'https://pm1.aminoapps.com/6085/09b795833fdb99133e68ebdf3692527b07534280_00.jpg',
                loadingBuilder: (_, child, event) {
                  if (event == null) {
                    return child;
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            CachedNetworkImage(
              imageUrl: "https://via.placeholder.com/350x150",
              placeholder: (_, __) => const Center(
                child: CircularProgressIndicator(),
              ),
              errorWidget: (_, ___, error) => const Icon(Icons.error),
            ),
          ],
        ),
      ),
    );
  }
}
