// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp/data/data_dummy.dart';

import '../widget/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors

    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemChatWidget(chatModel: chats[index]);
        });
  }
}
