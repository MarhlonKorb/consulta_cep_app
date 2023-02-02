import 'package:consulta_cep_app/modules/shared/validators/i_input_validator.dart';

import '../../cep/domain/formatter/cep_formatter.dart';

class InputCepValidator extends IInputValidator {
  final String? value;

  InputCepValidator(this.value);

  _isValid() => value!.isNotEmpty && value != null;

  _lenghValid() {
    return formataCepOutput(value)!.length == 8;
  }

  @override
  getMessageError() => 'Campo não pode estar vazio';

  @override
  String? execute() {
    if (!_isValid()) {
      return getMessageError();
    }
    if (!_lenghValid()) {
      return 'Quantidade de dígitos inválida.[8]';
    }
    return null;
  }
}
