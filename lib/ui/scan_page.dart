import 'package:flutter/material.dart';
import 'package:birds_sound_classification_app_final/constants.dart';
import 'package:tflite_audio/tflite_audio.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String _sound = "Press the button to start";
  bool _recording = false;
  late Stream<Map<dynamic, dynamic>> _result;

  @override
  void initState() {
    super.initState();
    TfliteAudio.loadModel(
      model: 'assets/birds_sound_model.tflite',
      label: 'assets/labels.txt',
      numThreads: 1,
      isAsset: true,
      inputType: 'rawAudio', // Add this line
    );
  }

  void _recorder() {
    if (!_recording) {
      setState(() => _recording = true);
      // Simulating audio recognition delay
      Future.delayed(Duration(seconds: 10), () {
        setState(() {
          _recording = false;
          _sound = 'Northern Mockingbird';
        });
      });
    }
  }

  void _stop() {
    TfliteAudio.stopAudioRecognition();
    setState(() => _recording = false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Constants.primaryColor,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    debugPrint('favorite');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Constants.primaryColor.withOpacity(.15),
                    ),
                    child: IconButton(
                      onPressed: () async {},
                      icon: Icon(
                        Icons.share,
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 100,
            right: 20,
            left: 20,
            child: Container(
              width: size.width * .8,
              height: size.height * .8,
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/code-scan.png',
                      height: 100,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Tap to Scan',
                      style: TextStyle(
                        color: Constants.primaryColor.withOpacity(.80),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                    MaterialButton(
                      onPressed: _recorder,
                      color: _recording
                          ? Colors.grey
                          : Constants.primaryColor.withOpacity(.15),
                      textColor: Constants.primaryColor,
                      child: Icon(
                        Icons.mic,
                        size: 40,
                      ),
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                    ),
                    Text(
                      '$_sound',
                      style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
