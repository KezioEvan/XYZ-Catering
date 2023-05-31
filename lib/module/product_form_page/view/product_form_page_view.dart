// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

class ProductFormPageView extends StatefulWidget {
  final Map? item;
  const ProductFormPageView({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, ProductFormPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text("Product Form"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QImagePicker(
                        label: "Photo",
                        validator: Validator.required,
                        value: controller.photo,
                        onChanged: (value) {
                          controller.photo = value;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      QTextField(
                        label: "Name  (Max 20 character!)",
                        validator: Validator.required,
                        value: controller.productName,
                        onChanged: (value) {
                          controller.productName = value;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      QNumberField(
                        label: "Price",
                        validator: Validator.required,
                        value: controller.price?.toString(),
                        onChanged: (value) {
                          controller.price = double.tryParse(value) ?? 0;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      QDropdownField(
                        label: "Category",
                        validator: Validator.required,
                        value: controller.category,
                        items: const [
                          {
                            "label": "Vegetarian",
                            "value": "Vegetarian",
                          },
                          {
                            "label": "Non Vegetarian",
                            "value": "Non Vegetarian",
                          },
                        ],
                        onChanged: (value, label) {
                          controller.category = value;
                        },
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      QMemoField(
                        label: "Description (Include contact person)",
                        validator: Validator.required,
                        value: controller.description,
                        onChanged: (value) {
                          controller.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 72,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: greenEmerland,
          ),
          onPressed: () => controller.doSave(),
          child: const Text("Save"),
        ),
      ),
    );
  }

  @override
  State<ProductFormPageView> createState() => ProductFormPageController();
}
