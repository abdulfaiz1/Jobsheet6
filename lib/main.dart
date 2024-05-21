import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MPL-Jobshhet 6',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Daftar Mahasiswa'),
        ),
        body: Center(
          child: TeksUtama(),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: () {
            // This needs to be handled within the TeksUtama widget
          },
        ),
      ),
    );
  }
}

class TeksUtama extends StatefulWidget {
  @override
  _StateTeksUtama createState() => _StateTeksUtama();
}

class _StateTeksUtama extends State<TeksUtama> {
  int index = 0;

  final listNama = [
    'Abdul Faiz', 'Sulistyo', 'Zahwa Naca', 'Rahma Nur Chasanah',
    'Tri Rahayu'
  ];

  final listWarna = [
    Colors.red, Colors.purple, Colors.teal, Colors.lime,
    Colors.indigo, Colors.deepPurple, Colors.cyan,
    Colors.blue, Colors.yellow
  ];

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Apa kabar?',
          textDirection: TextDirection.ltr,
          style: TextStyle(
          fontSize: 10,
          ),
        ),
        Text(
          listNama[index % listNama.length],
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: listWarna[index % listWarna.length]
          ),
        ),
        FloatingActionButton(
          tooltip: 'Increment',
          child: Icon(Icons.add),
          onPressed: incrementIndex,
        )
      ],
    );
  }
}
