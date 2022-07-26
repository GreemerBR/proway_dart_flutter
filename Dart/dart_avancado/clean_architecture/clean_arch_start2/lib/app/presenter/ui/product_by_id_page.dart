import 'package:clean_arch_start2/app/presenter/controllers/product_controller.dart';
import 'package:clean_arch_start2/core/get_it.dart';
import 'package:flutter/material.dart';

class ProductByIdPage extends StatelessWidget {
  ProductByIdPage({Key? key}) : super(key: key);

  final controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Center(
          child: Text('Detalhes do produtos'),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 8,
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.product.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Text('Marca: '),
                      Text(
                        controller.product.brand,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('R\$ '),
                      Text(
                        controller.product.price.toStringAsFixed(2),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Quantidade em estoque: '),
                      Text(
                        controller.product.quantity.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
