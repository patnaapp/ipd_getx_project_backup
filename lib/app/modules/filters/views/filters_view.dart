import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/filters_controller.dart';

class FiltersView extends GetView<FiltersController> {
  @override
  Widget build(BuildContext context) {
    Get.put(FiltersController());
    return Container(
      height : MediaQuery.of(context).size.height*0.80,
      decoration: BoxDecoration(
          color: Color(0xffeaf1f9),
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child:  Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Filters",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),

                    TextButton(
                      onPressed: (){
                        Get.back();
                        //Handle Close Functionality
                      },
                      child: Text(
                        "Close",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[500]
                        ),
                      ),
                    )
                  ]),
            ),

            SizedBox(height: 2,
                child: Container(decoration: BoxDecoration(color: Color(0xffeaf1f9)),)
            ),

            Expanded(
                child:Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Container(
                          color: Color(0xffeaf1f9),
                          child: GetBuilder<FiltersController>(
                            builder: (_) =>
                                ListView.builder(
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemBuilder: (BuildContext context, int index) {
                                    return controller.buildListItem(
                                        controller.filterList[index], context, index);
                                  },
                                  itemCount: controller.filterList.length,
                                ),
                          ),
                        ),
                      ),

                      Flexible(
                          flex: 4,
                          child: GetBuilder<FiltersController>(
                              builder: (_)=>
                                  ListView.builder(
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemBuilder: (BuildContext context, int index) {
                                      return controller.buildSubListItem(
                                          controller.subCatList[index], context, index);
                                    },
                                    itemCount: controller.subCatList.length,
                                  )
                          )
                      ),
                    ],
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.all(8),
              width: double.infinity,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: OutlinedButton(
                  child: Text(
                    " APPLY ",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      primary: Colors.blue,
                      minimumSize: Size(330,50),
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0))),

                  onPressed: () async{
                    //Get.to(
                    //() => ScanQRCodeView(),
                    // );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//now check