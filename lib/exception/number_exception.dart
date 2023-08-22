class NumberException implements Exception {
  String error() => 'Número inválido';

  @override
  String toString() {
    return 'NumberException: ${error()}';
  }
}
