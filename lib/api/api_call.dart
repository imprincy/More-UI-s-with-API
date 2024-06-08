import 'package:airtel_app/api/model_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Interface extends StatelessWidget {
  const Interface({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ModelInterface();
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Application Interface"),
            elevation: 9,
          ),
          body: Consumer<ModelInterface>(
            builder:
                (BuildContext context, ModelInterface value, Widget? child) {
              if (value.responseCall.isEmpty) {
                value.apiCallingResponse();
              }

              return SingleChildScrollView(
                child: Column(
                  children: [Text('response is :- ${value.responseCall}')],
                ),
              );
            },
          )),
    );
  }
}
