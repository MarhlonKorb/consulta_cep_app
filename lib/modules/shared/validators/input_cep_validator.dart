import 'package:consulta_cep_app/modules/shared/validators/i_input_validator.dart';

import '../../cep/domain/formatter/cep_formatter.dart';

class InputCepValidator extends IInputValidator {
  final String? value;

  InputCepValidator(this.value);

  @override
  String? getMessageError() {
    return getMessageError();
  }

  String? _isValid() {
    if (value!.isEmpty || value == null) {
      getMessageError() => 'Campo não pode estar vazio';
      return getMessageError();
    }
    if (!_lenghValid()) {
      getMessageError() => 'Quantidade de dígitos inválida.[8]';
      return getMessageError();
    }
    return null;
  }

  bool _lenghValid() => formataCepOutput(value)!.length == 8;

  @override
  String? execute() {
    return _isValid();
  }
}
