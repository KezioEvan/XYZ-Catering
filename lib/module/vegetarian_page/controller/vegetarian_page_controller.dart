import 'package:flutter/material.dart';
import 'package:hyper_ui/service/product_service.dart/product_service.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/vegetarian_page_view.dart';

class VegetarianPageController extends State<VegetarianPageView>
    implements MvcController {
  static late VegetarianPageController instance;
  late VegetarianPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doDelete(String id) async {
    ProductService().delete(id);
  }
}
