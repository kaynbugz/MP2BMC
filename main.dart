import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(
              title: Text("CK WEBSITE!"),
              backgroundColor: Colors.deepPurple, // Adjust color as desired
            ),
            body: Builder(builder: (context) =>
                Center(
                    child: Column(
                        children: [
                          Text(
                            'SOLO LEVELING WEBSITE', // Corrected spelling
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '---------------------------', // Corrected spelling
                            style: TextStyle(
                                fontSize: 30, color: Colors.black),

                          ),
                          Image.network(
                            'https://th.bing.com/th/id/OIP.ZGyi9UhOVfuEtrKLukzABAHaEK?rs=1&pid=ImgDetMain',
                            height: 500,
                          ), // Remov
                          ElevatedButton(
                            child: Text('CONTACT US'),
                            onPressed: () => contactUs(context),
                          )
                        ]
                    )))));
  }
}

  void contactUs(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Contact us'),
          content: Text('Mail us at bugto@world.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context). pop(),
            )
          ],
        );
      },
    );
  }
