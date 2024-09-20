import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<TodoPage> {
  List Todolist = [
    {"a": "ee"},
    {"a": "ee"},
    {"a": "ee"},
    {"a": "ee"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(child: TextFormField()),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Add File"),
                  ))
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: Todolist.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text("10"),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
