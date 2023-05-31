import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/main_page_view.dart';

class MainPageController extends State<MainPageView> implements MvcController {
  static late MainPageController instance;
  late MainPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
