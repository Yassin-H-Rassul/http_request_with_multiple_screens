import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: Text('go to third page'),
              onPressed: () {
                Navigator.of(context).pushNamed('/thirdScreen');
              },
            ),
            ElevatedButton(
              child: Text('go back to homepage page'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
