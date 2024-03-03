
import 'package:book_memo/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TopPage extends StatefulWidget {
  const TopPage({super.key});

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.cyan,
                Colors.amber,
              ],
              begin: FractionalOffset(0, 0),
              end: FractionalOffset(1, 0),
              stops: [0, 1],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: const Text(
          "Top Page",
          style: TextStyle(
              fontSize: 60, color: Colors.white70, fontFamily: "Lobster"),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(children: [
          CustomTextField(
            data: Icons.person,
            hintText: 'Login Page',
          )
        ],),
      ),
    );
  }
}
