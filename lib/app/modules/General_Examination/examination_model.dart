class Examination {
  int? id;
  String? name;
  int heartrate = 0;
  int height = 0;
  int weight = 0;
  int bodytemp = 0;
  int bp = 0;
  int respiratory = 0;
  int pulse = 0;
  int bmi = 0;
  int sliderValue = 0;//Ye value use karna hai


  Examination({this.id, this.name});
  Examination.withName(this.name);

  Examination.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
