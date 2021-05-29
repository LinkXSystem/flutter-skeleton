import 'package:flutter/material.dart';
import 'package:planter/contants/style.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({Key key, this.title, this.press})
      : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: K_DEFAULT_PADDING),
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: K_PRIMARY_COLOR,
              onPressed: press,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: K_DEFAULT_PADDING / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(right: K_DEFAULT_PADDING / 4),
                height: 7,
                color: K_PRIMARY_COLOR.withOpacity(0.2),
              )),
        ],
      ),
    );
  }
}
