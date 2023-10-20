import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SistemaEscola(),
  ));
}

class SistemaEscola extends StatefulWidget {
  @override
  _SistemaEscolaState createState() => _SistemaEscolaState();
}

class _SistemaEscolaState extends State<SistemaEscola> {
  int idadeUm = 19;
  int idadeDois = 19;
  String nomeUm = 'Fulanin';
  String nomeDois = 'Sicrano';

  TextEditingController nota1rController = TextEditingController();
  TextEditingController nota2rController = TextEditingController();
  TextEditingController nota3rController = TextEditingController();
  TextEditingController nota4rController = TextEditingController();
  TextEditingController nota1lController = TextEditingController();
  TextEditingController nota2lController = TextEditingController();
  TextEditingController nota3lController = TextEditingController();
  TextEditingController nota4lController = TextEditingController();

  double calcularMedia(List<double> notas) {
    if (notas.isEmpty) return 0;
    double sum = 0;
    for (var nota in notas) {
      sum += nota;
    }
    return sum / notas.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema da Escola'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nota1rController,
              decoration: InputDecoration(labelText: 'Nota 1 de $nomeUm'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota2rController,
              decoration: InputDecoration(labelText: 'Nota 2 de $nomeUm'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota3rController,
              decoration: InputDecoration(labelText: 'Nota 3 de $nomeUm'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota4rController,
              decoration: InputDecoration(labelText: 'Nota 4 de $nomeUm'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota1lController,
              decoration: InputDecoration(labelText: 'Nota 1 de $nomeDois'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota2lController,
              decoration: InputDecoration(labelText: 'Nota 2 de $nomeDois'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota3lController,
              decoration: InputDecoration(labelText: 'Nota 3 de $nomeDois'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: nota4lController,
              decoration: InputDecoration(labelText: 'Nota 4 de $nomeDois'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                List<double> notasUm = [
                  if (nota1rController.text.isNotEmpty)
                    double.parse(nota1rController.text),
                  if (nota2rController.text.isNotEmpty)
                    double.parse(nota2rController.text),
                  if (nota3rController.text.isNotEmpty)
                    double.parse(nota3rController.text),
                  if (nota4rController.text.isNotEmpty)
                    double.parse(nota4rController.text),
                ];
                List<double> notasDois = [
                  if (nota1lController.text.isNotEmpty)
                    double.parse(nota1lController.text),
                  if (nota2lController.text.isNotEmpty)
                    double.parse(nota2lController.text),
                  if (nota3lController.text.isNotEmpty)
                    double.parse(nota3lController.text),
                  if (nota4lController.text.isNotEmpty)
                    double.parse(nota4lController.text),
                ];

                double mediaUm = calcularMedia(notasUm);
                double mediaDois = calcularMedia(notasDois);

                print('Média de $nomeUm: $mediaUm');
                print('Média de $nomeDois: $mediaDois');
              },
              child: Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}



/*

void main() {
  print('Nome do aluno: ');
  String input = stdin.readLineSync();
  print('Você digitou: $input');
}
*/

