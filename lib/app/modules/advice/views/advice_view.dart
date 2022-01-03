// import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:ipd_getx_project_backup/app/providers/providers/AppConstants.dart';

// import 'package:ipd_getx_project_backup/app/modules/advice/controllers/speechToText_controller.dart';
import '../controllers/advice_controller.dart';
import 'another_advice_view.dart';

class AdviceView extends GetView<AdviceController> {
  // SpeechtotextController speechToText = Get.put(SpeechtotextController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColour,
      body: SafeArea(
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
            // Advice Input Text Form Field
            Container(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 20),
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: kAppBackgroundColour,
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
                              fillColor: kAppBackgroundColour,
                              hintText: 'Remarks',
                              hintStyle: TextStyle(fontSize: 20.0),
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
                              backgroundColor: kAppBackgroundColour,
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
                    padding: const EdgeInsets.only(top: 15.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide.none,
                          ),
                        ),
                        // minimumSize: ,
                      ),
                      onPressed: () {
                        Get.to(
                              () => AnotherAdviceView(),
                        );
                      },
                      child: Text("SEND"),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
