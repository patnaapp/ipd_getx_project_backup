class InterDepartmentalopinion {
  int? id;
  String? name;
  bool isChecked = false;

  InterDepartmentalopinion({this.id, this.name, this.isChecked = false});
  InterDepartmentalopinion.withName(this.name);

  InterDepartmentalopinion.fromJson(Map<String, dynamic> json) {
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
