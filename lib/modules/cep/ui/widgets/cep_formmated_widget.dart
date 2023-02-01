import 'package:flutter/material.dart';

import '../../domain/models/cep.dart';

class CepFormattedWidget extends StatelessWidget {
  const CepFormattedWidget({
    super.key,
    required Cep? result,
  }) : _result = result;

  final Cep? _result;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Expanded(
        flex: 25,
        child: Row(
          children: [
            Text( '${_result!.logradouro}, '),
            Text('${_result!.bairro}, '),
            Text('${_result!.localidade}, '),
            Text('${_result!.uf}, '),
            Text('${_result!.ddd} '),
          ],
        ),
      ),
    );
  }
}