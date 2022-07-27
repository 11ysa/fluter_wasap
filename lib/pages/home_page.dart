// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.5,
            controller: _tabController,
            // ignore: prefer_const_constructors
            tabs: const [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                child: Text(
                  "CHAT",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text("STATUS",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Tab(
                child: Text("CALLS",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Center(child: Text("1")),
        ChatPage(),
        Center(child: Text("1")),
        Center(child: Text("1")),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
