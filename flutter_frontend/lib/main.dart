import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
          backgroundColor: Colors.green,
        ),
        body: Container(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsetsDirectional.only(bottom: 30),
                  decoration: const BoxDecoration(
                        
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ]
                          ),
                  child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: const Text(
                            'Left',
                            style: TextStyle(
                              color: Colors.white
                            ),
                            ),
                          decoration: const BoxDecoration(
                            color: Colors.blue
                          ),
                      ),
                        Container(
                          child: const Text(
                            'Left',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                   
                    Container(
                        child: const Text(
                            'Right',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        decoration: const BoxDecoration(
                          color: Colors.blue
                        ),
                      )
                  ],
                )
                ),
               
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 500,
                          margin: const EdgeInsets.only(right: 5, bottom: 10),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                                Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.lime,

                          ),
                          
                        ),
                        Container(
                          width: 100,
                          height: 500,
                          margin: const EdgeInsets.only(right: 5, bottom: 10),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                                Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                              Text(
                                'col 1',
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.red
                                ),
                              ),
                            ],
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.lime,

                          ),
                          
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        alignment: Alignment.center,
                        child: const Text(
                            'col 2',
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          decoration: const BoxDecoration(
                        
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ]
                          ),
                          
                        ),
                    ),

                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                         Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                         Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                         Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                         Container(
                          
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 5, bottom: 20),
                          padding: const EdgeInsets.all(20),
                          child: const Text(
                            'col 3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w200
                            ),
                            ),
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                    
                  ]
                ),

                Container(
                  margin: const EdgeInsets.only(top: 40),
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.indigo,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.pets_outlined,
                              color: Colors.white,
                              size: 50,
                            ),

                            Text('Icon')

                          ],
                        ),
                      ),
                      
                    ],
                  ),
                )
                
              ],
            )
          ),
        )
      );
  }
}