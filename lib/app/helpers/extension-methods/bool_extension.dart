extension BoolExtensions on bool? {
  bool get isNullOrFalse {
    return this == null || this == false;
  }
}