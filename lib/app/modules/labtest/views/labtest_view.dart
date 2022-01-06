import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

import '../controllers/labtest_controller.dart';
import '../labtest_model.dart';

class LabtestView extends GetView<LabtestController >  {
  @override
  Widget build(BuildContext context) {
    Get.put(LabtestController());
    return Scaffold(
        backgroundColor: kAppBackgroundColour,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              //Header Container
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
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
                //color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Text(
                  " Lab Test ",
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
                       GetBuilder<LabtestController>(
                         builder:(_) =>
                        ListView.builder(
                          physics: ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return controller.buildListItem(
                                controller.filteredLabTest[index], context);
                          },
                          itemCount: controller.filteredLabTest.length,
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
