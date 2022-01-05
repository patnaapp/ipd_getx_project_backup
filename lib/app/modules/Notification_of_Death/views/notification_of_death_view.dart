import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/notification_of_death_controller.dart';

class NotificationOfDeathView extends GetView<NotificationOfDeathController> {
  @override
  Widget build(BuildContext context) {
    Get.put(NotificationOfDeathController());
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
        child: Container(
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
                      // Get.back();
                      // Get.to(TreatmentDashboardView());
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
                padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0, 10.0),
                child: Text(
                  "Notification of Death",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text("Age of Death"),
                                    Spacer(),
                                    Text(
                                      '56years | 2months | 5days',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    Text("Date of Death"),
                                    Spacer(),
                                    Text(
                                      '20/July/2021',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 10),
                                child: Row(
                                  children: [
                                    Text("Time of Death"),
                                    Spacer(),
                                    Text(
                                      '10:10 AM',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              //Immediate Cause
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Immediate Cause',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '(State the disease, injury or complication which caused death, not the mode of dieing such as heart failure, asthenia etc)',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Due to (or a consequence of)',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Interval between onset and death approx',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                              //Antecedent Cause
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin:
                                const EdgeInsets.only(left: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Antecedent Cause',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '(Morbid conditions, if any giving rise to above cause, stating underlying conditions last.)',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Due to (or a consequence of)',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Interval between onset and death approx',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                              //Other Cause
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin:
                                const EdgeInsets.only(left: 10, top: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Other Cause',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(left: 10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '(Other signification condition contributing to the death but not related in the disease or conditions causing it.)',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Due to (or a consequence of)',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        child: TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          minLines: 1,
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                            // fillColor: kAppBackgroundColour
                                            hintText:
                                            'Interval between onset and death approx',
                                            hintStyle: TextStyle(fontSize: 14),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  width: 0,
                                                  style: BorderStyle.none),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 5),
                                        alignment: Alignment.centerRight,
                                        child: CircleAvatar(
                                          radius: 16,
                                          backgroundColor: kAppBackgroundColour,
                                          child: IconButton(
                                            onPressed: () {},
                                            iconSize: 20,
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    Text("Manner of Death"),
                                    Spacer(),
                                    DropdownButton<String>(
                                      items: <String>[
                                        'Select A',
                                        'Select B',
                                        'Select C'
                                      ].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      hint: Text('Select'),
                                      onChanged: (_) {},
                                    )
                                  ],
                                ),
                              ),
                              // SizedBox(height: 5,),
                              Container(
                                margin:
                                const EdgeInsets.only(left: 5, right: 5),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                          'If deceased was a female, was pregnancy the death assolate with?'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      '${controller.radioList[0]}'),
                                                ),
                                                Radio<int>(
                                                    value: 0,
                                                    groupValue: controller
                                                        .radioGroupValue1.value,
                                                    onChanged: (val) => controller.changeRadioGroupValue1(val!)),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      '${controller.radioList[1]}'),
                                                ),
                                                Radio<int>(
                                                    value: 1,
                                                    groupValue: controller
                                                        .radioGroupValue1.value,
                                                    onChanged: (val) => controller.changeRadioGroupValue1(val!)),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          // Spacer(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin:
                                const EdgeInsets.only(left: 5, right: 5),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child:
                                      Text('If yes, was there a delivery'),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 10, right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      '${controller.radioList[0]}'),
                                                ),
                                                Radio<int>(
                                                    value: 0,
                                                    groupValue: controller
                                                        .radioGroupValue2.value,
                                                    onChanged: (val) => controller.changeRadioGroupValue2(val!)),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                      '${controller.radioList[1]}'),
                                                ),
                                                Radio<int>(
                                                    value: 1,
                                                    groupValue: controller
                                                        .radioGroupValue2.value,
                                                    onChanged: (val) => controller.changeRadioGroupValue2(val!)),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          // Spacer(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextFormField(
                                      keyboardType: TextInputType.multiline,
                                      minLines: 3,
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        // fillColor: kAppBackgroundColour
                                        hintText: 'How did the injury Occur',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15.0),
                                    ),
                                    border: Border.all(
                                      color: Colors.grey,
                                      width: 0.5,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: TextFormField(
                                      keyboardType: TextInputType.multiline,
                                      minLines: 3,
                                      maxLines: 5,
                                      decoration: InputDecoration(
                                        // fillColor: kAppBackgroundColour
                                        hintText:
                                        'Name of the medical attendent certifying the cause of death',
                                        hintStyle: TextStyle(fontSize: 14),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0,
                                              style: BorderStyle.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          // margin: const EdgeInsets.only(top: 20.0,left: 30,right: 30),
                          margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                          width : double.infinity,
                          child: OutlinedButton(
                            child: Text(
                              "NOTIFY DEATH CAUSE",
                              style: TextStyle(fontSize: 18.0),
                            ),
                            style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                primary: Colors.white,
                                minimumSize: Size(88,50),
                                elevation: 4.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),

                            onPressed: () async{
                              Get.to(
                                    () => NotificationOfDeathView(),
                              );
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
