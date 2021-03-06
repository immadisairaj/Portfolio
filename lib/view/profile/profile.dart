import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:js' as js;

import 'package:website/view/profile/profile_desktop.dart';
import 'package:website/view/profile/profile_mobile.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  static const String route = '/profile';

  @override
  Widget build(BuildContext context) {
    js.context.callMethod('sendNavigation', [route]);
    return ScreenTypeLayout(
      mobile: ProfileMobile(),
      desktop: ProfileDesktop(),
    );
  }
}