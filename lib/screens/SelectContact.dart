import 'package:flutter/material.dart';
import 'package:whatsapp/model/ContactCard.dart';
import 'package:whatsapp/model/NewInfoCards.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/screens/CreateNewGroupPage.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel> contacts = [
      ChatModel(
        name: "Yash Sonawane",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        select: false,
        status: 'Flutter Developer',
      ),
      ChatModel(
        name: "Suyog Patil",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Web Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampurkar",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Web Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        select: false,
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
        select: false,
      ),
      ChatModel(
        name: "Sudesh Rampumpkar",
        select: false,
        icon: '',
        isGroup: false,
        currentMessage: '',
        time: '',
        status: 'Get In Developer',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '198 Contacts',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 26,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "Invite a Friend",
                  ),
                  value: "Invite a Friend",
                ),
                PopupMenuItem(
                  child: Text(
                    "Contacts",
                  ),
                  value: "Contacts",
                ),
                PopupMenuItem(
                  child: Text(
                    "Refresh",
                  ),
                  value: "Refresh",
                ),
                PopupMenuItem(
                  child: Text(
                    "Help",
                  ),
                  value: "Help",
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: contacts.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => CreateGroup()));
                },
                child: NewInfoCards(
                  icon: Icons.group,
                  name: 'New Group',
                ),
              );
            } else if (index == 1) {
              return NewInfoCards(
                icon: Icons.person_add,
                name: 'New Chat',
              );
            } else {
              return ContactCard(
                contact: contacts[index - 2],
              );
            }
          }),
    );
  }
}
