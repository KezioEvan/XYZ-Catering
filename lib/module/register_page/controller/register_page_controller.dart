import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/register_page_view.dart';

class RegisterPageController extends State<RegisterPageView> implements MvcController {
  static late RegisterPageController instance;
  late RegisterPageView view;

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