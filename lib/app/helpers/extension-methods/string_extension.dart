extension StringExtensions on String? {
  bool get isNullorWhiteSpace {
    return this == null || this!.isEmpty || this!.trim().isEmpty;
  }
}