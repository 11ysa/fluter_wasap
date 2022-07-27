// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leadingWidth: 24,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined))
            ],
            title: Row(
              children: [
                CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940")),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Ximena lopes mendoza",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "las day today esn  el episodio",
                        style: TextStyle(fontSize: 14, color: Colors.white60),
                      )
                    ],
                  ),
                ),
              ],
            )),
        body: Stack(
          children: [
            //fondo
            Container(
              color: Colors.black12,
            ),
            //listado de mensajes

            ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 11),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14.0),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(14)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 30.0,
                                  offset: Offset(4, 4))
                            ]),
                        child: Text("Hola como estas"))),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 11),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14.0),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(14)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.04),
                                  blurRadius: 30.0,
                                  offset: Offset(4, 4))
                            ]),
                        child: Text("Hola como estas"))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 11),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                                topLeft: Radius.circular(14),
                                topRight: Radius.circular(0)),
                            color: Color(0xff01c855)),
                        child: Text("Gracias estoy muy bien "))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 11, vertical: 11),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(14),
                                bottomRight: Radius.circular(14),
                                topLeft: Radius.circular(14),
                                topRight: Radius.circular(0)),
                            color: Color(0xff01c855)),
                        child: Text("Gracias estoy muy bien ")))
              ],
            ),

            // input
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type Messeger",
                          hintStyle:
                              TextStyle(fontSize: 16.0, color: Colors.black38),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.sentiment_satisfied_alt,
                            size: 30,
                            color: Colors.black45,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("hola");
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Color(0xff01c855), shape: BoxShape.circle),
                        child: Icon(Icons.send),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
