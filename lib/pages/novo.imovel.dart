import 'package:flutter/material.dart';

class NovoImovel extends StatefulWidget {
  const NovoImovel({super.key});

  @override
  State<NovoImovel> createState() => _NovoImovelState();
}

class _NovoImovelState extends State<NovoImovel> {
  TextEditingController _tf1Controller = TextEditingController();
  TextEditingController _tf2Controller = TextEditingController();
  TextEditingController _tf3Controller = TextEditingController();
  TextEditingController _tf4Controller = TextEditingController();
  TextEditingController _tf5Controller = TextEditingController();

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
            controller: _tf1Controller,
            decoration:
                InputDecoration(labelText: 'CEP', border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _tf2Controller,
            decoration: InputDecoration(
                labelText: 'Logradouro', border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _tf3Controller,
            decoration: InputDecoration(
                labelText: 'Bairro', border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _tf4Controller,
            decoration: InputDecoration(
                labelText: 'Número', border: OutlineInputBorder()),
          ),
          SizedBox(height: 10),
          TextField(
            controller: _tf5Controller,
            decoration: InputDecoration(
                labelText: 'Complemento', border: OutlineInputBorder()),
          ),
          SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              // Ação a ser realizada quando o botão for pressionado
              String value1 = _tf1Controller.text;
              String value2 = _tf2Controller.text;
              String value3 = _tf3Controller.text;
              String value4 = _tf4Controller.text;
              String value5 = _tf5Controller.text;

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
