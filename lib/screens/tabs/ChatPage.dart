import 'package:flutter/material.dart';
import 'package:whatsapp/custom/ChatCard.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Yash Sonawane",
      isGroup: false,
      currentMessage: "Kahi nhi just Tp",
      time: "18:40",
      icon: "person.svg",
      status: "",
    ),
    ChatModel(
      name: "Aditya S",
      isGroup: false,
      currentMessage: "Shant bas jara",
      time: "1:40",
      icon: "person.svg",
      status: "",
    ),
    ChatModel(
      name: "ToMakeItEasyToShar...",
      isGroup: true,
      currentMessage: "Kay krtay re?",
      time: "18:50",
      icon: "groups.svg",
      status: "",
    ),
    ChatModel(
      name: "Moma",
      isGroup: false,
      currentMessage: "Mla bhuk lagli!!",
      time: "19:40",
      icon: "person.svg",
      status: "",
    ),
    ChatModel(
      name: "SE-10",
      isGroup: true,
      currentMessage: "Meet at 9 today!",
      time: "3:40",
      icon: "groups.svg",
      status: "",
    ),
    ChatModel(
      name: "Suyog Patil",
      isGroup: false,
      currentMessage: "Zingur",
      time: "6:40",
      icon: "groups.svg",
      status: "",
    ),
    ChatModel(
      name: "Sudesh Rampurkar",
      isGroup: false,
      currentMessage: "Get in Touch",
      time: "8:40",
      icon: "groups.svg",
      status: "",
    ),
    ChatModel(
      name: "Yash Sonawane",
      isGroup: false,
      currentMessage: "Kahi nhi just Tp",
      time: "18:40",
      icon: "person.svg",
      status: "",
    ),
    ChatModel(
      name: "Aditya S",
      isGroup: false,
      currentMessage: "Shant bas jara",
      time: "1:40",
      icon: "person.svg",
      status: "",
    ),
    ChatModel(
      name: "ToMakeItEasyToShar...",
      isGroup: true,
      currentMessage: "Kay krtay re?",
      time: "18:50",
      icon: "groups.svg",
      status: "",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: chats.length,
        itemBuilder: (BuildContext context, index) => ChatCard(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
