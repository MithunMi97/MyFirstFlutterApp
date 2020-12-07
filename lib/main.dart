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

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      print(_counter);
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
        bottom: PreferredSize(
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


              ),
            ),
          ),
          preferredSize: Size.fromHeight(50.0),
        ),
      ),
      body: Center(
        child:Text(
          "My First App $_counter",
          style: TextStyle(
            fontSize: 35.0,
            color: Colors.red,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _incrementCounter,
      ),
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
          ],


        ),
      ),
    );
  }
}
