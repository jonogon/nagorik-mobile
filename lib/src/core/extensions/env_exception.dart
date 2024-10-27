class EnvException implements Exception {
  final String message;

  const EnvException(this.message);

  @override
  String toString() => 'Environment Configuration Error: $message';
}
