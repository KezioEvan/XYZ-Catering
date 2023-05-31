import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service.dart/product_service.dart';

class NonVegetarianPageController extends State<NonVegetarianPageView>
    implements MvcController {
  static late NonVegetarianPageController instance;
  late NonVegetarianPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List productList = [];

  getQty(item) {
    var index = productList.indexWhere((i) => i["id"] == item["id"]);
    if (index > -1) {
      productList[index]["qty"] ??= 0;
      return productList[index]["qty"];
    }
    return 0;
  }

  increseQty(item) {
    var index = productList.indexWhere((i) => i["id"] == item["id"]);
    addProductIfNotFound(item);

    if (index > -1) {
      productList[index]["qty"] ??= 0;
      productList[index]["qty"]++;
    }
    setState(() {});
  }

  decreaseQty(item) {
    addProductIfNotFound(item);
    var index = productList.indexWhere((i) => i["id"] == item["id"]);
    if (index > -1) {
      productList[index]["qty"] ??= 0;
      productList[index]["qty"]--;
    }
    setState(() {});
  }

  addProductIfNotFound(item) {
    var index = productList.indexWhere((i) => i["id"] == item["id"]);
    if (index == -1) {
      item["qty"] = 0;
      productList.add(item);
    }
  }

  double get total {
    double itemTotal = 0;
    for (var item in productList) {
      itemTotal = (item["price"] ?? 0) * (item["qty"]);
    }
    return itemTotal;
  }

  checkout() async {
    showLoading();
    await OrderService().create(
        item: productList, total: 0, status: "Pending", paymentMethod: "Cash");
    hideLoading();
  }
}
