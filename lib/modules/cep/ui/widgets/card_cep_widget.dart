import 'package:flutter/material.dart';

class CardCepWidget extends StatelessWidget {
  final Map<String, dynamic> result;

  const CardCepWidget({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text('Informações do Cep', style: TextStyle(fontSize: 18)),
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
      result
          .forEach((key, value) => camposConcatenados.writeln('$key: $value'));
    return camposConcatenados.toString();
  }
}
