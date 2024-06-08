import 'package:flutter/material.dart';

class SizeCounter extends StatefulWidget {
  const SizeCounter({super.key});

  @override
  State<SizeCounter> createState() => _SizeCounterState();
}

class _SizeCounterState extends State<SizeCounter> {

  double _width= 100.0;
  double _height= 180.0;

  void  _productCounter(){
    setState(() {
      _width = _width * 2;
      _height = _height * 2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Increment in Puppy Size",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 10,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://images.dog.ceo/breeds/husky/n02110185_14766.jpg",
                width: _width,
                height: _height,
              ),
              FloatingActionButton(
                tooltip: "Product",
                onPressed: _productCounter,
                child: const Icon(Icons.add_circle),
              )
            ],
          ),
        ),
      ),
    );
  }
}
