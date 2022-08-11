import 'package:flutter/material.dart';

push(BuildContext context, String route) {
  //Navigator.of(context).push(MaterialPageRoute(builder: ((context) => widget)));
  Navigator.of(context).pushNamed(route);
}

pop(BuildContext context) {
  Navigator.pop(context);
}

pushReplacement(BuildContext context, String route) {
  // Navigator.pushReplacement(
  //     context, MaterialPageRoute(builder: ((context) => widget)));
  Navigator.pushReplacementNamed(
      context, route);
}