// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp/data/data_dummy.dart';
import 'package:flutter_codigo_whatsapp/model/chat_model.dart';

import '../pages/chatDetailPage.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel chatModel;
  ItemChatWidget({required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7.0),
      child: ListTile(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ChatDetailPage()));
        },
        leading: CircleAvatar(
            radius: 25,
            // ignore: prefer_const_constructors
            backgroundImage: NetworkImage(chatModel.avatarUrl)),
        title: Text(
          chatModel.username,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        subtitle: Text(
            chatModel.isTyping == true ? "Typing..." : chatModel.message,
            maxLines: 1,
            style: TextStyle(fontSize: 14, overflow: TextOverflow.ellipsis)),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                  color: chatModel.isTyping == true
                      ? Color(0xff01c855)
                      : Colors.black45),
            ),
            chatModel.countMessage > 0
                ? (Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Color(0xff01c851), shape: BoxShape.circle),
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
                : SizedBox()
          ],
        ),
      ),
    );
  }
}
