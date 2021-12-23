import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'covid_19_today_result.dart';
// import 'package:covid_19_today/covid_19_today_result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow COVID-19 Today',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Nextflow COVID-19 Today'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Covid19TodayResult? dataFromWebApi;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    var url =
        Uri.parse('https://www.nextflow.in.th/api/covid19/getTodayCases.json');
    var response = await http.get(url);

    setState(() {
      dataFromWebApi = covid19TodayResultFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ผู้ติดเชื้อสะสม'),
            subtitle: Text('${dataFromWebApi?.confirmed ?? 'Loading...'}'),
          ),
          ListTile(
            title: Text('หายแล้ว'),
            subtitle: Text('${dataFromWebApi?.recovered ?? 'Loading...'}'),
          ),
          ListTile(
            title: Text('รักษาตัวอยู่ในโรงพยาบาล'),
            subtitle: Text('${dataFromWebApi?.hospitalized ?? 'Loading...'}'),
          ),
          ListTile(
            title: Text('เสียชีวิต'),
            subtitle: Text('${dataFromWebApi?.deaths ?? 'Loading...'}'),
          ),
        ],
      ),
    );
  }
}
