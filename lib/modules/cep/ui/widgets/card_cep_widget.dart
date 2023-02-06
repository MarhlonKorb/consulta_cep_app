import 'package:flutter/material.dart';

class CardCepWidget extends StatelessWidget {
  final Map<String, dynamic> resultadoBusca;

  const CardCepWidget({
    super.key,
    required this.resultadoBusca,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child:
                    Text('Informações do Cep', style: TextStyle(fontSize: 18)),
              ),
              subtitle: Text(
                informacoesCepConcatenadas()!,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? informacoesCepConcatenadas() {
    final camposConcatenados = StringBuffer();
    resultadoBusca.forEach((key, value) =>
        value != null ? camposConcatenados.writeln('$key: $value') : '');
    return camposConcatenados.toString().isNotEmpty
        ? camposConcatenados.toString()
        : 'Cep não eoncontrado';
  }
}
