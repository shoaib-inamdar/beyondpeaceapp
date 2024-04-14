import 'package:beyondpeace/components/specialcomponent.dart';
import 'package:flutter/material.dart';

class Specialevent extends StatelessWidget {
  const Specialevent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Specialcomponent(
              name: "Stress Reduction",
              date: "14 March",
              time: "10am to 11am",
              image: "image",
              address: 'address',
            ),
            Specialcomponent(
              name: "Laughter Club",
              date: "22 March",
              time: "6am to 7am",
              image: "image",
              address: 'address',
            ),
            Specialcomponent(
              name: "Guided Meditation",
              date: "29 March",
              time: "7am to 8am",
              image: "image",
              address: 'address',
            ),
            Specialcomponent(
              name: "Mindful Breathing",
              date: "5 April",
              time: "6am to 8am",
              image: "image",
              address: 'address',
            ),
            Specialcomponent(
              name: "Yoga Classes",
              date: "13 April",
              time: "7am to 8am",
              image: "image",
              address: 'address',
            ),
          ],
        ),
      ),
    );
  }
}
