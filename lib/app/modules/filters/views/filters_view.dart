import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/filters_controller.dart';

class FiltersView extends GetView<FiltersController> {
  @override
  bool visibilityTag = false;
  bool visibilityObs = false;

  Widget build(BuildContext context) {
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
            child: Row(children: <Widget>[
              Container(
                child: GestureDetector(
                  onTap: () {
                    print(visibilityObs);

                      visibilityObs ? false : );

                    print(visibilityObs);
                    },
                  child: Text(
                    " Medicine ",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),

                  ),
                ),
              ),

              visibilityObs
                  ? Container(
                      child: Text(
                        " Nagma ",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    )
                  : Container(
                child: Text(
                  " parween",
                  style: TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

void _changed(bool visibility, String field) {

    if (field == "tag"){
      visibilityTag = visibility;
    }
    if (field == "obs") {
      visibilityObs = visibility;
    }
}