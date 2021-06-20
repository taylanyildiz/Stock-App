class Register {
  Register({
    required this.id,
    this.value,
    this.unit,
    this.description,
    this.tolerance,
    this.package,
    this.power,
    this.qty,
  });
  int id;
  double? value;
  double? unit;
  String? description;
  int? tolerance;
  int? package;
  double? power;
  int? qty;
}
