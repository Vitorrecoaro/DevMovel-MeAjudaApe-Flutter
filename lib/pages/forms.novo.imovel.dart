import 'package:flutter/material.dart';

class NovoImovelForms extends StatefulWidget {
  const NovoImovelForms({super.key});

  @override
  State<NovoImovelForms> createState() => _NovoImovelFormsState();
}

class _NovoImovelFormsState extends State<NovoImovelForms> {
  TextEditingController _tfCEPController = TextEditingController();
  TextEditingController _tfLagController = TextEditingController();
  TextEditingController _tfBairController = TextEditingController();
  TextEditingController _tfNumController = TextEditingController();
  TextEditingController _tfComController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insira o endereço do imóvel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          TextField(
            controller: _tfCEPController,
            decoration: InputDecoration(
              labelText: 'CEP',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _tfLagController,
            decoration: InputDecoration(
              labelText: 'Logradouro',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _tfBairController,
            decoration: InputDecoration(
              labelText: 'Bairro',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _tfNumController,
            decoration: InputDecoration(
              labelText: 'Número',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: _tfComController,
            decoration: InputDecoration(
              labelText: 'Complemento',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 40),
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
    );
  }
}
