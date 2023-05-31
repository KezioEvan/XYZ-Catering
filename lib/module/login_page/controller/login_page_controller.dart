import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/login_page_view.dart';

class LoginPageController extends State<LoginPageView> implements MvcController {
  static late LoginPageController instance;
  late LoginPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}