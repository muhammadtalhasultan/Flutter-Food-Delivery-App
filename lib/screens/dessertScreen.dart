import 'package:flutter/material.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/utils/helper.dart';
import 'package:monkey_app_demo/widgets/customNavBar.dart';
import 'package:monkey_app_demo/widgets/searchBar.dart';

class DessertScreen extends StatelessWidget {
  static const routeName = '/dessertScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: AppColor.primary,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Desserts",
                                style: Helper.getTheme(context).headline5,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          Helper.getAssetName("cart.png", "virtual"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SearchBar(
                    title: "Search Food",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("apple_pie.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "French Apple Pie",
                    shop: "Minute by tuk tuk",
                    rating: "4.9",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("dessert2.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Dark Chocolate Cake",
                    shop: "Cakes by Tella",
                    rating: "4.7",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("dessert4.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Street Shake",
                    shop: "Cafe Racer",
                    rating: "4.9",
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DessertCard(
                    image: Image.asset(
                      Helper.getAssetName("dessert5.jpg", "real"),
                      fit: BoxFit.cover,
                    ),
                    name: "Fudgy Chewy Brownies",
                    shop: "Minute by tuk tuk",
                    rating: "4.9",
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
}

class DessertCard extends StatelessWidget {
  const DessertCard({
    Key key,
    @required String name,
    @required String rating,
    @required String shop,
    @required Image image,
  })  : _name = name,
        _rating = rating,
        _shop = shop,
        _image = image,
        super(key: key);

  final String _name;
  final String _rating;
  final String _shop;
  final Image _image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: _image,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 70,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _name,
                    style: Helper.getTheme(context).headline4.copyWith(
                          color: Colors.white,
                        ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        Helper.getAssetName("star_filled.png", "virtual"),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        _rating,
                        style: TextStyle(color: AppColor.orange),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        _shop,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          ".",
                          style: TextStyle(color: AppColor.orange),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Desserts",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
