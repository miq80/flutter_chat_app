class Message {
  String text;
  DateTime timestamp;

  Message({required this.text, required this.timestamp});
}

class ChatModel {
  List<Message> messages = [];

  void addMessage(String text) {
    messages.add(
      Message(
        text: text,
        timestamp: DateTime.now(),
      ),
    );
  }

  List<Message> getMessage() {
    return messages;
  }
}
