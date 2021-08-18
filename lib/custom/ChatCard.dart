import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/model/chat_model.dart';
import 'package:whatsapp/screens/individual_page.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({Key? key, required this.chatModel}) : super(key: key);
  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => IndividualPage(
                      chatModel: chatModel,
                    )));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 26,
              child: SvgPicture.asset(
                chatModel.isGroup ? 'images/groups.svg' : 'images/person.svg',
                color: Colors.white,
                height: 35,
                width: 35,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  size: 15,
                ),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(
              chatModel.time,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(right: 20, left: 80),
          //   child: Divider(
          //     thickness: 1,
          //   ),
          // ),
        ],
      ),
    );
  }
}
