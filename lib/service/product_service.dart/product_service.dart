import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  create({
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").add(
      {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      },
    );
  }

  //Kalo update membutuhkan ID
  update({
    required String id,
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").doc(id).update(
      {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      },
    );
  }

  delete(String id) async {
    await FirebaseFirestore.instance.collection("products").doc(id).delete();
  }
}

class OrderService {
  create({
    required List item,
    required double total,
    required String status,
    required String paymentMethod,
  }) async {
    await FirebaseFirestore.instance.collection("products").add(
      {
        "created_at": Timestamp.now(),
        "item": item,
        "total": total,
        "status": status,
        "payment_method": paymentMethod,
      },
    );
  }
}
