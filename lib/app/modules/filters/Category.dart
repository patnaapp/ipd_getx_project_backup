import 'SubCat.dart';

class Category {
  int? id;
  String? name;
  List<SubCat> subCat = [];

  Category({this.id = 0, this.name, required this.subCat});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['subCat'] != null) {
      subCat = <SubCat>[];
      json['subCat'].forEach((v) {
        subCat.add(new SubCat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.subCat != null) {
      data['subCat'] = this.subCat.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
