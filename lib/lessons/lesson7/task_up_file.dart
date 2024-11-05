import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskUpFile extends StatefulWidget {
  const TaskUpFile({super.key});

  @override
  State<TaskUpFile> createState() => _TaskUpFileState();
}

class _TaskUpFileState extends State<TaskUpFile> {
  TextEditingController _addController = TextEditingController();
  TextEditingController _updateController = TextEditingController();

  List<String> tasks = ['learn flutter', 'do homework', 'learn dart'];

  void createTasks() {
    if (_addController.text.isNotEmpty) {
      setState(() {
        tasks.add(_addController.text);
        _addController.clear();
      });
      cancel();
    }
  }

  bool isShow = false;

  void showSearch() {
    setState(() {
      isShow = !isShow;
    });
  }

  void cancel() {
    Navigator.pop(context);
  }

  void delete(int index) {
    setState(() {
      tasks.removeAt(index);
    });
    cancel();
  }

  void update(int index) {
    if (_updateController.text.isNotEmpty) {
      setState(() {
        tasks[index] = _updateController.text;
      });
      cancel();
    }
  }

  void deleteAll() {
    setState(() {
      tasks.clear();
    });
    cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: tasks.isEmpty
          ? Center(
              child: Text('данных нету'),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 30,
                      child: Text(
                        '$index',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    title: Text(
                      tasks[index],
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text('task description'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                _updateController.text = tasks[index];
                                return AlertDialog(
                                  title: Text('update data'),
                                  content: TextField(
                                    controller: _updateController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder()),
                                  ),
                                  actions: [
                                    buttonWidget(
                                      text: 'no',
                                      onPressed: () {
                                        cancel();
                                      },
                                      context: context,
                                    ),
                                    buttonWidget(
                                      text: 'update',
                                      onPressed: () {
                                        update(index);
                                      },
                                      context: context,
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(' are you sure?'),
                                  actions: [
                                    buttonWidget(
                                      text: 'no',
                                      onPressed: () {
                                        cancel();
                                      },
                                      context: context,
                                    ),
                                    buttonWidget(
                                      text: 'yes',
                                      onPressed: () {
                                        delete(index);
                                      },
                                      context: context,
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (contex) {
              return AlertDialog(
                title: Text('add task'),
                content: TextField(
                  controller: _addController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                actions: [
                  buttonWidget(
                    text: 'cancel',
                    onPressed: () {
                      cancel();
                    },
                    context: context,
                  ),
                  buttonWidget(
                    text: 'add',
                    onPressed: () {
                      createTasks();
                    },
                    context: context,
                  )
                ],
              );
            },
          );
        },
        backgroundColor: Colors.indigo,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget alertDialogWidget(
      {required String text,
      required String textField,
      required TextEditingController controller, required buttonWidget}) {
    return AlertDialog(
      title: Text('add task'),
      content: TextField(
        controller: _addController,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
      actions: [
        buttonWidget(
          text: 'cancel',
          onPressed: () {
            cancel();
          },
          context: context,
        ),
        buttonWidget(
          text: 'add',
          onPressed: () {
            createTasks();
          },
          context: context,
        )
      ],
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Visibility(
        visible: isShow,
        child: TextField(
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            showSearch();
          },
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Вы реально хотите удалить все данные?'),
                  actions: [
                    buttonWidget(
                      text: 'no',
                      onPressed: () {
                        cancel();
                      },
                      context: context,
                    ),
                    buttonWidget(
                      text: 'yes',
                      onPressed: () {
                        deleteAll();
                      },
                      context: context,
                    ),
                  ],
                );
              },
            );
          },
          icon: Icon(Icons.delete_sweep_outlined),
        ),
      ],
    );
  }

  Widget buttonWidget({required String text,  required BuildContext context, required Function() onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
