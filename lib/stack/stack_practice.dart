import 'package:flutter/material.dart';

class Stacking extends StatelessWidget {
  const Stacking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Stack"),
        elevation: 8,
        backgroundColor: Colors.indigo.shade50,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
                  height: 260,
                  width: 200,
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child:
              Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    height: 48,
                    width: 48,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle),
                    ),
                  ),
                  CircularProgressIndicator(
                    value: 0.5,
                    strokeWidth: 3,
                    color: Colors.green,
                    backgroundColor: Colors.green.withOpacity(0.6),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
