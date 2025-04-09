extension CapitalStrng on String {
  String toCappsMani() {
    return this[0].toUpperCase() + this.substring(1);
  }

  String toManiInt() {
    dynamic rd = int.tryParse(this) ?? "Result as it is";

    return rd.toString();
  }

 
}
