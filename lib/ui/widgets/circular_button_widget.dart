import 'package:faryaad/utils/global.dart';
import 'package:flutter/material.dart';

class CircularButtonWidget extends StatefulWidget {
  final Widget leadingWidget;
  final String text;
  final Function press;
  final Color color, textColor;
  const CircularButtonWidget({
    Key key,
    this.leadingWidget,
    this.text,
    this.press,
    this.color = circularButtonColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  _CircularButtonWidgetState createState() => _CircularButtonWidgetState();
}

class _CircularButtonWidgetState extends State<CircularButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.all(Radius.circular(30)),
        border: widget.color == Colors.white
            ? Border.all(color: Colors.black12)
            : null,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.leadingWidget != null ? widget.leadingWidget : Container(),
            widget.leadingWidget != null ? widthBetweenWidgets() : Container(),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: widget.color,
              onPressed: widget.press,
              child: Text(
                widget.text,
                style: TextStyle(color: widget.textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
