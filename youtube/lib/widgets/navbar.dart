import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TopNavbar extends StatelessWidget {


  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }

}