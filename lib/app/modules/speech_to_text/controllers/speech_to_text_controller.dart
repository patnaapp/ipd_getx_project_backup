
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechToTextController extends GetxController {
  //TODO: Implement SpeechToTextController
  final SpeechToText speechToText = SpeechToText();
  bool _hasSpeech = false;

  @override
  void onInit() {
    super.onInit();
    // initSpeechState();
  }

  Future<void> initSpeechState() async {
    print('Initialize');
    var hasSpeech = await speechToText.initialize(
      onError: (error) => print('Error : Received error status: $error, listening: ${speechToText.isListening}'),
      onStatus: statusListener,
      debugLogging: true,
    );
    _hasSpeech = hasSpeech;
    // if (hasSpeech) {
      // Get the list of languages installed on the supporting platform so they
      // can be displayed in the UI for selection by the user.
      // _localeNames = await speech.locales();

      // var systemLocale = await speech.systemLocale();
      // _currentLocaleId = systemLocale?.localeId ?? '';
    // }

    // if (!mounted) return;
    // _hasSpeech = hasSpeech;

  }

  // void errorListener(SpeechRecognitionError error) {
  //   var eventTime = DateTime.now().toIso8601String();
  //   print('$eventTime Received error status: $error, listening: ${speechToText.isListening}');
  //   // _logEvent(
  //   //     'Received error status: $error, listening: ${speechToText.isListening}');
  //   // setState(() {
  //   //   lastError = '${error.errorMsg} - ${error.permanent}';
  //   // });
  // }
  // static Future<bool> toggleListening({
  //   required Function(String text) onResult,
  //   required ValueChanged<bool> onListening,
  // }) async {
  //   if (speechToText.isListening) {
  //     speechToText.stop();
  //     return true;
  //   }
  //
  //   final isAvailable = await speechToText.initialize(
  //     onStatus: (status) => onListening(speechToText.isListening),
  //     onError: (error) => print('Error : $error'),
  //   );
  //
  //   if (isAvailable) {
  //     speechToText.listen(
  //       onResult: (value) => onResult(value.recognizedWords),
  //       listenFor: Duration(seconds: 30),
  //       // pauseFor: Duration(seconds: 5),
  //     );
  //   }
  //
  //   return isAvailable;
  // }

  void statusListener(String status) {
    var eventTime = DateTime.now().toIso8601String();
    print('$eventTime Received listener status: $status, listening: ${speechToText.isListening}');
    // _logEvent(
    //     'Received listener status: $status, listening: ${speechToText.isListening}');
    // setState(() {
    //   lastStatus = '$status';
    // });
  }

  @override
  void onReady() {
    super.onReady();
  }

  // void _logEvent(String eventDescription) {
  //   if (_logEvents) {
  //     var eventTime = DateTime.now().toIso8601String();
  //     print('$eventTime $eventDescription');
  //   }
  // }

  @override
  void onClose() {}

}
