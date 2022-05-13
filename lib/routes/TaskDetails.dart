import 'package:flutter/material.dart';
import '../Task.dart';
import 'home-page.dart';

class DetailScreen extends StatelessWidget {
  final Task task;

  const DetailScreen({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            buildContainer(task.id.toString(), task.done),
            buildItems(),
                ],
              ),
            ),
        );
  }
}

Widget buildContainer(String state, bool check) {
  return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
        foregroundDecoration:
            BoxDecoration(color: Colors.white.withOpacity(0.1)),
        margin: EdgeInsets.all(5),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 7.5, 0),
            child: Transform.scale(
              scale: 1.0,
              child: Checkbox(
                activeColor: Colors.orange,
                checkColor: Colors.red,
                tristate: false,
                value: check,
              ),
            ),
          ),
          addTextDecoration(check,"Task $state"),
        ]),
      ));
}

Widget buildItems() {
  return Container(
    height: 400,
    child: ListView(
      children: [
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),

              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
          foregroundDecoration:
              BoxDecoration(color: Colors.white.withOpacity(0.1)),

          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.add),
            ),
            Text(
              "Add step",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ]),
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
          foregroundDecoration:
          BoxDecoration(color: Colors.white.withOpacity(0.1)),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.wb_sunny_outlined),
            ),
            Text(
              "Add to My Day",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ]),
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
          foregroundDecoration:
          BoxDecoration(color: Colors.white.withOpacity(0.1)),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.access_alarms_rounded),
            ),
            Text(
              "Reminder me",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ]),
        ),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
          foregroundDecoration:
          BoxDecoration(color: Colors.white.withOpacity(0.1)),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.calendar_today_outlined),
            ),
            Text(
              "Add due date",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ]),
        ),
        Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
          foregroundDecoration:
          BoxDecoration(color: Colors.white.withOpacity(0.1)),
          child: Row(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.add_to_photos_sharp),
            ),
            Text(
              "add file",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            )
          ]),
        ),
      ],
    ),
  );
}
