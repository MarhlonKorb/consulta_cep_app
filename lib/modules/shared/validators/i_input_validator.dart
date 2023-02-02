abstract class IInputValidator {
  bool _isValid();
  String? getMessageError();

  String? execute(){
    if (!_isValid()) {
      return getMessageError();
    }
    return null;
  }

}