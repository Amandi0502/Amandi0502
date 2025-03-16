import 'package:bot/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF17181D),
        fontFamily: 'Inter',
      ),
      home: const ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFF17181D),
      backgroundColor: const Color(0xFF6F4E37),
       // backgroundColor: const Color(0xFF3B2F2F),
       // backgroundColor: const Color(0xFFB38867),
       // backgroundColor: const Color(0xFFC4A484),



      appBar: AppBar(
        backgroundColor: const Color(0xFF17181D),
        elevation: 0,
        toolbarHeight: 70,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'lib/assets/converted_image-4.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fitbot',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF6469AB),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      'Always active',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildBotMessage("Hello, 👋 I'm your personal assistant. How can I help you?"),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF17181D),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextField(
                    controller: _messageController,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.mic, color: Colors.black),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.image_outlined, color: Colors.black),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFF33363F),
            padding: const EdgeInsets.symmetric(vertical: 12),
            margin: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIcon(
                  'lib/assets/converted_image-3.png',
                  color: const Color(0xFF6469AB),
                ),
                _buildSquareIcon(
                  'lib/assets/converted_image-1.png',
                ),
                _buildIcon(
                  'lib/assets/converted_image-2.png',
                  color: const Color(0xFF6469AB),
                ),
                _buildSquareIcon(
                  'lib/assets/converted_image.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String iconPath, {Color? color}) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      child: Image.asset(
        iconPath,
        color: color,
      ),
    );
  }

  Widget _buildSquareIcon(String iconPath) {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF6469AB),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        iconPath,
        color: Colors.white,
      ),
    );
  }

  Widget _buildBotMessage(String message) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'lib/assets/converted_image-4.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              message,
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: GoogleFonts.hennyPenny(
                  fontSize: 10,
                  fontweigth:fontweight.w500,
                  letterSpacing: -0.5,
                  color: Colors.black,
                    ),
                ),
              ),
            ),
          ),
      ],
    );
  //   Flexible(
  //   child: container(
  //   padding:const EdgeInsets.symmetric(horizontal: 16 vertical: 10)
  //   decoration:
  //   )
  //   )
  // }

}



