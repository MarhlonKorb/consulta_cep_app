abstract class IInputValidator {
  bool _isValid();
  String? _getMessageError();

  String? execute(){
    if (!_isValid()) {
      return _getMessageError();
    }
    return null;
  }

}