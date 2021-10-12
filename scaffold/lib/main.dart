
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scaffold App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Scaffold App'),
      routes: <String, WidgetBuilder>{
        '/item': (BuildContext context) => SecondPage(),
      });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  int _counter = 0;
  int crntIndex = 0;
  late List<Widget> tabs;
  
  late TabController controller;


  @override
  void initState() {
    super.initState();
    tabs =  [
    Container(
      color: Colors.white,
      child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'First tab:',
                ),
              ],
            ),
          ),
    ),

      Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Second tab:',
              ),
            ],
          ),
        ),
      ),

      Container(
        color: Colors.orange[50],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 100,
                child: IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/item');
                    }, 
                    icon: Hero(
                  tag: 'Kitten',
                  child: Image.network('https://static3.depositphotos.com/1000958/117/i/600/depositphotos_1178129-stock-photo-kitten.jpg'),),
                    iconSize: 100,
                    ),
              ),
              const Text('Press the image')
            ],
          ),
        ),
      ),

      ];
    controller = TabController(
      vsync: this, length: tabs.length
    );
    controller.addListener(() {
      setState(() {
        crntIndex = controller.index;
      });
    });
    
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle
                ),
                child: 
                const Text('D', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30),)
                ,
              ),
              const Text('Dima Tsymbaliuk',
              style: TextStyle(fontSize: 20),),

              Container(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('My Profile'),
                          Icon(
                            Icons.person_outline_outlined,
                          ),
                        ],
                      ),
                      ),
                      
                      TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Messages'),
                          Icon(
                            Icons.email_outlined,
                          ),
                        ],
                      ),
                      ),

                      TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Settings'),
                          Icon(
                            Icons.settings_outlined,
                          ),
                        ],
                      ),
                      ),

                      TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Logout'),
                          Icon(
                            Icons.logout_outlined,
                          ),
                        ],
                      ),
                      )
                  ],
                  ),
              )

            ],
            ),
        ),),
      body: TabBarView(
        controller: controller,
        children: tabs,
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          launch("tel://+380685945808");
        },
        tooltip: 'Call',
        child: const Icon(Icons.phone),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: crntIndex,
        onTap: (int i) {
          setState(() {
            crntIndex = i;
            controller.animateTo(crntIndex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections),
            label: 'Library',
          ),
        ],
        ),
    );
  }
}


class SecondPage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitten Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Expanded(
              child: Hero(child: Image.network('https://static3.depositphotos.com/1000958/117/i/600/depositphotos_1178129-stock-photo-kitten.jpg'), tag: 'Kitten',),
              )
          ],),
          const Text('This is bigger kitten')
        ],
      ),
    );
  }
}
