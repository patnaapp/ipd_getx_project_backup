import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';
import '../inter_departmentalopinion_model.dart';

class InterDepartmentalOpinionController extends GetxController {
  //TODO: Implement InterDepartmentalOpinionController
  List<InterDepartmentalopinion> interdepartmentalopinion =
      <InterDepartmentalopinion>[].obs;
  List<InterDepartmentalopinion> filteredinterdepartmentalopinion =
      <InterDepartmentalopinion>[].obs;
  List<InterDepartmentalopinion> selectedinterdepartmentalopinion =
      <InterDepartmentalopinion>[].obs;
  final selected = "some book type".obs;

  //int dosage = 0;
  //var selectedDrowpdown = 'Morning';
  List dropdownText = ['Morning/Night', 'Morning', 'Night'];

  void getSearchedList1(value) {
    if (value.isEmpty || value == null) {
      filteredinterdepartmentalopinion = interdepartmentalopinion;
      update();
    } else {
      List<InterDepartmentalopinion> tempList = [];
      for (var item in interdepartmentalopinion) {
        if (item.name!.toLowerCase().contains(value.toLowerCase())) {
          tempList.add(item);
        }
      }
      filteredinterdepartmentalopinion = tempList;
      update();
    }
  }

  countItemsChecked1() {
    int _checkedBox = 0;
    for (int i = 0; i < interdepartmentalopinion.length; i++) {
      if (interdepartmentalopinion[i].isChecked) _checkedBox++;
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
        duration: const Duration(seconds: 1),
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'Done',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  buildListItem(InterDepartmentalopinion item, BuildContext context) {
    return new Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      elevation: 10,
      child: new Container(
        padding: new EdgeInsets.all(17.0),
        child: Column(
          children: [
            CheckboxListTile(
                title: Text(item.name!,style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
                selected: item.isChecked,
                value: item.isChecked,
                onChanged: (bool? value) {
                  int index = interdepartmentalopinion.indexOf(item);
                  item.isChecked = value!;
                  interdepartmentalopinion[index].isChecked = value;
                  //print(item.isChecked);
                  update();
                  _showToast(context);
                }),
            Visibility(
                visible: item.isChecked,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Color(0xffeaf1f9),
                  elevation: 5,
                  //elevation: 10,
                  child: Column(
                    children: [
                      //Here You have to add ui for dosage/duration/frequency
                      Container(
                        padding: new EdgeInsets.fromLTRB(10.0,10.0,10.0,5.0),
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.blue),
                          color: kAppBackgroundColour,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 9,
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                minLines: 4,
                                maxLines: null,
                                decoration: InputDecoration(
                                  fillColor: kAppBackgroundColour,
                                  hintText: 'Enter Remarks',
                                  hintStyle: TextStyle(fontSize: 20.0),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none
                                      )),
                                  filled: true,
                                ),
                                validator: (val) {
                                  // Obx(() => )
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50, right: 5),
                              child: CircleAvatar(
                                radius: 19,
                                backgroundColor: Colors.blue,
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: kAppBackgroundColour,
                                  child: IconButton(
                                    iconSize: 22,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mic,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  //final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    interdepartmentalopinion
        .add(InterDepartmentalopinion.withName("Department 1"));
    interdepartmentalopinion
        .add(InterDepartmentalopinion.withName("Department 2"));
    interdepartmentalopinion
        .add(InterDepartmentalopinion.withName("Department 3"));
    interdepartmentalopinion
        .add(InterDepartmentalopinion.withName("Department 4"));
    interdepartmentalopinion
        .add(InterDepartmentalopinion.withName("Department 5"));

    filteredinterdepartmentalopinion.clear();
    filteredinterdepartmentalopinion = interdepartmentalopinion;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
//void increment() => count.value++;
}
