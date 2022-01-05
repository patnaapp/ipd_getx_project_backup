class OtherExamination{
  int? id;
  String? category;
  String? Department;
  String? Remarks;
  bool isChecked = false;


  OtherExamination({this.id, this.isChecked = false});



  OtherExamination.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isChecked = json['isChecked'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['isChecked'] = isChecked;
    return data;
  }
}