import 'package:flutter/material.dart';

//Form
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    TextEditingController some = new TextEditingController();
    final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: some,
            decoration: InputDecoration(hintText: 'dsfdfsdf'),
            validator: (String? value) {
              if (value == null || value.isEmpty) return 'enter valid text';
              return null;
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: ElevatedButton(
              child: Text('submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(some.text);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
