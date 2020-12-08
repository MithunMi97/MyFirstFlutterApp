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
  void showBottom(){
    showModalBottomSheet<void>(context: context, builder: (BuildContext context){
      return Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("welcome to mithun"),
            FlatButton(onPressed: (){
              Navigator.pop(context);
            },
                color: Colors.red,
                child: Text('OK',
                style: TextStyle(
                  color: Colors.white
                ),
                )
            )
          ],
        ),
      );
    });
      }
      bool mon=false;
      bool tue =false;
      bool wed=false;

  @override
  Widget build(BuildContext context) {
    var i=0;
    return Scaffold(
      backgroundColor: Color(0xfffeeeeee),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

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
                    RaisedButton(
                      onPressed: (){
                        print("click");
                      },
                      child: Text('Cancel'),
                      textColor: Colors.white,
                      color: Colors.red,
                      //disabledColor: Colors.teal,
                      //disabledTextColor: Colors.red,
                      splashColor: Colors.blue,
                    ),
                    RaisedButton(
                      onPressed: showBottom,
                      child: Text('Click Me'),
                      textColor: Colors.white,
                      color: Colors.green,
                      //disabledColor: Colors.teal,
                      //disabledTextColor: Colors.red,
                      splashColor: Colors.blue,
                    ),
                  ],
                ),

              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue,
              child: Image(
                image: AssetImage('image/Accenture.png'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 300,
              width: 300,

              decoration: BoxDecoration(
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://neilpatel.com/wp-content/uploads/2019/05/instagram.png'
                    ),
                    fit: BoxFit.cover,
                  )
              ),
              child: Center(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),

              ),
            ),
            Card(

              color: Colors.white,
              elevation: 10.0,

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 100,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Try not to become a man of success, but rather try to become a man of value',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    Text('-Albert Einstein',
                    style: TextStyle(
                      fontSize: 18.0,fontWeight: FontWeight.bold,
                    ),
                    )
                  ],
                ),
              ),
            ),
            Container(

              decoration:  BoxDecoration(
                color: Colors.white,
                //border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),


              child:DataTable(
                columns: [
                    DataColumn(label: Text("Roll No")),
                  DataColumn(label: Text("Name")),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('17MCL051')),
                    DataCell(Text('17MCL051')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('17MCL053')),
                    DataCell(Text('17MCL053'))
                  ]),
                  DataRow(cells: [
                    DataCell(Text('17MCL054')),
                    DataCell(Text('17MCL054'))
                  ])
                ]
            ),
            ),
            Container(
              height: 100,
              decoration:  BoxDecoration(
                color: Colors.white,
                //border: Border.all(width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    customCheckBox('Mon',mon),
                    customCheckBox('Tue',tue),
                    customCheckBox('Wed',wed),
                  ],
                ),
              ),
            ),
          ],
          ),

        ),



      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=>FirstPage())
          );
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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

  Column customCheckBox(String title, bool val) {
    return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(title),
                      Checkbox(
                          value: val, onChanged: (bool value){
                        setState(() {
                          switch(title){
                            case 'Mon':
                              mon=value;
                              print(title+":$value");
                              break;
                            case 'Tue':
                              tue=value;
                              print(title+":$value");
                              break;
                            case 'Wed':
                            wed=value;
                            print(title+":$value");
                            break;
                          }
                          //mon=value;
                          //print(mon);
                        });
                      }),
                    ],
                  );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Page-2",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OutlineButton(
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                  child: Text(
                    'Click Me',
                    style: TextStyle(fontSize: 18.0),
                  ),
                onPressed: (){
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context)=>caltheme()));
                },
                textColor: Colors.blue,
                highlightColor: Colors.yellow,
                splashColor: Colors.deepOrange,
                borderSide: BorderSide(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 3.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_before),
        onPressed: (){
          Navigator.of(context)
              .pop(MaterialPageRoute(builder: (context)=>MyApp()));
        },
      ),
    );
  }
}

class caltheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: CalHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CalHomePage extends StatefulWidget {
  @override
  _CalHomePageState createState() => _CalHomePageState();
}

class _CalHomePageState extends State<CalHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  alignment: Alignment.bottomRight,
                  child: Text(text,style: TextStyle(
                    fontSize: 60.0,
                    fontWeight: FontWeight.w500,
                  ),),
                )
            ),
            Row(
              children: <Widget>[
                CustomOutlineButton('9'),
                CustomOutlineButton('8'),
                CustomOutlineButton('7'),
                CustomOutlineButton('+'),
              ],
            ),
            Row(
              children: <Widget>[
                CustomOutlineButton('6'),
                CustomOutlineButton('5'),
                CustomOutlineButton('4'),
                CustomOutlineButton('-'),
              ],
            ),
            Row(
              children: <Widget>[
                CustomOutlineButton('3'),
                CustomOutlineButton('2'),
                CustomOutlineButton('1'),
                CustomOutlineButton('x'),
              ],
            ),
            Row(
              children: <Widget>[
                CustomOutlineButton('C'),
                CustomOutlineButton('0'),
                CustomOutlineButton('='),
                CustomOutlineButton('/'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomOutlineButton(String val) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: ()=>btnClicked(val),
        child: Text(val,
        style: TextStyle(fontSize: 35.0),
      ),
    ),
        );
  }
  String res, text="",opp;
  int first,second;
  void btnClicked(String btnText){
    if(btnText=="C"){
      res="";
      text="";

    }else if(btnText=="+"||btnText=="-"||btnText=="x"||btnText=="/"){
first=int.parse(text);
res="";
opp=btnText;
print(first.toString());
print(opp);
    }else if(btnText=="="){
      second=int.parse(text);
      print(second.toString());
      if(opp=="+"){
        res=(first+second).toString();
      }
      if(opp=="-"){
        res=(first-second).toString();
      }
      if(opp=="x"){
        res=(first*second).toString();
      }
      if(opp=="/"){
        res=(first/second).toString();
      }
    }
    else{
      res=int.parse(text+btnText).toString();
    }

    setState(() {
      text=res;
    });
  }
}
