import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_task/model/schedule.dart';

class TaskPage extends StatelessWidget {
  TaskPage({Key? key, required this.name}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String name;

  final tasks = [
    [
      Schedule(
        taskName: 'Take a bath',
        taskTime: TimeOfDay(hour: 7, minute: 30),
      ),
      Schedule(
        taskName: 'Breakfast',
        taskTime: TimeOfDay(hour: 7, minute: 45),
      ),
      Schedule(
        taskName: 'Playing Games',
        taskTime: TimeOfDay(hour: 8, minute: 0),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 10, minute: 0),
      ),
      Schedule(
        taskName: 'Lunch',
        taskTime: TimeOfDay(hour: 12, minute: 0),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 12, minute: 30),
      ),
      Schedule(
        taskName: 'Playing Games',
        taskTime: TimeOfDay(hour: 14, minute: 30),
      ),
      Schedule(
        taskName: 'Take a Bath',
        taskTime: TimeOfDay(hour: 16, minute: 30),
      ),
      Schedule(
        taskName: 'Playing Football with Friends',
        taskTime: TimeOfDay(hour: 17, minute: 0),
      ),
      Schedule(
        taskName: 'Take a Bath',
        taskTime: TimeOfDay(hour: 19, minute: 0),
      ),
      Schedule(
        taskName: 'Dinner',
        taskTime: TimeOfDay(hour: 19, minute: 30),
      ),
      Schedule(
        taskName: 'Checking Social Media',
        taskTime: TimeOfDay(hour: 20, minute: 0),
      ),
      Schedule(
        taskName: 'Pray',
        taskTime: TimeOfDay(hour: 21, minute: 0),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 22, minute: 0),
      ),
    ],
    [
      Schedule(
        taskName: 'Take a bath',
        taskTime: TimeOfDay(hour: 7, minute: 30),
      ),
      Schedule(
        taskName: 'Stretching',
        taskTime: TimeOfDay(hour: 7, minute: 45),
      ),
      Schedule(
        taskName: 'Breakfast',
        taskTime: TimeOfDay(hour: 8, minute: 15),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 8, minute: 30),
      ),
      Schedule(
        taskName: 'Lunch',
        taskTime: TimeOfDay(hour: 13, minute: 0),
      ),
      Schedule(
        taskName: 'Playing Games',
        taskTime: TimeOfDay(hour: 14, minute: 0),
      ),
      Schedule(
        taskName: 'Take a bath',
        taskTime: TimeOfDay(hour: 16, minute: 0),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 16, minute: 30),
      ),
      Schedule(
        taskName: 'Dinner',
        taskTime: TimeOfDay(hour: 19, minute: 0),
      ),
      Schedule(
        taskName: 'Reading Comics',
        taskTime: TimeOfDay(hour: 19, minute: 30),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 22, minute: 0),
      ),
    ],
    [
      Schedule(
        taskName: 'Reading',
        taskTime: TimeOfDay(hour: 6, minute: 30),
      ),
      Schedule(
        taskName: 'Take a bath',
        taskTime: TimeOfDay(hour: 7, minute: 30),
      ),
      Schedule(
        taskName: 'Stretching',
        taskTime: TimeOfDay(hour: 7, minute: 45),
      ),
      Schedule(
        taskName: 'Play',
        taskTime: TimeOfDay(hour: 8, minute: 0),
      ),
      Schedule(
        taskName: 'Hangout with Friends',
        taskTime: TimeOfDay(hour: 10, minute: 0),
      ),
      Schedule(
        taskName: 'Lunch',
        taskTime: TimeOfDay(hour: 12, minute: 0),
      ),
      Schedule(
        taskName: 'Hangout with Friends',
        taskTime: TimeOfDay(hour: 12, minute: 30),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 14, minute: 30),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 16, minute: 30),
      ),
      Schedule(
        taskName: 'Take a Bath',
        taskTime: TimeOfDay(hour: 17, minute: 0),
      ),
      Schedule(
        taskName: 'Reading Comics',
        taskTime: TimeOfDay(hour: 17, minute: 30),
      ),
      Schedule(
        taskName: 'Dinner',
        taskTime: TimeOfDay(hour: 18, minute: 30),
      ),
      Schedule(
        taskName: 'Chit Chat',
        taskTime: TimeOfDay(hour: 19, minute: 0),
      ),
      Schedule(
        taskName: 'Reading Comics',
        taskTime: TimeOfDay(hour: 20, minute: 0),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 21, minute: 0),
      ),
    ],
    [
      Schedule(
        taskName: 'Making a food',
        taskTime: TimeOfDay(hour: 7, minute: 0),
      ),
      Schedule(
        taskName: 'Take a bath',
        taskTime: TimeOfDay(hour: 7, minute: 30),
      ),
      Schedule(
        taskName: 'Breakfast',
        taskTime: TimeOfDay(hour: 7, minute: 45),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 8, minute: 0),
      ),
      Schedule(
        taskName: 'Playing Games',
        taskTime: TimeOfDay(hour: 9, minute: 30),
      ),
      Schedule(
        taskName: 'Checking Social Media',
        taskTime: TimeOfDay(hour: 11, minute: 30),
      ),
      Schedule(
        taskName: 'Lunch',
        taskTime: TimeOfDay(hour: 12, minute: 30),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 13, minute: 0),
      ),
      Schedule(
        taskName: 'Playing Games',
        taskTime: TimeOfDay(hour: 14, minute: 0),
      ),
      Schedule(
        taskName: 'Study',
        taskTime: TimeOfDay(hour: 16, minute: 0),
      ),
      Schedule(
        taskName: 'Take a Bath',
        taskTime: TimeOfDay(hour: 18, minute: 0),
      ),
      Schedule(
        taskName: 'Dinner',
        taskTime: TimeOfDay(hour: 18, minute: 30),
      ),
      Schedule(
        taskName: 'Chit Chat',
        taskTime: TimeOfDay(hour: 19, minute: 0),
      ),
      Schedule(
        taskName: 'Coding',
        taskTime: TimeOfDay(hour: 20, minute: 0),
      ),
      Schedule(
        taskName: 'Sleep',
        taskTime: TimeOfDay(hour: 22, minute: 0),
      ),
    ]
  ];

  List<Schedule> getTask() {
    var hashRandom = name.hashCode ^ DateTime.now().day.hashCode;
    var random = Random(hashRandom);
    var task = random.nextInt(3);
    var taskList = tasks[task];
    return taskList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Random Task"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              'Hello $name!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Here your tasks'),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth < 600) {
                    return ListView(
                      children: _generateContainers(context),
                    );
                  } else if (constraints.maxWidth < 900) {
                    return GridView.count(
                      crossAxisCount: 2,
                      children: _generateContainers(context),
                    );
                  } else {
                    return GridView.count(
                      crossAxisCount: 6,
                      children: _generateContainers(context),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _generateContainers(context) {
    var task = getTask();
    return task.map((task) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.amber,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              task.taskName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Text(task.taskTime.format(context)),
          ],
        ),
      );
    }).toList();
  }
}
