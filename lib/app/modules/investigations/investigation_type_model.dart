class InvestigationType {
  int? id;
  String name = "";
  bool? value;

  InvestigationType({this.id, required this.name, this.value});
  InvestigationType.withName(this.name, this.value);

  InvestigationType.fromJson(Map<String, dynamic> json) {
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
