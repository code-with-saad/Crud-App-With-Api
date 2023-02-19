import 'package:api_second_class/controller/user_controller.dart';
import 'package:api_second_class/views/adduser.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddUser()));
          },
          child: Icon(Icons.add),
        ),
        body: FutureBuilder(
          future: getuser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data.data[index].name),
                    subtitle: Text(snapshot.data.data[index].email),
                    trailing: IconButton(
                      onPressed: () {
                        // deleteuser(snapshot.data.data[index].id);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
