import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inter_departmental_opinion_controller.dart';

class InterDepartmentalOpinionView
    extends GetView<InterDepartmentalOpinionController> {
  @override
  Widget build(BuildContext context) {
    Get.put(InterDepartmentalOpinionController());
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
                      Get.back();
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
                width: double.infinity,
                //color: Colors.white,
                alignment: Alignment.centerLeft,
                child: const Text(
                  " Inter Departmental \n Opinion", textAlign: TextAlign.left,
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
                        GetBuilder<InterDepartmentalOpinionController>(
                          builder:(_) =>
                              ListView.builder(
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return controller.buildListItem(
                                      controller.filteredinterdepartmentalopinion[index], context);
                                },
                                itemCount: controller.filteredinterdepartmentalopinion.length,
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
