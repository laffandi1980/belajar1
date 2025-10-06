import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Chat WhatsApp',
      home: const ChatScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> messages = [
      {
        'sender': 'Teman',
        'text': 'Hai! Apa kabar?',
        'time': '09:45',
        'isMe': false,
      },
      {
        'sender': 'Saya',
        'text': 'Halo! Baik, kamu gimana?',
        'time': '09:46',
        'isMe': true,
      },
      {
        'sender': 'Teman',
        'text': 'Aku juga baik 😁',
        'time': '09:47',
        'isMe': false,
      },
      {
        'sender': 'Saya',
        'text': 'Lagi sibuk nggak? Mau ngobrol bentar.',
        'time': '09:49',
        'isMe': true,
      },
      {
        'sender': 'Teman',
        'text': 'Boleh, santai aja. Ada apa?',
        'time': '09:50',
        'isMe': false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=3',
              ), // avatar teman
              radius: 16,
            ),
            SizedBox(width: 10),
            Text('Teman Chat'),
          ],
        ),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: const Color(0xFFEFEFEF),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final msg = messages[index];
                  final bool isMe = msg['isMe'];

                  return Align(
                    alignment: isMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      decoration: BoxDecoration(
                        color: isMe ? Colors.teal[300] : Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(12),
                          topRight: const Radius.circular(12),
                          bottomLeft: isMe
                              ? const Radius.circular(12)
                              : const Radius.circular(0),
                          bottomRight: isMe
                              ? const Radius.circular(0)
                              : const Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            msg['text'],
                            style: TextStyle(
                              color: isMe ? Colors.white : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            msg['time'],
                            style: TextStyle(
                              color: isMe
                                  ? Colors.white70
                                  : Colors.grey.shade600,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Input bar seperti WhatsApp
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 6.0,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(Icons.emoji_emotions_outlined, color: Colors.grey),
                  const SizedBox(width: 6),
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ketik pesan...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send, color: Colors.teal),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
