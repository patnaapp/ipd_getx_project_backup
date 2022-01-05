class Vitals {
  int? id;
  String? name;
  String? value;

  Vitals({this.id, this.name, this.value});
  Vitals.withName(this.name, this.value);

  Vitals.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}
