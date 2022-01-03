class Medicine {
  int? id;
  String? name;
  bool isChecked = false;
  int dosage = 0;
  int duration = 0;
  String frequency = "Morning/Night";

  Medicine({this.id, this.name, this.isChecked = false});
  Medicine.withName(this.name);


  Medicine.fromJson(Map<String, dynamic> json) {
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
