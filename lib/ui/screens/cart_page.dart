import 'package:flutter/material.dart';
import 'package:birds_sound_classification_app_final/constants.dart';
import 'package:birds_sound_classification_app_final/models/plants.dart';
import 'package:birds_sound_classification_app_final/ui/screens/widgets/plant_widget.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedToCartPlants;
  const CartPage({Key? key, required this.addedToCartPlants}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoomed Map'),
      ),
      body: PhotoViewGallery.builder(
        itemCount: 1, // Number of images (in this case, just one map image)
        builder: (context, index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(
                'assets/images/map.jpg'), // Replace with your image asset path
            minScale: PhotoViewComputedScale.contained,
            maxScale: PhotoViewComputedScale.covered * 100,
          );
        },
        scrollPhysics: BouncingScrollPhysics(),
        backgroundDecoration: BoxDecoration(
          color: Colors.black,
        ),
        pageController: PageController(),
      ),
    );
  }
}
