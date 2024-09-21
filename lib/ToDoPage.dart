import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<TodoPage> {
  List toDoList = [];

  String item = "";

  myInputOnChange(value) {
    setState(() {
      item = value;
    });
  }

  addItem() {
    setState(() {
      toDoList.add({"item": item});
      item = "";
    });
  }

  removeItem(index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    onChanged: (value) {
                      myInputOnChange(value);
                    },
                    initialValue: item,
                  )),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      addItem();
                    },
                    child: Text("Add File"),
                  ))
                ],
              ),
            ),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: toDoList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(
                          flex: 80,
                          child: Card(
                            child: Text(toDoList[index]['item'].toString()),
                          ),
                        ),
                        Expanded(
                          flex: 20,
                          child: Card(
                            child: TextButton(
                              onPressed: () {
                                removeItem(index);
                              },
                              child: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
