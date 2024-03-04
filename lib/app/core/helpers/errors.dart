class TeamMembersBadResponseException implements Exception {
  final String message;

  TeamMembersBadResponseException({
    required this.message,
  });

  @override
  String toString() {
    return 'TeamMembersBadResponseException{message: $message}';
  }
}
