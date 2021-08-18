class ChatModel {
  ChatModel(
      {required this.name,
      required this.icon,
      required this.isGroup,
      required this.currentMessage,
      required this.time});
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
}
