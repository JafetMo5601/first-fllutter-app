import 'package:first_flutter_app/src/utils/icons_string_util.dart';
import 'package:first_flutter_app/src/utils/utils.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({
    Key? key,
    required bool showIcon,
    required double height,
    required IconData icon,
  })  : _showIcon = showIcon,
        _height = height,
        _icon = icon,
        super(key: key);

  final bool _showIcon;
  final double _height;
  final IconData _icon;

  Widget roundedIcon() {
    return Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60),
            ),
            border: Border.all(width: 5, color: Colors.white),
          ),
          child: Icon(
            _icon,
            color: Colors.white,
            size: 40.0,
          ),
        ),
      ),
    );
  }

  Widget floatingButton(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.end
          children: [
            Container(
              height: getContextPercentaje(context, 0.25),
              width: getContextPercentaje(context, 0.25),
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: Icon(
                  Icons.person_add_alt_1_rounded,
                  size: getContextPercentaje(context, 0.20),
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
                onPressed: () {},
              ),
            )
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _showIcon ? roundedIcon() : floatingButton(context);
  }
}
