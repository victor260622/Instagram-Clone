import "package:flutter/material.dart";
import 'package:instagram_flutter/utils/dimensions.dart';

class ResponsiveLayouts extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayouts(
      {Key? key,
      required this.webScreenLayout,
      required this.mobileScreenLayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScrennSize) {
        return webScreenLayout;
      }
      return mobileScreenLayout;
    });
  }
}
