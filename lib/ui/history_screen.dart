import 'package:flutter/material.dart';

class ChatHistoryItem {
  final String title;
  final String summary;
  final DateTime date;

  ChatHistoryItem({
    required this.title,
    required this.summary,
    required this.date,
  });
}

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  // Dummy data for demonstration purposes
  final List<ChatHistoryItem> _historyItems = [
    ChatHistoryItem(
      title: "Flutter vs. Flet",
      summary: "A discussion about mobile development...",
      date: DateTime.now(),
    ),
    ChatHistoryItem(
      title: "On-Device AI Models",
      summary: "Exploring the capabilities of Gemma...",
      date: DateTime.now().subtract(const Duration(days: 1)),
    ),
    ChatHistoryItem(
      title: "Best Pizza Toppings",
      summary: "An important and lengthy debate.",
      date: DateTime.now().subtract(const Duration(days: 2)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: ListView.builder(
        itemCount: _historyItems.length,
        itemBuilder: (context, index) {
          final item = _historyItems[index];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.summary),
            trailing: Text("${item.date.month}/${item.date.day}"),
            onTap: () {
              // TODO: Implement logic to load this chat session
              print("Tapped on: ${item.title}");
            },
          );
        },
      ),
    );
  }
}
