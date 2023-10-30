import 'package:flutter/material.dart';
import 'package:wellnest/views/recommend.dart';

class SubChoiceScreen extends StatefulWidget {
  final String emotion;
  final Color emotionColor;
  final List subEmotionsList;
  final List emotionType;
  const SubChoiceScreen(this.emotion, this.emotionColor, this.subEmotionsList, this.emotionType, {Key? key}) : super(key: key);
  @override
  State<SubChoiceScreen> createState() => _SubChoiceScreenState();
}

class _SubChoiceScreenState extends State<SubChoiceScreen> {
  
  @override
  Widget build(BuildContext context) {
    String Emotion1 = widget.subEmotionsList[0];
    String Emotion2 = widget.subEmotionsList[1];
    String Emotion3 = widget.subEmotionsList[2];
    Color emotionColor = widget.emotionColor;
    int Tag1 = widget.emotionType[0];
    int Tag2 = widget.emotionType[1];
    int Tag3 = widget.emotionType[2];
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 226, 221, 1),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: emotionColor,
        elevation: 2.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Tell us more about it', 
        style: TextStyle(color: Color.fromARGB(255, 60, 60, 60),
        fontWeight: FontWeight.bold),
        ),
      ),
      
      body: SingleChildScrollView(
        child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  SizedBox(
                    width: 300.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecommendScreen(Tag1, emotionColor)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: emotionColor,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              Text(Emotion1,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 60, 60, 60),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecommendScreen(Tag2, emotionColor)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: emotionColor,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              Text(Emotion2,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 60, 60, 60),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                  SizedBox(
                    width: 300.0,
                    height: 100.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> RecommendScreen(Tag3, emotionColor)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: emotionColor,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
                            children: [
                              Text(Emotion3,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 60, 60, 60),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          )
        ])),
      )
    );
  }
}
