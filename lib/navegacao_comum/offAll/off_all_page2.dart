import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/navegacao_comum/offAll/off_all_page3.dart';

class OffAllPage2 extends StatelessWidget {
  const OffAllPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const OffAllPage3();
                      },
                    ),
                    ModalRoute.withName('/OffAllHomePage'),
                  );
                },
                child: const Text(
                    'Go to page 3 excluindo parte da arvore de navegação com Flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.offAll(
                    const OffAllPage3(),
                    predicate: ModalRoute.withName('/OffAllHomePage'),
                  );
                },
                child: const Text(
                    'Go to page 3  excluindo parte da arvore de navegação com GetX'))
          ],
        ),
      ),
    );
  }
}
