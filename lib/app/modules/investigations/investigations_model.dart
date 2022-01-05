class Investigations {
  int? id;
  String? testName;
  Tests? tests;
  String? date;

  Investigations({this.id, this.testName, this.tests, this.date});
  Investigations.withName(this.testName, this.tests, this.date);

  Investigations.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    testName = json['test_name'];
    tests = json['tests'] != null ? Tests?.fromJson(json['tests']) : null;
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['test_name'] = testName;
    if (tests != null) {
      data['tests'] = tests?.toJson();
    }
    data['date'] = date;
    return data;
  }
}

class Tests {
  String? sys;
  String? dia;
  String? pulse;
  String? sugarTest;

  Tests({this.sys, this.dia, this.pulse, this.sugarTest});
  Tests.withName(this.sys, this.dia, this.pulse, this.sugarTest);

  Tests.fromJson(Map<String, dynamic> json) {
    sys = json['sys'];
    dia = json['dia'];
    pulse = json['pulse'];
    sugarTest = json['sugar_test'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sys'] = sys;
    data['dia'] = dia;
    data['pulse'] = pulse;
    data['sugar_test'] = sugarTest;
    return data;
  }
}
