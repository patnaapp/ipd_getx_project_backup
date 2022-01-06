import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/speech_to_text_controller.dart';

class SpeechToTextView extends GetView<SpeechToTextController> {

  String outputText = 'Press the button and start speaking';

  @override
  Widget build(BuildContext context) {
    Get.put(SpeechToTextController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Speech To Text View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Text(
            '${outputText}',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ),
      ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
//       floatingActionButton: AvatarGlow(
//         endRadius: 80,
//         animate: controller.speechToText.isListening,
//         glowColor: Theme.of(context).primaryColor,
//         child: FloatingActionButton(
//           child: Icon(controller.speechToText.isListening ? Icons.mic_none : Icons.mic, size: 20,),
//           onPressed: () => controller.toggleListening(
// onResult:(text) => this.outputText = text, onListening: (isListening) => controller.speechToText.isListening = isListening),
//         ),
//       ),
    );
  }

}
