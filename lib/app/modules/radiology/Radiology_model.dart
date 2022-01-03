class Radiology {
  int? id;
  String? name;
  bool? isChecked = false;

  Radiology({this.id, this.name, this.isChecked});
  Radiology.withName(this.name);

  Radiology.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isChecked = json['isChecked'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['isChecked'] = isChecked;
    return data;
  }
}
