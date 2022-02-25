import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_trii/assets/widgetpupups.dart';
import 'package:flutter_trii/assets/widgetstext.dart';

import '../main.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State with TickerProviderStateMixin {
  final _numeroDeCelular = TextEditingController();

  bool _isObscure = true;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 60),
    vsync: this,
  )..repeat(reverse: false);

// Crea la anmacion de las dos esferas moviendose
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(827, 1787),
        builder: () => GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Scaffold(
                resizeToAvoidBottomInset: true,
                backgroundColor: Colors.white,
                body: ListView(children: [
                  Stack(
                    children: [
                      RotationTransition(
                          turns: _animation,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 750.h,
                                        width: 750.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 253, 198, 112),
                                                  Color.fromARGB(
                                                      255, 23, 207, 191),
                                                  Color.fromARGB(
                                                      255, 26, 118, 200),
                                                  Color.fromARGB(
                                                      255, 140, 159, 251),
                                                ])),
                                      ),
                                      BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: Container(
                                          color: Colors.white.withOpacity(0.4),
                                        ),
                                      ),
                                      Container(
                                        color: const Color.fromARGB(
                                            150, 255, 255, 255),
                                        height: 900.h,
                                        width: 900.w,
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 100.h,
                                  ),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 600.h,
                                        width: 600.w,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 253, 198, 112),
                                                  Color.fromARGB(
                                                      255, 23, 207, 191),
                                                  Color.fromARGB(
                                                      255, 26, 118, 200),
                                                  Color.fromARGB(
                                                      255, 140, 159, 251),
                                                ])),
                                      ),
                                      BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10),
                                        child: Container(
                                          color: Colors.white.withOpacity(0.4),
                                        ),
                                      ),
                                      Container(
                                        color: const Color.fromARGB(
                                            150, 255, 255, 255),
                                        height: 700.h,
                                        width: 700.w,
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 40.h,
                                  top: 200.h,
                                ),
                                child: Image.asset(
                                  'lib/assets/trii.png',
                                  width: 150.w,
                                  height: 150.h,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 90.w),
                                child: Widget_Title("Ingresa", 'a tu cuenta ',
                                    const Color.fromARGB(255, 37, 38, 40)),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 50.h))
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 140.h,
                                padding:
                                    EdgeInsets.only(left: 50.w, right: 50.w),
                                child: TextField(
                                  controller: _numeroDeCelular,
                                  keyboardType: TextInputType.number,
                                  autofocus: false,
                                  style: TextStyle(
                                      fontSize: 30.0.sp,
                                      color: const Color.fromARGB(
                                          255, 36, 32, 33)),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color.fromARGB(
                                        255, 246, 246, 246),
                                    focusColor:
                                        const Color.fromARGB(255, 36, 32, 33),
                                    hintText: 'Número de celular de 10 digitos',
                                    contentPadding: EdgeInsets.all(40.0.w),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 246, 246)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 246, 246)),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 30.h)),
                              Container(
                                  padding:
                                      EdgeInsets.only(left: 50.w, right: 50.w),
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        overlayColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.transparent),
                                        shadowColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.transparent),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        )),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                const Color.fromARGB(
                                                    255, 37, 38, 40)),
                                      ),
                                      child: SizedBox(
                                        height: 110.h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Continuar',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 35.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                      onPressed: () {
                                        if (_numeroDeCelular.text.length !=
                                            10) {
                                          showDialog(
                                              barrierColor: Colors.transparent,
                                              context: context,
                                              builder: (BuildContext
                                                  builderContext) {
                                                Future.delayed(
                                                    const Duration(
                                                        milliseconds: 2500),
                                                    () {
                                                  Navigator.of(context).pop();
                                                });
                                                return WidgetsPopUps(
                                                  Icons.close_rounded,
                                                  'Número no valido',
                                                );
                                              });
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    MyHomePage()),
                                          );
                                        }
                                      }))
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ]))));
  }
}
