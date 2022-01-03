class Labtest {
  int? id;
  String? name;
  bool? isChecked = false;

  Labtest({this.id, this.name, this.isChecked});
  Labtest.withName(this.name);

  Labtest.fromJson(Map<String, dynamic> json) {
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
