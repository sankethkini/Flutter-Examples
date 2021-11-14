import 'package:flutter/material.dart';


//Navigator
class NavigatorApp extends StatelessWidget {
  const NavigatorApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.center,
        
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[

          Text('go to the next page'),
          FloatingActionButton(
              child: Text('button'),
              onPressed: () async {
                print(context.toString());
                final _rettext=await Navigator.pushNamed(context,'/second');
                print(_rettext);
              })
          ]
        ) 
      ),
      );
    
  }
}

class SecondApp extends StatelessWidget {
  const SecondApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FloatingActionButton(onPressed: () {
          print(context);
          Navigator.pop(context,'some return text');
        }),
      ),
    );
  }
}


