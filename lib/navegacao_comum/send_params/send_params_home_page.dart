import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_routes/navegacao_comum/send_params/send_params_page1.dart';

class SendParamsHomePage extends StatelessWidget {
  const SendParamsHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recebendo Parametros'),
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
                        return const SendParamsPage1();
                      },
                      settings: const RouteSettings(
                        arguments: 'Parametro pelo Flutter Nativo',
                      ),
                    ),
                  );
                },
                child: const Text('Go to page com Flutter nativo')),
            TextButton(
                onPressed: () {
                  Get.to(const SendParamsPage1(),
                      arguments: 'Parametro pelo GetX');
                },
                child: const Text('Go to page com GetX'))
          ],
        ),
      ),
    );
  }
}
