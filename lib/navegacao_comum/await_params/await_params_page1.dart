import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AwaitParamsPage1 extends StatelessWidget {
  const AwaitParamsPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pop('retornando parametro por Flutter nativo');
                },
                child: const Text('retornando com params Flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.back(result: 'retornando parametro por GetX');
                },
                child: const Text('retornando com params GetX'))
          ],
        ),
      ),
    );
  }
}
