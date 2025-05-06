import 'dart:convert';

import 'package:beyondpeace/api.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:http/http.dart' as http;

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  final apikey = Gemini.init(apiKey: Gemini_api_key);
  final String systemInstruction = """
You are a mental health assistant called MindHelper. You must STRICTLY follow these rules:
1. Only respond to mental health-related questions (depression, anxiety, stress, headache etc.)
2. For unrelated questions, respond: "I specialize in mental health. Please ask about stress, anxiety, mood, or related topics."
3. Be empathetic and supportive
4. Keep responses under 100 words
5. Use simple language
6. Suggest professional help if needed

Current query: """;

  final url =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$Gemini_api_key";
  final header = {"Content-Type": "application/json"};
  ChatUser myself = ChatUser(id: "1", firstName: "User");
  ChatUser bot = ChatUser(id: "2", firstName: "Gemini");

  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];

  getdata(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});
    var data = {
      "contents": [
        {
          "parts": [
            {"text": m.text+systemInstruction}
          ]
        }
      ]
    };

    await http
        .post(Uri.parse(url), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);

        ChatMessage m1 = ChatMessage(
            text: result['candidates'][0]['content']['parts'][0]['text'],
            user: bot,
            createdAt: DateTime.now());
        allMessages.insert(0, m1);
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DashChat(
        typingUsers: typing,
          currentUser: myself,
          onSend: (ChatMessage m) {
            getdata(m);
          },
          messages: allMessages),
    );
  }
}
