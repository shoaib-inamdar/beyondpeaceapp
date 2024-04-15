import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({super.key});
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.person, size: 120)),
          ListTile(
            leading: Icon(Icons.feed_outlined),
            onTap: () {
              _showFeedbackDialog(context);
            },
            title: Text("Feedback"),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            onTap: signout,
            title: Text("Logout"),
          )
        ],
      ),
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: const Text('Feedback Question'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('How would you rate our app?'),
                  RadioListTile<int>(
                    title: const Text('Very Good'),
                    value: 5,
                    groupValue: _selectedRating,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedRating = value;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Good'),
                    value: 4,
                    groupValue: _selectedRating,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedRating = value;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Okey'),
                    value: 3,
                    groupValue: _selectedRating,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedRating = value;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Bad'),
                    value: 2,
                    groupValue: _selectedRating,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedRating = value;
                      });
                    },
                  ),
                  RadioListTile<int>(
                    title: const Text('Very Bad'),
                    value: 1,
                    groupValue: _selectedRating,
                    onChanged: (int? value) {
                      setState(() {
                        _selectedRating = value;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _submitFeedback();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Submit'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _submitFeedback() {
    // Add your logic to submit feedback here
    print('Feedback submitted: $_selectedRating');
  }
}

int? _selectedRating;
