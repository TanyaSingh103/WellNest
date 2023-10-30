import 'package:flutter/material.dart';
import 'package:wellnest/views/sub_choice.dart';
import 'package:wellnest/widgets/tile.dart';
/*
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wellnest/widgets/error_dialogue.dart';
*/

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>{
  List<BasicEmotions> emotions = [];

  String currentState = "Happy";
  Color currentColor = const Color.fromRGBO(245,245,178,1);
  List currentSubEmotions = ["Optimistic", "Joyful", "Love"];
  List currentTags = [1, 1, 1];
  int emotionCount = 0;

  @override
  void initState() {
    super.initState();
    emotions = allStates();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How Are You Feeling Today?",
        style: TextStyle(color: Color.fromARGB(255, 60, 60, 60),
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(212, 226, 212, 1),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Container(
              height: 60,
              width: 200,
              child: Center(
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(212, 226, 212, 1),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
              ),
            ),
          ),
          
          ListWheelScrollView.useDelegate(
            itemExtent: 100,
            physics: FixedExtentScrollPhysics(),
            useMagnifier: true,
            magnification: 1.5,
            onSelectedItemChanged: (index) {
              setState(() {
                currentState = emotions[index].names!;
                currentColor = emotions[index].color!;
                currentSubEmotions = emotions[index].subEmotions!;
                currentTags = emotions[index].tags!;
              });
            },
            childDelegate: ListWheelChildBuilderDelegate(
              childCount: emotions.length,
              builder: (context, index) {
                return Tile(
                    emotions[index].color!,
                    emotions[index].names!);
              },
            ),
          ),
          /*StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection("Moods").where('UID', isEqualTo: user?.uid).snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData && snapshot.data!.docs.isNotEmpty) {
                    return GridView(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      children: snapshot.data!.docs
                          .map((counter) => data.toList(),
                    );
                  }
                },
              ),*/
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: const Color.fromRGBO(212, 226, 212, 1),
        foregroundColor: const Color.fromARGB(255, 60, 60, 60),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> SubChoiceScreen(currentState, currentColor, currentSubEmotions, currentTags)));
          /* FirebaseFirestore.instance.collection("Moods").add({
            "date":date,
            "emotion": currentstate,
            "emotionCount":currentCount,
            "UID": user?.uid,
          }).then<void> ((value) {
            Navigator.pop(context);
          }).catchError((error) =>  showErrorDialogue(context, error));*/
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }


}

class BasicEmotions {
  String? names;
  Color? color;
  List? subEmotions;
  List? tags;

  BasicEmotions({
    this.names,
    this.color,
    this.subEmotions,
    this.tags,
  });

  void setData(String getName, Color getColor, List getSubEmotions, List getTags) {
    names = getName;
    color = getColor;
    subEmotions = getSubEmotions;
    tags = getTags;
  }

  String getName() {
    return names!;
  }
}

List<BasicEmotions> allStates() {
  List<BasicEmotions> emotions = [];
  BasicEmotions statesModel = new BasicEmotions();

  //1
  statesModel.setData("Happy", Color.fromRGBO(245,245,178,1), ["Optimistic", "Joyful", "Love"], [1, 1, 1]);
  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //2
  statesModel.setData("Trust",  Color.fromRGBO(178,245,178,1), ["Grateful", "Accepted", "Helpful"], [1, 1, 1]);
  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //3
  statesModel.setData("Fear",  Color.fromRGBO(178,245,228,1), ["Callous", "Nervous", "Worried"], [0, 0, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //4
  statesModel.setData("Surprise",  Color.fromRGBO(178,212,245,1), ["Confused", "Amused", "Dissappointed"], [0, 1, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //5
  statesModel.setData("Sad",  Color.fromRGBO(178,178,245,1), ["Lonely", "Grief", "Depressed"], [0, 0, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //6
  statesModel.setData("Disgust",  Color.fromRGBO(228,178,245,1), ["Contempt", "Repelled", "Disapproval"], [0, 0, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //7
  statesModel.setData("Anger",  Color.fromRGBO(245,178,178,1), ["Insulted", "Mad", "Aggressive"], [0, 0, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  //8
  statesModel.setData("Anticipation",  Color.fromRGBO(255,222,180,1), ["Excited", "Interested", "Stressed"], [1, 1, 0]);

  emotions.add(statesModel);
  statesModel = new BasicEmotions();

  return emotions;
}