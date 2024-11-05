import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson8 extends StatefulWidget {
  const Lesson8({super.key});

  @override
  State<Lesson8> createState() => _Lesson8State();
}

class _Lesson8State extends State<Lesson8> {
  TextEditingController _addController = TextEditingController();
  TextEditingController _updateController = TextEditingController();

  List<String> tasks = ['learn flutter', 'do homework', 'learn dart'];

  List<String> filterTask = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterTask = tasks;
  }

  void search(String value) {
    List<String> tempList = [];
    if (value.isNotEmpty) {
      tempList = tasks
          .where((book) => book.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }else{
      tempList = tasks;
    }
    setState(() {
      filterTask = tempList;
    });
  }

  void createTasks() {
    if (_addController.text.isNotEmpty) {
      setState(() {
        filterTask.add(_addController.text);
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
      filterTask.removeAt(index);
    });
    cancel();
  }

  void update(int index) {
    if (_updateController.text.isNotEmpty) {
      setState(() {
        filterTask[index] = _updateController.text;
      });
      cancel();
    }
  }

  void deleteAll() {
    setState(() {
      filterTask.clear();
    });
    cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: filterTask.isEmpty
          ? Center(
              child: Text('данных нету'),
            )
          : ListView.builder(
              itemCount: filterTask.length,
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
                      filterTask[index],
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
                                _updateController.text = filterTask[index];
                                return _allertDialog(
                                    title: 'update data',
                                    name1: 'cancel',
                                    name2: 'update',
                                    isShow: true,
                                    controller: _updateController,
                                    onPressed: () {
                                      update(index);
                                    });
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
                                return _allertDialog(
                                    title: 'are you sure?',
                                    name1: 'no',
                                    name2: 'yes',
                                    onPressed: () {
                                      delete(index);
                                    });
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
              return _allertDialog(
                  title: 'add task',
                  name1: 'cancel',
                  name2: 'add',
                  isShow: true,
                  controller: _addController,
                  onPressed: () {
                    createTasks();
                  });
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

  PreferredSizeWidget _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Visibility(
        visible: isShow,
        child: TextField(
          onChanged: (value){
            search(value);
          },
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
                return _allertDialog(
                    title: 'Вы реально хотите удалить все данные?',
                    name1: 'no',
                    name2: 'yes',
                    onPressed: () {
                      deleteAll();
                    });
              },
            );
          },
          icon: Icon(Icons.delete_sweep_outlined),
        ),
      ],
    );
  }

  Widget _allertDialog({
    required String title,
    bool isShow = false,
    TextEditingController? controller,
    required String name1,
    required String name2,
    required Function() onPressed,
  }) {
    return AlertDialog(
      title: Text(title),
      content: Visibility(
        visible: isShow,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            cancel();
          },
          child: Text(name1),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(name2),
        ),
      ],
    );
  }
}
