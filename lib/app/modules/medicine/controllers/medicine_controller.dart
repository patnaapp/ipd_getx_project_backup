import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../medicine_model.dart';

class MedicineController extends GetxController {
  //TODO: Implement MedicineController
  //final count = 0.obs;
  List<Medicine> medicine = <Medicine>[].obs;
  List<Medicine> filteredmedicine = <Medicine>[].obs;
  List<Medicine> selectedmedicine = <Medicine>[].obs;
  //final selected = "some book type".obs;
  //int dosage = 0;
  //var selectedDrowpdown = 'Morning';
  List dropdownText = ['Morning/Night','Morning','Night'];

  //void setSelected(String value){
    //selected.value = value;
  //}

  countItemsChecked1() {
    int _checkedBox = 0;
    for (int i = 0; i < medicine.length; i++) {
      if (medicine[i].isChecked) _checkedBox++;
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

  List<Medicine> getSelectedMedicine() {
    List<Medicine> selected = [];
    for (var obj in medicine) {
      if (obj.isChecked) selected.add(obj);
    }
    return selected;
  }

  /*onCheck(Medicine item, BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: double.minPositive,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: medicine.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("Dosage"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              onPressed: () {
                                dosage++;
                                print(dosage);
                              },
                              icon: Icon(Icons.add)),
                          Text(dosage.toString()),
                          IconButton(
                              onPressed: () {
                                dosage--;
                              },
                              icon: Icon(Icons.delete)),
                        ],
                      ),
                      onTap: () {
                        //Navigator.pop(context, selectedLabtest[index]);
                        Get.back();
                      },
                    );
                  }),
            ),
          );
        });
  }*/

  buildListItem(Medicine item, BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
            title: Text(item.name!),
            selected: item.isChecked,
            value: item.isChecked,
            onChanged: (bool? value) {
              int index = medicine.indexOf(item);
              item.isChecked = value!;
              medicine[index].isChecked = value;
              //print(item.isChecked);
              update();
              _showToast(context);
            }),

        Visibility(
            visible: item.isChecked,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              color: Color(0xffeaf1f9),
              //elevation: 10,
              child: Column(
                children: [
                  //Here You have to add ui for dosage/duration/frequency
                  Padding(
                      padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Dosage",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  //dosage++;
                                  item.dosage++;
                                  update();
                                  print(item.dosage);
                                },
                                icon: Icon(Icons.add_circle_outline_sharp),color: Colors.blue),
                            Text(item.dosage.toString()),
                            IconButton(
                                onPressed: () {
                                  if(item.dosage>0){
                                    item.dosage--;
                                    update();
                                  }else{
                                    //use Fluttertoast
                                  }
                                  //dosage--;
                                },
                                icon: Icon(Icons.delete),color: Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Duration(Day)",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  //dosage++;
                                  item.duration++;
                                  update();
                                  print(item.duration);
                                },
                                icon: Icon(Icons.add_circle_outline_sharp),color: Colors.blue),
                            Text(item.duration.toString()),
                            IconButton(
                                onPressed: () {
                                  if(item.duration>0){
                                    item.duration--;
                                    update();
                                  }else{

                                    //Show toast message for dosage quantity can't be decreased
                                  }
                                  //dosage--;
                                },
                                icon: Icon(Icons.delete),color: Colors.blue),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Frequency",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DropdownButton(
                                onChanged: (newValue) {
                                  item.frequency = newValue as String;
                                  update();
                                },
                                value: item.frequency,
                                items: [
                                  for (var data in dropdownText)
                                    DropdownMenuItem(
                                      child: Text(
                                        data, style: TextStyle(color: Colors.blueGrey)
                                      ),
                                      value: data,
                                    )
                                ])
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  void getSearchedList1(value) {
    if (value.isEmpty || value == null) {
      filteredmedicine = medicine;
      update();
    } else {
      List<Medicine> tempList = [];
      for (var item in medicine) {
        if (item.name!.toLowerCase().contains(value.toLowerCase())) {
          tempList.add(item);
        }
      }
      filteredmedicine = tempList;
      update();
    }
  }

  buildAlert(BuildContext context) {
    selectedmedicine = getSelectedMedicine();
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            title: Text('Medicine List'),
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
                          borderRadius: BorderRadius.circular(50))),
                  onPressed: () {
                    print("confirm ur data");
                  },
                ),
              ),
              //child: Text('Confirm')),
            ],

            content: Container(
              width: double.minPositive,
              child: Card(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: selectedmedicine.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            width:double.infinity,
                            child: Text(selectedmedicine[index].name!,textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          ),
                          SizedBox(
                            height: 10.0,

                          ),

                      Row(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              children: [
                                Text("Dosage",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                                Text(selectedmedicine[index].dosage.toString(),style: TextStyle(color: Colors.blueGrey)),
                              ],
                          ),

                          Column(
                            children: [
                              Text("Frequency",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                              Text(selectedmedicine[index].frequency,style: TextStyle(color: Colors.blueGrey)),
                            ],
                          ),

                          Column(
                            children: [
                              Text("Duration",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                              Text(selectedmedicine[index].duration.toString() + " Days",style: TextStyle(color: Colors.blueGrey) ),
                            ],
                          )
                        ],
                      ),

                          SizedBox(
                            height: 20.0,

                          ),

                      ],
                      ),
                      //subtitle: Text(selectedmedicine[index].frequency),
                      //onTap: () {
                        //Navigator.pop(context, selectedLabtest[index]);
                        //Get.back();
                        //},
                    );
                  },
                ),
              ),
            ),
          );
        });
  }

  //final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    medicine.add(Medicine.withName("Abacavir"));
    medicine.add(Medicine.withName("Abacavir/Lamivudine(Epzicom)"));
    medicine.add(Medicine.withName("Acyclovir"));
    medicine.add(Medicine.withName("Alemtuzumab"));
    medicine.add(Medicine.withName("Alendronate"));
    medicine.add(Medicine.withName("Allopurinol"));
    medicine.add(Medicine.withName("Amifostine"));
    medicine.add(Medicine.withName("Aminocaproic Acid"));
    medicine.add(Medicine.withName("Amitriptyline"));

    filteredmedicine.clear();
    filteredmedicine = medicine;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  //void increment() => count.value++;
}
