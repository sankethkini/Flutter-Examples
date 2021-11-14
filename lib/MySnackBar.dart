import 'package:flutter/material.dart';

//SnackBar
class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _onpressed() {
      print('sdfk');
      final snackBar = SnackBar(
        content: Text('this is snackbar'),
        action: SnackBarAction(
            label: 'undo',
            onPressed: () {
              print('some action');
            }),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar'),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('sdfdsf'),
          onPressed: _onpressed,
        ),
      ),
    );
  }
}