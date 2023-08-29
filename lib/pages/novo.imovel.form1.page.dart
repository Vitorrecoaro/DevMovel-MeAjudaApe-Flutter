import 'package:flutter/material.dart';

class NovoImovelForms extends StatefulWidget {
  const NovoImovelForms({super.key});

  @override
  State<NovoImovelForms> createState() => _NovoImovelFormsState();
}

class _NovoImovelFormsState extends State<NovoImovelForms> {
  final TextEditingController _tfCEPController = TextEditingController();
  final TextEditingController _tfLagController = TextEditingController();
  final TextEditingController _tfBairController = TextEditingController();
  final TextEditingController _tfNumController = TextEditingController();
  final TextEditingController _tfComController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insira o endereço do imóvel'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              controller: _tfCEPController,
              decoration: const InputDecoration(
                labelText: 'CEP',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _tfLagController,
              decoration: const InputDecoration(
                labelText: 'Logradouro',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _tfBairController,
              decoration: const InputDecoration(
                labelText: 'Bairro',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
                controller: _tfNumController,
                decoration: const InputDecoration(
                  labelText: 'Número',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number),
            const SizedBox(height: 20),
            TextField(
              controller: _tfComController,
              decoration: const InputDecoration(
                labelText: 'Complemento',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Ação a ser realizada quando o botão for pressionado
                String value1 = _tfCEPController.text;
                String value2 = _tfLagController.text;
                String value3 = _tfBairController.text;
                String value4 = _tfNumController.text;
                String value5 = _tfComController.text;

                // Exemplo de ação: imprimir os valores dos campos
                print('Campo 1: $value1');
                print('Campo 2: $value2');
                print('Campo 3: $value3');
                print('Campo 4: $value4');
                print('Campo 5: $value5');

                Navigator.pushNamed(
                  context,
                  '/forms2',
                );
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
              child: const Text(
                'CONTINUAR',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
