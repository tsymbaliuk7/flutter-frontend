import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';
import 'package:flutter_svg/flutter_svg.dart';


class TopNavbar extends StatelessWidget {


  const TopNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<ThemeModel>(context, listen: false);
    return Container(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    margin: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: !model.isDark ? const Image(
                            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/YouTube_Logo_2017.svg/2560px-YouTube_Logo_2017.svg.png'),
                            height: 20,
                            width: 90,
                          ) : SvgPicture.network('https://upload.wikimedia.org/wikipedia/commons/6/68/Light_logo_of_YouTube_%282015-2017%29.svg', height: 25, width: 100,)
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