import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 25.0,
        height: 25.0,
        child: GetPlatform.isIOS
            ? Theme(
                data: ThemeData(
                  cupertinoOverrideTheme: CupertinoThemeData(
                    brightness: Get.isPlatformDarkMode
                        ? Brightness.light
                        : Brightness.dark,
                  ),
                ),
                child: CupertinoActivityIndicator(
                  radius: 14.0,
                ),
              )
            : Center(
              child: CircularProgressIndicator(
                  color: color,
                  strokeWidth: 2.0,
                ),
            ),
      ),
    );
  }
}
