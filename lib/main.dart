import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(MySecondWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Image myImage = Image.network("https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg");//
    Text myText = Text("This is nice!", textDirection: TextDirection.ltr);
    Text myText2 = Text("Realy!", textDirection: TextDirection.ltr,);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("AppBar")),
            body: Center(child: Column(
              children: <Widget>[myText,myImage,myText2], mainAxisSize:MainAxisSize.min,
            ))));
  }
}


class MySecondWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  {
    return MyState();
  }
}

class MyState extends State<MySecondWidget> {

  String url = "https://source.unsplash.com/random/800x600";
  String myButtonText = "Press This Button to make great changes";

  @override
  void changeURL() {
    var random = Random.secure();
    var randmomcharnum ="a".codeUnits.first + random.nextInt(25);
    var randmostring = "";
    for(int i="a".codeUnits.first; i<"a".codeUnits.first + random.nextInt(25); i++) {
      randmomcharnum ="a".codeUnits.first + random.nextInt(25);
      randmostring+=String.fromCharCode(randmomcharnum);
    }
    setState(() {
      url = "https://source.unsplash.com/random/800x600/?" +
          "q=${new DateTime.now().millisecondsSinceEpoch}";
      myButtonText = "New random string is $randmostring";
    });

  }
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Show Radnom image")),
            body: Center( child: Column(
                children: <Widget>[
                  RaisedButton(child: Text(myButtonText),
                    onPressed: changeURL,
                  ),Image.network(url)
                ]
            )
            )
        )
    );
  }
}


