import 'package:first_flutter_app/src/utils/utils.dart';
import 'package:first_flutter_app/src/widget/utils.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  final double _height;
  final bool _showIcon;
  final IconData _icon;

  const HeaderWidget(this._height, this._showIcon, this._icon, {Key? key})
      : super(key: key);

  @override
  _HeaderWidgetState createState() =>
      _HeaderWidgetState(_height, _showIcon, _icon);
}

class _HeaderWidgetState extends State<HeaderWidget> {
  double _height;
  bool _showIcon;
  IconData _icon;

  _HeaderWidgetState(this._height, this._showIcon, this._icon);

  Widget generatePurpleBox() {
    return Container(
      width: double.infinity,
      height: _height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
          color: Color(0xff7972e6)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          generatePurpleBox(),
          IconContainer(showIcon: _showIcon, height: _height, icon: _icon),
        ],
      ),
    );
  }
}
