class ChatMessage {
  final String text;
  final bool
  isUser; // True if the message is from the user, false if from the AI

  ChatMessage({required this.text, required this.isUser});
}
