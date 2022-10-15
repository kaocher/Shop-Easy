import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/banner_model.dart';

class HomeBanner extends StatelessWidget {
  final List <BannerModel> data;
   const HomeBanner({Key? key,required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        // color: Colors.redAccent,
        height: size.height / 4.5,
        width: size.width,
        child: CarouselSlider(
            items: data.map((e) {
              return Builder(
                  builder: (BuildContext context){
                    return Container(
                      width: size.width,
                      // margin: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(e.image.toString()),
                          fit: BoxFit.cover
                        )
                      ),
                    );
                  });
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              autoPlayCurve: Curves.easeOutSine,
              autoPlayAnimationDuration: const Duration(seconds: 1)
            ),
        ),
      ),
    );
  }
}
