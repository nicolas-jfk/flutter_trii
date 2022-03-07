import 'package:flutter/material.dart';
import 'package:flutter_trii/ui/login.dart';
import 'package:flutter_trii/ui/postermovie.dart';
import 'package:flutter_trii/ui/spinnerwidget.dart';
import 'api/dbinfo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LogIn(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DBinfo info = DBinfo();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: FutureBuilder(
        future: info.getNowPlaying(),
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        var pelicula = snapshot.data![index];

                        return PosterMovie(peli: pelicula);
                      }),
                ),
              ],
            );
          } else {
            return SpinnerWidget();
          }
        },
      ),
    );
  }
}
