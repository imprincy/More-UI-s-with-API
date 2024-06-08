import 'package:flutter/material.dart';

class StackSecond extends StatelessWidget {
  const StackSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stacking"),
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
                  width: 200,
                  height: 260,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, top: 16),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const SizedBox(
                    height: 44,
                    width: 48,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle)),
                  ),
                  CircularProgressIndicator(
                    value: 0.4,
                    strokeWidth: 3,
                    color: Colors.yellow,
                    backgroundColor: Colors.yellow.withOpacity(0.6),
                  ),
                  const Text(
                    "55%",
                    style: TextStyle(color: Colors.white,fontSize: 12),
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
