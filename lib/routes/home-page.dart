import 'package:flutter/material.dart';
import '../Task.dart';
import 'TaskDetails.dart';

List<Task> taskList = [
  Task(date: "20/10/2022", id: 1, name: "wash my car",done: false),
  Task(date: "5/2/2022", id: 2, name: "finish my work",done: false),
  Task(date: "31/6/2022", id: 3, name: "buy a car",done: false),
  Task(date: "10/10/2022", id: 4, name: "sleep",done: false),
  Task(date: "1/11/2022", id: 5, name: "wash my car",done: false),
];
List<Task> finishedTasks = [
  Task(date: "20/10/2022", id: 1, name: "go to bed early",done: true),
  Task(date: "5/2/2022", id: 2, name: "eat",done: true),
];
int lengthOfFinishedTasks = finishedTasks.length;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton( onPressed: () {},
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.edit,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          elevation: 0.5,
          leading: Icon(
            Icons.arrow_back_sharp,
            color: Colors.white,
            size: 20,
          ),
          actions: [
            Icon(Icons.person_add),
            Icon(Icons.more_vert),
          ],
          title: Text("TO-D0",
              style: TextStyle(color: Colors.white, fontSize: 30)),
        ),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                buildList(false, taskList, taskList.length),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 50,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(color: Colors.white, spreadRadius: 1)
                        ]),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Icon(Icons.adjust_sharp)),
                        Text(
                          "Completed  $lengthOfFinishedTasks",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                buildList(true, finishedTasks, finishedTasks.length),
              ],
            )));
  }
}

Container buildList(bool check, List<Task> list, int listLength) {
  return Container(
    height: 300,
    child: ListView.builder(
        itemCount: listLength,
        itemBuilder: (context, index) {
          return Container(
            height: 90,
            width: 30,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                gradient: LinearGradient(colors: [Colors.white24, Colors.grey]),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [BoxShadow(color: Colors.white, spreadRadius: 1)]),
            foregroundDecoration:
                BoxDecoration(color: Colors.white.withOpacity(0.1)),
            margin: EdgeInsets.all(5),
            child: Row(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                    task: list[index],
                                  )));
                    },
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text("Click This"),
                  )),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Icon(Icons.star_border_sharp),
              ),
              addTextDecoration(list[index].done, list[index].name),
            ]),
          );
        }),
  );
}

Widget addTextDecoration(bool check, var name) {
  if (!check) {
    return Text(
      name,
      style: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none),
    );
  } else {
    return Text(name,
        style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough));
  }
}
