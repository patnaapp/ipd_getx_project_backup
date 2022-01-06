class SubCat {
  int id = 0;
  String? name;
  bool isChecked = false;

  SubCat({this.id = 0, this.name});

  SubCat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}