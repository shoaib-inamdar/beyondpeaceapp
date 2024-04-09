// import 'dart:ui';

// import 'dart:js_interop';

// import 'package:beyondpeace/utils/routes.dart';
import 'package:beyondpeace/pages/suggestions.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class Assesmentpage extends StatefulWidget {
  @override
  State<Assesmentpage> createState() => _AssesmentpageState();
}

class _AssesmentpageState extends State<Assesmentpage> {
  List<String> _question = [
    "How would you rate your overall mood over the past week?",
    "how would you rate the quality of your sleep?",
    "How motivated do you feel to engage in activities or hobbies?",
    "Rate your level of stress on a scale of 1 to 4",
    "How satisfied are you with your current relationships and social interactions?",
    "How often do you experience feelings of loneliness or isolation?",
    "Qhow would you rate your ability to cope with stress?",
    "How would you rate your overall energy level throughout the day",
    "Rate your level of self-esteem and confidence.",
    "How would you rate your ability to manage and express your emotions effectively?"
  ];
  int selected = 0;
  int percent = 0;
  final Page_controller = PageController(initialPage: 0);
  Widget customRadio(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: (selected == index) ? Colors.deepPurpleAccent : Colors.black,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: (selected == index)
            ? MaterialStateProperty.all(Colors.lightGreenAccent)
            : MaterialStateProperty.all(Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff739ccee),
        body: PageView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                customProgressBar(width: 350, height: 22, progress: percent),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        _question[index],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      )),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 40),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: customRadio("Option 1", 1)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: customRadio("Option 2", 2)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: customRadio("Option 3", 3)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 40),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: customRadio("Option 4", 4)),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 100),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.greenAccent),
                    ),
                    onPressed: () {
                      setState(() {
                        if (selected == 0) {
                          // Show a snackbar or any other form of feedback to indicate that an option must be selected
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please select an option")),
                          );
                        } else {
                          if (index == 9) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Suggestions()),
                            );
                          } else {
                            if (percent < 10) {
                              percent += 1;
                            }
                            selected = 0;
                            Page_controller.nextPage(
                              duration: Duration(milliseconds: 10),
                              curve: Curves.easeIn,
                            );
                          }
                        }
                      });
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        )),
                  ),
                ),
              ],
            );
          },
          itemCount: 10,
          physics: const NeverScrollableScrollPhysics(),
          controller: Page_controller,
        ));
  }
}

class customProgressBar extends StatelessWidget {
  const customProgressBar(
      {super.key,
      required this.width,
      required this.height,
      required this.progress});
  final double width;
  final double height;
  final int progress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: progress * 35,
            height: height,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '${(progress * 10).toInt()}%',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
