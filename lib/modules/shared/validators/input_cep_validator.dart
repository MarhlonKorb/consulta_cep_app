import 'package:consulta_cep_app/modules/shared/validators/i_input_validator.dart';

class InputCepValidator implements IInputValidator {
  final String? value;

  InputCepValidator(this.value);

  _isValid() => value!.isNotEmpty && value != null;

  _getMessageError() => 'Campo não pode estra vazio';

  @override
  String? execute() {
    if (!_isValid()) {
     return _getMessageError();
    }
    return null;
  }
}
