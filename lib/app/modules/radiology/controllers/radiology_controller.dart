import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Radiology_model.dart';

class RadiologyController extends GetxController {
  //TODO: Implement RadiologyController

  //final count = 0.obs;
  List<Radiology> radiology = <Radiology>[].obs;
  List<Radiology> filteredradiology = <Radiology>[].obs;
  List<Radiology> selectedradiology = <Radiology>[].obs;

  countItemsChecked1() {
    int _checkedBox = 0;
    for (int i = 0; i < radiology.length; i++) {
      if (radiology[i].isChecked!) _checkedBox++;
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

  List<Radiology> getSelectedRadiology() {
    List<Radiology> selected = [];
    for (var obj in radiology) {
      if (obj.isChecked!)
        selected.add(obj);
    }
    return selected;
  }

  buildListItem(Radiology item, BuildContext context) {
    return CheckboxListTile(
        title: Text(item.name!),
        selected: item.isChecked!,
        value: item.isChecked,
        onChanged: (bool? value) {
          int index = radiology.indexOf(item);
          item.isChecked = value!;
          radiology[index].isChecked = value;
          update();
          _showToast(context);
        }
    );
  }

  void getSearchedList1(value) {
    if (value.isEmpty || value == null) {
      filteredradiology = radiology;
      update();
    }
    else {
      List<Radiology> tempList = [];
      for (var item in radiology) {
        if (item.name!
            .toLowerCase()
            .contains(value.toLowerCase())) {
          tempList.add(item);
        }
      }
      filteredradiology = tempList;
      update();
    }
  }

  buildAlert(BuildContext context) {
    selectedradiology = getSelectedRadiology();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: Text('Radiology List'),
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
                itemCount: selectedradiology.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(selectedradiology[index].name!),
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
  //final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    radiology.add(Radiology.withName("Computed Tomography"));
    radiology.add(Radiology.withName("Fluoroscopy"));
    radiology.add(Radiology.withName("Mammography"));
    radiology.add(Radiology.withName("Magnetic Resonance"));
    radiology.add(Radiology.withName("Nuclear Medicine"));
    radiology.add(Radiology.withName("Plain X-Ray"));
    radiology.add(Radiology.withName("Positron Emission Tomography"));

    filteredradiology.clear();
    filteredradiology = radiology;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}
