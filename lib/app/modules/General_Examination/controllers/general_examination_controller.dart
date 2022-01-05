import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../examination_model.dart';

class GeneralExaminationController extends GetxController {
  //TODO: Implement GeneralExaminationController

  List<Examination> generalExamination = <Examination>[].obs;

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  buildListItem(Examination item, BuildContext context, int index) {
    TextEditingController editController = TextEditingController();
    editController.text = item.sliderValue.toString();
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          color: Colors.white,
          elevation: 4,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Text(item.name!,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 17.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),

              Container(
                //height: 55,
                  margin: const EdgeInsets.only(left: 0, right: 10, top: 10),
                  child: TextFormField(
                    controller: editController,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
                    decoration: InputDecoration(
                        fillColor: Color(0xffeaf1f9),
                        filled: true,
                        hintText: "Entery",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        )),
                    onChanged: (value){
                      if(value.length>0){
                        var temp = int.parse(value);
                        if(temp >= 0 && temp <=105){
                          item.sliderValue = temp;
                          generalExamination[index] = item;
                        }else{
                          editController.text = item.sliderValue.toString();
                        }
                      }
                    },
                    validator: (value) {
                      if (value == null || value.length != 10) {
                        return 'required';
                      }
                      return null;
                    },
                  )),

              Obx(() =>
                  Container(
                      child: Slider(
                        value: generalExamination[index].sliderValue.toDouble(),
                        min: 0.0,
                        max: 105.0,
                        //divisions: 20,
                        activeColor: Colors.blue,
                        inactiveColor: Color(0xffeaf1f9),
                        label: 'Set required value',
                        onChanged: (double newValue) {
                          item.sliderValue = newValue.round();
                          generalExamination[index] = item;
                          editController.text = newValue.round().toString();
                        },
                      )
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  //final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    generalExamination.add(Examination.withName("Body Temp(Deg. F)"));
    generalExamination.add(Examination.withName("Bp(Systolic/Diastolic)"));
    generalExamination.add(Examination.withName("Respiratory Rate"));
    generalExamination.add(Examination.withName("Pulse"));
    generalExamination.add(Examination.withName("Heart Rate"));
    generalExamination.add(Examination.withName("Height(Centimeters)"));
    generalExamination.add(Examination.withName("Weight(Kilograms"));
    generalExamination.add(Examination.withName("BMI(Kg/m2)"));
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

//void increment() => count.value++;
}
