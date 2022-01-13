import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/filters/Category.dart';
import 'package:ipd_getx_project_backup/app/modules/filters/SubCat.dart';

class FiltersController extends GetxController {
  //TODO: Implement FiltersController

  List<Category> filterList = [];
  List<SubCat> subCatList = <SubCat>[];
  int catIndex = 0;

  buildListItem(Category item, BuildContext context, int index) {
    return Container(
        padding: EdgeInsets.fromLTRB(12, 20, 8, 20),
        //color:  Color(0xffeaf1f9),
        decoration: BoxDecoration(
            color: catIndex == index ? Colors.white : Color(0xffeaf1f9),
          border: Border(
            //top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
            bottom: BorderSide(width: 1.0, color: Colors.grey),
          ),),
        child: GestureDetector(
          onTap: () {
            catIndex = index;
            subCatList = item.subCat;
            update();
          },
          child: Text(item.name!,
              style: TextStyle(
                fontSize: 15,
              )),
        ),
      );

  }

  buildSubListItem(SubCat item, BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: CheckboxListTile(
          title: Text(
            item.name!,
            style: TextStyle(fontSize: 14, color: Colors.black),
          ),
          selected: item.isChecked,
          value: item.isChecked,
          onChanged: (bool? value) {
            item.isChecked = value!;
            subCatList[index].isChecked = value;
            update();
          }),
    );
    //return Text(item.name!);
  }

  @override
  void onInit() {
    super.onInit();
    List<SubCat> subCat = [];
    subCat.add(SubCat(name: "Rajesh  Arora"));
    subCat.add(SubCat(name: "Arvind Sharma"));
    subCat.add(SubCat(name: "Madhav Mehra"));
    subCat.add(SubCat(name: "Keshav Thakur"));
    filterList.add(Category(name: "Any part of Name", subCat: subCat));
    filterList.add(Category(
        name: "Date",
        subCat: [SubCat(name: "Jan-2022"), SubCat(name: "Feb-2022")]));
    filterList.add(Category(
        name: "Admission No",
        subCat: [SubCat(name: "123"), SubCat(name: "456")]));
    filterList.add(Category(
        name: "Department No",
        subCat: [SubCat(name: "Dept1"), SubCat(name: "Dept2")]));
    subCatList = filterList[0].subCat;
    print(subCatList.length);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
//void increment() => count.value++;
}
