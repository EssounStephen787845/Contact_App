import 'package:flutter/material.dart';
import 'package:to_do/floatbutton.dart';
import 'package:to_do/models/todo_network.dart';

class TodoHomeView extends StatefulWidget {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  _TodoHomeViewState createState() => _TodoHomeViewState();
}

class _TodoHomeViewState extends State<TodoHomeView> {
  Future? getData;

  //instance of TodoNetwork
  TodoNetwork network = TodoNetwork();
  @override
  void initState() {
    getData = network.getAlltodos();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
            backgroundColor:
                Theme.of(context).textTheme.headline2!.backgroundColor,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.filter_list_sharp,
                      color: Theme.of(context).iconTheme.color)),
              SizedBox(
                width: MediaQuery.of(context).size.height * 0.0001,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).iconTheme.color,
                  )),
            ],
            title: Text(
              "My Task",
              style: TextStyle(color: Theme.of(context).iconTheme.color),
            )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Create()));
          },
          child: Icon(Icons.add_circle),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onDoubleTap: () {},
            onLongPress: () {
              Navigator.pop(context);
            },
            child: Card(
              child: ListTile(
                  contentPadding: EdgeInsets.all(0.03),
                  leading: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_circle_outlined)),
                  title: Text("Plan the trip to Finland"),
                  subtitle: Text("The family's trip to Finland next\n summer"),
                  trailing: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none_rounded),
                      label: Text("yesterday"))),
            ),
          ),
          itemCount: 10,
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
        )
        // ignore: empty_statements
        );
  }
}
