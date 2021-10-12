import 'package:flutter/material.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        body: ListView(
          children: [
            Container(
              
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: 100,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          child: Image(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png'),
                            height: 20,
                            width: 90,
                          )
                        ),
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Icon(
                                Icons.cast_outlined,
                                size: 25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Icon(
                                Icons.notifications_outlined,
                                size: 25,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              child: const Icon(
                                Icons.search_outlined,
                                size: 25,
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(30)
                                ),
                              child: const Text(
                                'D',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                ),
                            )
                          ],
                          )
                        
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 30.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colors.grey[200]),
                                margin: const EdgeInsets.only(left: 20),
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child: const Icon(
                                        Icons.explore_outlined,
                                      ),
                                    ),
                      
                                    const Text(
                                      'Навигатор',
                                      style: TextStyle(fontWeight: FontWeight.w500),
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                child: const VerticalDivider(color: Colors.grey)
                                ),
                      
                                Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[700],
                                  borderRadius: BorderRadius.circular(20)
                                  ),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                margin: const EdgeInsets.only(right: 8),
                                child: Row(
                                  children: const [
                      
                                     Text(
                                      'Все',
                                      style: TextStyle(color: Colors.white),
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[300] ?? Colors.grey, width: 1, style: BorderStyle.solid)
                                  ),
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const[
                                     Text(
                                      'Футбол',
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[300] ?? Colors.grey, width: 1, style: BorderStyle.solid)
                                  ),
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const[
                                     Text(
                                      'Скетч-шоу',
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[300] ?? Colors.grey, width: 1, style: BorderStyle.solid)
                                  ),
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const[

                                     Text(
                                      'Рэп',
                                      )
                      
                                  ],
                                  ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.grey[300] ?? Colors.grey, width: 1, style: BorderStyle.solid)
                                  ),
                                margin: const EdgeInsets.only(right: 8),
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: const [
                                    Text(
                                      'Мультфильмы',
                                      )
                      
                                  ],
                                  ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                  ],
              )
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            ),


            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(children: [
                        Expanded(child: 
                        Stack(children: [
                          Image.network('http://i3.ytimg.com/vi/YPRaA6KhyXc/maxresdefault.jpg'),
                          Positioned(child: 
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                              child: const Text(
                                '10:20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                                ),
                                ),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          bottom: 10,
                          right: 10,
                          )
                        ])
                        ),
                        
                    ],),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.blue
                          ),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: const Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: Text('Lorem ipsum · 99 млн просмотров · 4 года назад',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 12
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          width: 10,
                          margin: const EdgeInsets.only(left: 10),
                          child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 20,
                                    color: Colors.grey[500],
                                  ),
                        )
                      ],
                    ),
                  )
                 
                ],
              )
            )

          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.home,
                          size: 25,
                        ),

                        Text(
                          'Главная',
                          style: TextStyle(
                            fontSize: 10
                          ),
                          )
                        ],
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.slideshow_outlined,
                          size: 25,
                        ),

                        Text(
                          'Shorts',
                          style: TextStyle(
                            fontSize: 10
                          ),
                          )
                        ],
                  ),
                ),
                Center(
                  child: Column(
                      children: const [
                        Icon(
                          Icons.add_circle_outline_outlined,
                          size: 40,
                        ),
                        ],
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: Column(
                      children: const [
                        Icon(
                          Icons.subscriptions_outlined,
                          size: 25,
                        ),

                        Text(
                          'Подписки',
                          style: TextStyle(
                            fontSize: 10
                          ),
                          )
                        ],
                  ),
                ),
                Column(
                  
                    children: const [
                      Icon(
                        
                        Icons.video_library_outlined,
                        size: 25,
                      ),

                      Text(
                        'Библиотека',
                        style: TextStyle(
                          fontSize: 10
                        ),
                        )
                      ],
                ),
              ],
            ),
            ),
      ),
      ),
    );
  }
}