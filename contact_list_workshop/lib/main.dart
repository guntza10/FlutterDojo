import 'package:flutter/material.dart';
import 'contact.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> generateTextWidgets(int count) {
    // var textWidgets = [];
    List<Widget> textWidgets = [];
    for (var i = 0; i < count; i++) {
      var widget = Text('${i + 1}');
      textWidgets.add(widget);
    }

    return textWidgets;
  }

  List<Widget> generateListTile(int count) {
    List<Widget> textWidgets = [];
    for (var i = 0; i < count; i++) {
      var widget = ListTile(
        title: Text('${i + 1}'),
      );
      textWidgets.add(widget);
    }

    return textWidgets;
  }

  @override
  Widget build(BuildContext context) {
    var contactList = [
      Contact('Jomphop Saibuatong', '0845167512', 'assets/images/nextflow.png'),
      Contact('Kant Saibuatong', '0845151177', 'assets/images/error.png'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Nextflow Contact"),
      ),
      // body: Column(
      //   children: generateTextWidgets(20),
      // ),
      // body: ListView(
      //   children: generateListTile(20),
      // ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) {
          var contact = contactList[index];

          return ListTile(
            leading: Image.asset(contact.imageSrc),
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            onTap: () {
              // do something for tap each ListTile in ListView
              launch('tel:${contact.phoneNumber}');
            },
          );
        },
      ),
    );
  }
}
