import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/navegacao_comum/off/off_page3.dart';

class OffPage2 extends StatelessWidget {
  const OffPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const OffPage3();
                      },
                    ),
                  );
                },
                child: const Text('Go to page 3 com Flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.off(const OffPage3());
                },
                child: const Text('Go to page 3 com GetX'))
          ],
        ),
      ),
    );
  }
}

// vá para a 3 sem manter a 2 sobreescrevendo-a
// quando chegar na 3 ele volte para a primeira página da navegação
// substitua a 2 quando for na 3
// diferente da pilha normal do Flutter
// seria home -> 1 ->3 a 2 foi sobreescrita com o off
// mesma coisa do pushReplacement