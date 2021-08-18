import 'package:flutter/material.dart';
import 'package:whatsapp/screens/tabs/ChatPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp Clone'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          PopupMenuButton(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "New Group",
                  ),
                  value: "New Group",
                ),
                PopupMenuItem(
                  child: Text(
                    "New Broadcast",
                  ),
                  value: "New Broadcast",
                ),
                PopupMenuItem(
                  child: Text(
                    "WhatsApp Web",
                  ),
                  value: "WhatsApp Web",
                ),
                PopupMenuItem(
                  child: Text(
                    "Starred Messages",
                  ),
                  value: "Starred Messages",
                ),
                PopupMenuItem(
                  child: Text(
                    "Settings",
                  ),
                  value: "Settings",
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
          tabs: [
            Container(
              width: 50,
              child: Tab(
                icon: Icon(Icons.camera_alt),
              ),
            ),
            Tab(
              child: Text(
                'CHATS',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Tab(
              child: Text(
                'STATUS',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Tab(
              child: Text(
                'CALLS',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text('Camera'),
          ChatPage(),
          Text('Status'),
          Text('Calls'),
        ],
      ),
    );
  }
}
