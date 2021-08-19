class ChatModel {
  ChatModel(
      {required this.name,
      required this.icon,
      required this.isGroup,
      required this.currentMessage,
      required this.time,
      required this.status,
      this.select = false});
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  String status;
  bool select = false;
}
