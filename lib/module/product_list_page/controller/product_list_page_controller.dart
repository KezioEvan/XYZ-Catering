import 'package:flutter/material.dart';
import 'package:hyper_ui/service/product_service.dart/product_service.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_list_page_view.dart';

class ProductListPageController extends State<ProductListPageView>
    implements MvcController {
  static late ProductListPageController instance;
  late ProductListPageView view;

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

  String search = "";
  updateSearch(String query) {
    search = query;
    setState(() {});
  }
}
