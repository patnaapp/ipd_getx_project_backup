import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/modules/advice/controllers/advice_controller.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

class AnotherAdviceView extends GetView {
  final _anotherAdviceFormKey = GlobalKey<FormState>();
  AdviceController _adviceController = AdviceController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Header Container for Back Button
              Container(
                padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                alignment: Alignment.centerLeft,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Colors.white,
                  // elevation: 2.0,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              // Page Title
              Container(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0, 20.0, 20.0),
                child: Text(
                  "Advice",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
              ),
              // Another Advice Input form
              Container(
                padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Form(
                  key: _anotherAdviceFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Discharge Type Dropdown
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: kAppBackgroundColour),
                          // padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                fillColor: kAppBackgroundColour,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide.none,
                                )),
                            value: _adviceController.selectedDischargeType,
                            items: _adviceController.dischargeTypeList
                                .map((selectedType) {
                              return DropdownMenuItem(
                                child: new Text(selectedType),
                                value: selectedType,
                              );
                            }).toList(),
                            hint: Text('Discharge Type'),
                            onChanged: (value) {
                              _adviceController.selectedDischargeType =
                                  value.toString();
                            },
                          ),
                          // child:
                        ),
                      ),
                      // Diagnosis
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          // padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: kAppBackgroundColour),
                          // padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                                fillColor: kAppBackgroundColour,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide.none,
                                )),
                            // value: _adviceController.selectedDischargeType,
                            items: [],
                            hint: Text('Diagnosis'),
                            onChanged: (value) {
                              // _adviceController.selectedDischargeType = value.toString();
                            },
                          ),
                          // child:
                        ),
                      ),
                      //Medication InputFormField
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          // padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              fillColor: kAppBackgroundColour,
                              hintText: 'Medication',
                              hintStyle: TextStyle(fontSize: 15.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: true,
                            ),
                            validator: (val) {
                              // Obx(() => )
                            },
                          ),
                        ),
                      ),
                      //Next Visit Schedule InputFormField
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        child: Container(
                          // padding: const EdgeInsets.fromLTRB(2, 5, 2, 5),
                          child: GestureDetector(
                            onTap: () {
                              // _adviceController.selectDate(context);
                              FocusScope.of(context).requestFocus(new FocusNode());
                            },
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _adviceController.datepickerTextField,
                              readOnly: true,
                              decoration: InputDecoration(
                                fillColor: kAppBackgroundColour,
                                hintText: 'Next Visit Schedule',
                                hintStyle: TextStyle(fontSize: 15.0),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _adviceController.selectDate(context);
                                  },
                                  iconSize: 20,
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.blue,
                                  ),
                                ),
                                filled: true,
                              ),
                              validator: (val) {
                                // if(val.isEmpty)
                                //   return "Please select a date";
                                // return null;
                              },
                            ),
                          ),
                        ),
                      ),
                      // Condition on Discharge
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kAppBackgroundColour,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 3,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    fillColor: kAppBackgroundColour,
                                    hintText: 'Condition On Discharge',
                                    hintStyle: TextStyle(fontSize: 15.0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        )),
                                    filled: true,
                                  ),
                                  validator: (val) {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50, right: 5),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white60,
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
                            ],
                          ),
                        ),
                      ),
                      // Advice on Discharge
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kAppBackgroundColour,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 9,
                                child: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  minLines: 3,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    fillColor: kAppBackgroundColour,
                                    hintText: 'Advice on Discharge',
                                    hintStyle: TextStyle(fontSize: 15.0),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15.0),
                                        borderSide: BorderSide(
                                          width: 0,
                                          style: BorderStyle.none,
                                        )),
                                    filled: true,
                                  ),
                                  validator: (val) {},
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 50, right: 5),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundColor: Colors.white60,
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
                            ],
                          ),
                        ),
                      ),
                      //Submit Button
                      Container(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide.none,
                              ),
                            ),
                            // minimumSize: ,
                          ),
                          onPressed: () {},
                          child: Text("SUBMIT"),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
