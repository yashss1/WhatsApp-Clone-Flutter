import 'package:flutter/material.dart';
import 'package:whatsapp/model/ContactCard.dart';
import 'package:whatsapp/model/NewInfoCards.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/custom/SelectedAvatarCard.dart';

class CreateGroup extends StatefulWidget {
  const CreateGroup({Key? key}) : super(key: key);

  @override
  _CreateGroup createState() => _CreateGroup();
}

class _CreateGroup extends State<CreateGroup> {
  List<ChatModel> contacts = [
    ChatModel(
      name: "Yash Sonawane",
      icon: '',
      isGroup: false,
      currentMessage: '',
      time: '',
      status: 'Flutter Developer',
    ),
    ChatModel(
      name: "Suyog Patil",
      icon: '',
      isGroup: false,
      currentMessage: '',
      time: '',
      status: 'Web Developer',
    ),
    ChatModel(
      name: "Sudesh Rampurkar",
      icon: '',
      isGroup: false,
      currentMessage: '',
      time: '',
      status: 'Web Developer',
    ),
    ChatModel(
      name: "Sudesh Rampumpkar",
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
    ),
    ChatModel(
      name: "Sudesh Rampumpkar",
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
    ),
    ChatModel(
      name: "Sudesh Rampumpkar",
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
    ),
  ];

  List<ChatModel> groupmember = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Group',
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Add Participants',
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
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groupmember.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  // print(index);
                  print(groupmember.length);
                  if (contacts[index - 1].select == false) {
                    setState(() {
                      contacts[index - 1].select = true;
                      groupmember.add(contacts[index - 1]);
                    });
                  } else {
                    setState(() {
                      contacts[index - 1].select = false;
                      groupmember.remove(contacts[index - 1]);
                    });
                  }
                },
                child: ContactCard(
                  contact: contacts[index - 1],
                ),
              );
            },
          ),
          groupmember.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    groupmember.remove(contacts[index]);
                                    contacts[index].select = false;
                                  });
                                },
                                child: AvtaarCard(
                                  contact: contacts[index],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
