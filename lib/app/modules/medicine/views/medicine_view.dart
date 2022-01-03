import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/medicine_controller.dart';

class MedicineView extends GetView<MedicineController> {

  @override
  Widget build(BuildContext context) {
    Get.put(MedicineController());
    return Scaffold(
        backgroundColor: Color(0xffeaf1f9),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Header Container
              Container(
                padding: const EdgeInsets.fromLTRB(35, 20, 20, 10),
                //color: Colors.white,
                alignment: Alignment.centerLeft,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: InkWell(
                    onTap: (){
                      print("back button is pressed");
                    },
                    child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Image.asset(
                          'Images/arrow.png',
                        )),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                //color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Text(
                  " Medicine ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  //physics: NeverScrollableScrollPhysics(),
                  physics: ScrollPhysics(),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    fillColor: Color(0xffeaf1f9),
                                    prefixIcon: Icon(Icons.search),
                                    hintText: 'Search',
                                    hintStyle: TextStyle(fontSize: 16),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                      ),
                                    ),
                                    filled: true,
                                    contentPadding: EdgeInsets.all(16),
                                    //fillColor: colorSearchBg,
                                  ),
                                  onChanged:(value) {
                                    controller.getSearchedList1(value);
                                  },
                                ),
                              ),
                              SizedBox(width: 20.0, height: 30.0),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                  const EdgeInsets.fromLTRB(5, 14, 5, 13),
                                  //margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffeaf1f9),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(12))),
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.buildAlert(context);
                                    },
                                    child: Image.asset('Images/filter.png',
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GetBuilder<MedicineController>(
                          builder:(_) =>
                              ListView.builder(
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return controller.buildListItem(
                                      controller.filteredmedicine[index], context);
                                },
                                itemCount: controller.filteredmedicine.length,
                              ),

                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
