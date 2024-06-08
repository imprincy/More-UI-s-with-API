import 'package:flutter/material.dart';

class PositionedStacking extends StatelessWidget {
  const PositionedStacking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Positioned Stacking",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Image.network(
              "https://image.tmdb.org/t/p/original/pB8BM7pdSp6B6Ih7QZ4DrQ3PmJK.jpg",
              height: 260,
              width: 200,
            ),
            Positioned(
                top: 8,
                right: 18,
                child: Container(
                  color: Colors.pinkAccent,
                  height: 20,
                  width: 100,
                  child: const Text(
                    "Fight Club",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white,),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
