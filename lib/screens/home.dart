import 'package:flutter/material.dart';

import '../models/clothes_model.dart';
import '../widgets/clothes_grid.dart';

final List<Clothes> clothes = [
  Clothes(
    id: 1,
    name: "Elegant Dress",
    image: 'https://m.media-amazon.com/images/I/71Ojjz38ikL._AC_UY1000_.jpg',
    description: 'An elegant evening dress perfect for formal occasions.',
    price: 149.99,
  ),
  Clothes(
    id: 2,
    name: "Casual Shirt",
    image: 'https://images-cdn.ubuy.co.in/6621c81885d4910d0a49cd4b-coofandy-men-39-s-casual-shirts.jpg',
    description: 'A comfortable casual shirt for everyday wear.',
    price: 49.99,
  ),
  Clothes(
    id: 3,
    name: "Summer Hat",
    image: 'https://i.etsystatic.com/23172465/r/il/ad1a83/4708810806/il_570xN.4708810806_sqk1.jpg',
    description: 'A stylish hat to protect you from the summer sun.',
    price: 29.99,
  ),
  Clothes(
    id: 4,
    name: "Sporty Sneakers",
    image: 'https://media.karousell.com/media/photos/products/2024/8/21/adidas_samba_og_j_1724258699_0563f8d4_progressive.jpg',
    description: 'Lightweight sneakers for running or gym workouts.',
    price: 89.99,
  ),
  Clothes(
    id: 5,
    name: "Fur Coat",
    image: 'https://cesaregaspari.eu/cdn/shop/files/12293.jpg?v=1729009038',
    description: 'A warm fur coat to keep you cozy during winter.',
    price: 199.99,
  ),
  Clothes(
    id: 6,
    name: "Denim Jacket",
    image: 'https://www.alcott.eu/on/demandware.static/-/Sites-catalog-alcott-master/default/dw71151777/hi-res/GB4870UO_D001_001.jpg',
    description: 'A stylish denim jacket for all seasons.',
    price: 89.99,
  ),
  Clothes(
    id: 7,
    name: "Leather Boots",
    image: 'https://images.fashiola.com/product-list/300x450/boohoo/557843091/womens-wide-width-lug-over-the-knee-pu-boots-5.webp',
    description: 'Durable leather boots for outdoor adventures.',
    price: 129.99,
  ),
  Clothes(
    id: 8,
    name: "Striped Sweater",
    image: 'https://shop.mango.com/assets/rcs/pics/static/T6/fotos/S/67013273_56.jpg?imwidth=2048&imdensity=1&ts=1709559222991',
    description: 'A cozy striped sweater for colder days.',
    price: 69.99,
  ),
  Clothes(
    id: 9,
    name: "Sporty Leggings",
    image: 'https://squatproof.com/cdn/shop/files/9637-db7e689893569_1100x.jpg?v=1724136353',
    description: 'Comfortable leggings for workouts or casual wear.',
    price: 39.99,
  ),
];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[100],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white, size: 24),
        ),
        title: const Text(
          "211088",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.white, size: 24),
          ),
        ],
      ),
      body: ClothesGrid(clothes: clothes),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
