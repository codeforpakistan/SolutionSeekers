import 'package:faryaad/ui/widgets/text_field_container.dart';
import 'package:faryaad/utils/global.dart';
import 'package:flutter/material.dart';

class CircularInputWidget extends StatefulWidget {
  final String hintText;
  final Color hintTextColor;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const CircularInputWidget({
    Key key,
    this.hintText,
    this.icon,
    this.hintTextColor = Colors.grey,
    this.onChanged,
  }) : super(key: key);

  @override
  _CircularInputWidgetState createState() => _CircularInputWidgetState();
}

class _CircularInputWidgetState extends State<CircularInputWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        cursorColor: circularButtonColor,
        decoration: InputDecoration(
          icon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: circularButtonColor,
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: widget.hintTextColor),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
