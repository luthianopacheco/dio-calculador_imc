class NomeException implements Exception {
  String error() => 'Nome inválido!';

  @override
  String toString() {
    return "NomeException: ${error()}";
  }
}
