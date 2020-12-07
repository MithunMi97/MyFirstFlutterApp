import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

void main()=>runApp(new MaterialApp(
  home: new MyApp(),
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

}
class _MyAppState extends State<MyApp> {
  int _counter = 0;
  String _value="";
  void _incrementCounter() {
    setState(() {
      _counter++;
      print(_counter);
    });
  }
  void _onchange(String val) {
    setState(() {
      _value=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    var i=0;
    return Scaffold(

      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
            i+=1;

            print("Icon click $i");
          },
        ),*/
        title: Text('MyFirstApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
            },
          )
        ],
        flexibleSpace: SafeArea(
          minimum: const EdgeInsets.only(left: 50,top: 27),
          child: Icon(
            Icons.camera,
            color: Colors.white,
            size: 50.0,

          ),
        ),
        /*bottom: PreferredSize(
          child: Container(
            color: Colors.grey,
            height: 50.0,
            width: double.infinity,
            child: Text(
              "Mithun",
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,


              ),
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),*/
      ),
      body: Center(

        child:Column(

          children: <Widget> [
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                IconButton(icon: Icon(Icons.home), onPressed: null),
                IconButton(icon: Icon(Icons.people), onPressed: null),
                IconButton(icon: Icon(Icons.add), onPressed: null),
                IconButton(icon: Icon(Icons.search), onPressed: null),
              ],
            ),
            Text(
          "My First App $_counter",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.red,

          ),
            ),
            Text(
              "My First App $_counter",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,

              ),
            ),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.blue,
                shape: CircleBorder()
              ),
              child: IconButton(
                icon: Icon(Icons.add),
                color: Colors.white,
                onPressed: (){
                  setState(() {
                    _counter+=2;
                  });
                },
              ),
            ),
            RichText(
                text: TextSpan(
                  text: 'Mithun',style:TextStyle(
                  color: Colors.purple,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontStyle: FontStyle.italic,

                ),
                  children: <TextSpan>[
                    TextSpan(text: 'Computer' ,
                      style: TextStyle(
                        color: Colors.orange,
                        decoration: TextDecoration.none,
                      )
                    ),
                    TextSpan(text: 'Education'),

                  ]
                ),
            ),
            Text(
              _value,
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.red,

              ),
            ),
            TextField(
              decoration: new InputDecoration(
                labelText: "Enter the phone number",
                hintText: "Phone Number",
                icon:  new Icon(Icons.phone)
              ),
                  onSubmitted: _onchange,
              keyboardType: TextInputType.number,
            ),
            Center(
              child: Container(
                //margin: const EdgeInsets.only(top: 300.0),
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      onPressed: (){

                      },
                      child: Text('Login'),
                      color: Colors.blue,
                    ),
                    FlatButton(
                      onPressed: (){

                      },
                      child: Text('Cancel'),
                      color: Colors.red,
                    ),

                  ],
                ),

              ),
            )
          ],
          ),

        ),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCounter,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("mithun"),
                accountEmail: Text("mithunmi97@outlook.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("XYZ"),
                ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("XYZ"),
                )
              ],
    ),
            ListTile(
              title: Text("All Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Promotion"),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("All Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
          ],


        ),
      ),
      /*persistentFooterButtons: <Widget> [
        RaisedButton(
          elevation: 10,
          onPressed: (){
            print('onclick');
          },
          color: Colors.green,
          child: Icon(Icons.add),
        ),
        RaisedButton(
          elevation: 10,
          onPressed: (){
            print('onclick');
          },
          color: Colors.red,
          child: Icon(Icons.clear),
        )
      ],*/
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            title: Text('Home'),
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text('Search'),
              icon: Icon(Icons.search)
          )
        ],
        onTap: (int index){
          print(index);
        },
      ),
      endDrawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("mithun"),
              accountEmail: Text("mithunmi97@outlook.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("XYZ"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("XYZ"),
                )
              ],
            ),
            ListTile(
              title: Text("All Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Primary"),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Social"),
              leading: Icon(Icons.people),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("Promotion"),
              leading: Icon(Icons.local_offer),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text("All Inbox"),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
          ],


        ),
      ),
      //backgroundColor: Colors.tealAccent,
    );
  }
}
