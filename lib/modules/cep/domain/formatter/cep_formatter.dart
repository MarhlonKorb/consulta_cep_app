String? formataCepOutput(String? cep){
  return cep?.replaceAll('.', '').replaceAll('-', '');
} 