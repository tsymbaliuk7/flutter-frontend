import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/models/theme_model.dart';

class GreyButton extends StatefulWidget{
  final String text;

  const GreyButton({Key? key, required this.text}) : super(key: key);

  
  @override
  State<StatefulWidget> createState() => _GreyButtonState();
  
}


class _GreyButtonState extends State<GreyButton>{
  
  bool _isPressed = false;

  toggleStyle(){
    setState(() {
      _isPressed = !_isPressed;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleStyle,
      child: Container(
            decoration: BoxDecoration(
            color: !Provider.of<ThemeModel>(context, listen: false).isDark ? Colors.grey[_isPressed ? 700 : 200] : Colors.grey[_isPressed ? 200 : 700],
            borderRadius: BorderRadius.circular(20),
            border: !_isPressed ? Border.all(color: Colors.grey[300] ?? Colors.grey, width: 1, style: BorderStyle.solid) : null
            ),
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text(
                  widget.text,
                  style: !Provider.of<ThemeModel>(context, listen: false).isDark ? TextStyle(color: _isPressed ? Colors.white : Colors.black) : TextStyle(color: _isPressed ? Colors.black : Colors.white),
                )
                        
          ],
        ),
      ),
    );
  }

}