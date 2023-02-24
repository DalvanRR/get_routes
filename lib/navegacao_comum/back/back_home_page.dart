import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/navegacao_comum/back/back_page1.dart.dart';

class BackHomePage extends StatelessWidget {
  const BackHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const BackPage1Dart();
                      },
                    ),
                  );
                },
                child: const Text('Go to page com Flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const BackPage1Dart());
                },
                child: const Text('Go to page com GetX'))
          ],
        ),
      ),
    );
  }
}
