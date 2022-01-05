import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/other_examination_controller.dart';
import '../otherexamination_model.dart';

class OtherExaminationView extends GetView<OtherExaminationController> {
  @override
  Widget build(BuildContext context) {
    Get.put(OtherExaminationController());
    return Scaffold(
      backgroundColor: Color(0xffeaf1f9),
      body: SafeArea(
        child: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),
          physics: ScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(10),
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffeaf1f9),
                        //background color of dropdown button
                        //border: Border.all(color: Color(0xffeaf1f9), width:3), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            10), //border raiuds of dropdown button
                      ),
                      child: Obx(
                        () => DropdownButton(
                            isExpanded: true,
                            onChanged: (newValue) {
                              controller.selectedcategory.value =
                                  newValue.toString();
                            },
                            value: controller.selectedcategory.value,
                            items: [
                              for (var data in controller.category)
                                DropdownMenuItem(
                                  child: Text(data,
                                      style: TextStyle(color: Colors.blueGrey)),
                                  value: data,
                                )
                            ]
                            //YE code thik se kam kar rha??

                            ),
                      ),
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color(0xffeaf1f9),
                        //background color of dropdown button
                        //border: Border.all(color: Color(0xffeaf1f9), width:3), //border of dropdown button
                        borderRadius: BorderRadius.circular(
                            10), //border raiuds of dropdown button
                      ),
                      child: Obx(
                        () => DropdownButton(
                            isExpanded: true,
                            onChanged: (newValue) {
                              controller.selecteddepartment.value =
                                  newValue.toString();
                            },
                            value: controller.selecteddepartment.value,
                            items: [
                              for (var data in controller.department)
                                DropdownMenuItem(
                                  child: Text(data,
                                      style: TextStyle(color: Colors.blueGrey)),
                                  value: data,
                                )
                            ]
                            //YE code thik se kam kar rha??

                            ),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffeaf1f9),
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
                            fillColor: Color(0xffeaf1f9),
                            hintText: 'Remarks',
                            hintStyle: TextStyle(
                                fontSize: 20.0, color: Colors.blueGrey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
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
                            backgroundColor: Color(0xffeaf1f9),
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
                Container(
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  child: OutlinedButton(
                    child: Text(
                      " SAVE ",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        primary: Colors.white,
                        minimumSize: Size(88, 50),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () async {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
