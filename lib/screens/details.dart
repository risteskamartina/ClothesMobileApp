import 'package:flutter/material.dart';
import 'package:clothes_app/models/clothes_model.dart';

import '../widgets/details_back_button.dart';
import '../widgets/details_data.dart';
import '../widgets/details_image.dart';
import '../widgets/details_title.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Clothes;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "211088",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent[100],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            DetailImage(image: arguments.image),
            DetailTitle(id: arguments.id, name: arguments.name),
            DetailData(id: arguments.id, description: arguments.description,
              price: arguments.price,),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}