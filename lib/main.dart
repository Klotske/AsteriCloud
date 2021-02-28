import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AsteriCloud',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(title: 'Login screen'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "*******",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Color(0xff07E897),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BoardPage()));
        },
        child: Text("Enter",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Color(0xff343F48), fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 65.0),
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 55.0),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Login",
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Color(0xff343F48), fontSize: 18))),
                SizedBox(
                  height: 3.0,
                ),
                emailField,
                SizedBox(height: 13.0),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Password",
                        textAlign: TextAlign.left,
                        style:
                            TextStyle(color: Color(0xff343F48), fontSize: 18))),
                SizedBox(
                  height: 3.0,
                ),
                passwordField,
                Container(
                    alignment: Alignment.centerRight,
                    child: Text("Forget password?",
                        textAlign: TextAlign.right,
                        style:
                            TextStyle(color: Color(0xff343F48), fontSize: 10))),
                SizedBox(
                  height: 35.0,
                ),
                SizedBox(
                  width: 104.0,
                  child: loginButon,
                ),
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final blockNavigation = new Container(
      decoration: new BoxDecoration(
        color: new Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    final buttonHome = new MaterialButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: new Image(
        image: new AssetImage("assets/home.png"),
        height: 40.0,
        width: 40.0,
      ),
    );

    final buttonPush = new MaterialButton(
      onPressed: () {
        //Navigator.push(
        //context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: new Image(
        image: new AssetImage("assets/push.png"),
        height: 40.0,
        width: 40.0,
      ),
    );

    final buttonGraph = new MaterialButton(
      onPressed: () {
        //Navigator.push(
        //context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: new Image(
        image: new AssetImage("assets/graph.png"),
        height: 40.0,
        width: 40.0,
      ),
    );

    final buttonAuth = new MaterialButton(
      onPressed: () {
        //Navigator.push(
        //context, MaterialPageRoute(builder: (context) => BoardPage()));
      },
      child: new Image(
        image: new AssetImage("assets/auth.png"),
        height: 40.0,
        width: 40.0,
      ),
    );

    return new Container(
        height: 40.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        child: new Stack(
          children: <Widget>[
            blockNavigation,
            Row(
              children: [buttonHome, buttonPush, buttonGraph, buttonAuth],
            ),
          ],
        ));
  }
}

class CardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cloudThumbnail = new Container(
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage("assets/cloud.png"),
        height: 92.0,
        width: 92.0,
      ),
    );

    final bourdCard = new Container(
      decoration: new BoxDecoration(
        color: new Color(0xFFFFFFFF),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new Container(
        height: 448.0,
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            bourdCard,
            cloudThumbnail,
          ],
        ));
  }
}

class BoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD2D2D2),
        body: Stack(
          children: [
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[new CardRow()]),
            new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [new NavigationBar()],
            )
          ],
        ));
  }
}
