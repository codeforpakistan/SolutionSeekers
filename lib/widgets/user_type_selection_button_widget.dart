import 'package:faryaad/utils/global.dart';
import 'package:flutter/material.dart';

class UserTypeSelectionButtonWidget extends StatefulWidget {
  final String imagePath;
  final String upperText;
  final String lowerHighlightedText;
  final bool isSelected;

  UserTypeSelectionButtonWidget(
      {this.imagePath,
      this.upperText,
      this.lowerHighlightedText,
      this.isSelected = false});
  @override
  _UserTypeSelectionButtonWidgetState createState() =>
      _UserTypeSelectionButtonWidgetState();
}

class _UserTypeSelectionButtonWidgetState
    extends State<UserTypeSelectionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: widget.isSelected
            ? ThemeConstants.background.withOpacity(0.8)
            : ThemeConstants.background.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(child: Image.asset(widget.imagePath)),
          Flexible(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                widget.upperText,
                style: TextStyle(
                    color: widget.isSelected
                        ? Colors.white
                        : ThemeConstants.background,
                    fontSize: 16),
              ),
              Text(
                widget.lowerHighlightedText,
                style: TextStyle(
                    color: widget.isSelected
                        ? Colors.white
                        : ThemeConstants.background,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
