import 'package:flutter/material.dart';

/// Enums can store data and have constructors!
enum Product {
  dart(
    title: "Dart",
    description: "A programming language optimized for building UI.",
    image: "https://th.bing.com/th/id/OIP.bdMnutzX-4G2TTLwCoG7PAHaEV?w=290&h=180&c=7&r=0&o=7&cb=ucfimg2&dpr=1.5&pid=1.7&rm=3&ucfimg=1",
  ),
  flutter(
    title: "Flutter",
    description: "An open-source framework to build beautiful apps.",
    image: "data:image/webp;base64,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",
  ),
  firebase(
    title: "Firebase",
    description: "A platform to build and manage scalable apps.",
    image: "data:image/webp;base64,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",
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });
}

/// ✅ PART 3 — ProductCard widget
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            product.image,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 10),
          Text(
            product.title,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            product.description,
            style: TextStyle(fontSize: 18, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: "Week5",
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text("Products"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              ProductCard(product: Product.dart),
              ProductCard(product: Product.flutter),
              ProductCard(product: Product.firebase),
            ],
          ),
        ),
      ),
    ),
  );
}
