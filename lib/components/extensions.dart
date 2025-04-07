extension CapitalStrng on String {
  String toCappsMani() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String toManiInt() {
    dynamic rd = int.tryParse(this) ?? "Result as it is";

    return rd.toString();
  }

  String toManiRmv() {
    return this[0].toString() + this.substring(length - 1);
  }
}
