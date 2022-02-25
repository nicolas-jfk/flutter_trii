import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetsPopUps extends StatefulWidget {
  IconData _icon;
  String _text;

  WidgetsPopUps(
    this._icon,
    this._text,
  );
  @override
  _WidgetsPopUps createState() => _WidgetsPopUps(
        _icon,
        _text,
      );
}

class _WidgetsPopUps extends State {
  IconData _icon;
  String _text;

  _WidgetsPopUps(
    this._icon,
    this._text,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Center(
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 230, 230)
                            .withOpacity(0.6),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16))),
                    alignment: Alignment.center,
                    width: 530.w,
                    height: 650.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _icon,
                          color: const Color.fromARGB(255, 121, 121, 119),
                          size: 300.sp,
                        ),
                        Text(
                          _text,
                          style: TextStyle(
                              color: const Color.fromARGB(255, 121, 121, 119),
                              fontSize: 45.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
