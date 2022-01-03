import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../labtest_model.dart';




class LabtestController extends GetxController {
  //TODO: Implement LabtestController

  //final count = 0.obs;
  List<Labtest> labTest = <Labtest>[].obs;
  List<Labtest> filteredLabTest = <Labtest>[].obs;
  List<Labtest> selectedLabtest = <Labtest>[].obs;

  countItemsChecked1() {
    int _checkedBox = 0;
    for (int i = 0; i < labTest.length; i++) {
      if (labTest[i].isChecked!) _checkedBox++;
    }

    return _checkedBox;
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    var count = countItemsChecked1();
    //print(count);
    scaffold.showSnackBar(
      SnackBar(
        backgroundColor: Color(0xff00769D),
        content: Text('$count Test Selected'),
        shape: StadiumBorder(),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'Done',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  List<Labtest> getSelectedLabtest() {
    List<Labtest> selected = [];
    for (var obj in labTest) {
      if (obj.isChecked!)
        selected.add(obj);
    }
    return selected;
  }


  buildListItem(Labtest item, BuildContext context) {
    return CheckboxListTile(
        title: Text(item.name!),
        selected: item.isChecked!,
        value: item.isChecked,
        onChanged: (bool? value) {
          int index = labTest.indexOf(item);
          item.isChecked = value!;
          labTest[index].isChecked = value;
          update();
          _showToast(context);
        }
    );
  }


  void getSearchedList1(value) {
    if (value.isEmpty || value == null) {
      filteredLabTest = labTest;
      update();
    }
    else {
      List<Labtest> tempList = [];
      for (var item in labTest) {
        if (item.name!
            .toLowerCase()
            .contains(value.toLowerCase())) {
          tempList.add(item);
        }
      }
      filteredLabTest = tempList;
      update();
    }
  }

    buildAlert(BuildContext context) {
      selectedLabtest = getSelectedLabtest();
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              title: Text('Labtest List'),
              actions: [
                Center(
                  child: TextButton(
                    child: const Text(
                      " CONFIRM ",
                      style: TextStyle(fontSize: 15.0),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Color(0xff00769D),
                        primary: Colors.white,
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      print("confirm ur data");
                    },
                  ),
                ),
                //child: Text('Confirm')),
              ],
              content: Container(
                width: double.minPositive,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: selectedLabtest.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(selectedLabtest[index].name!),
                      onTap: () {
                        //Navigator.pop(context, selectedLabtest[index]);
                        Get.back();
                      },
                    );
                  },
                ),
              ),
            );
          });
    }

    @override
    void onInit() {
      super.onInit();
      labTest.add(Labtest.withName("Blood Count"));
      labTest.add(Labtest.withName("Blood Typing"));
      labTest.add(Labtest.withName("Bone Marrow Aspiration"));
      labTest.add(Labtest.withName("Cephalin-Cholesterol Flocculation"));
      labTest.add(Labtest.withName("Enzyme Analysis"));
      labTest.add(Labtest.withName("Epinephrine Tolerance Test"));
      labTest.add(Labtest.withName("Glucose Tolerance Test"));
      labTest.add(Labtest.withName("Hematocrit"));
      labTest.add(Labtest.withName("Immunologic Blood Test"));
      labTest.add(Labtest.withName("Serological Test"));
      filteredLabTest.clear();
      filteredLabTest = labTest;
    }


    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {}
    //void increment() => count.value++;
  }

