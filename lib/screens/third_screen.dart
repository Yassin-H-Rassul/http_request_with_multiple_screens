import 'package:flutter/material.dart';
import 'package:navigation_with_http/http_service.dart';

class ThirdScreen extends StatelessWidget {
  final httpServ = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('second screen'),
        ),
        body: FutureBuilder<List<dynamic>>(
          future: httpServ.getUsers(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return Text(snapshot.data![index]);
                },
                itemCount: snapshot.data!.length,
              );
            }
          },
        ));
  }
}
