import 'package:clean_arch_start2/core/get_it.dart';
import 'package:flutter/material.dart';

import '../controllers/product_controller.dart';
import 'product_by_id_page.dart';

// ignore: must_be_immutable
class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  ProductController controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Center(
          child: Text('Lista de produtos'),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.getProductById(controller.products[index].id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductByIdPage(),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.products[index].category,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
