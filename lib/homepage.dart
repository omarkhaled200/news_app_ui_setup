import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/models/news_tile_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/New_list_view_builder.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';
import 'package:news_app_ui_setup/widgets/category_card_coloum.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';
import 'package:news_app_ui_setup/widgets/newslistview.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/general.jpeg', text: 'world'),
    CategoryModel(image: 'assets/business.jpeg', text: 'business'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'entertainment'),
    CategoryModel(image: 'assets/technology.jpeg', text: 'technology'),
    CategoryModel(image: 'assets/sports.jpeg', text: 'sports'),
    CategoryModel(image: 'assets/health.avif', text: 'health'),
    CategoryModel(image: 'assets/science.avif', text: 'science'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'News',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:
                        categories.map((e) => CategoryCard(cate: e)).toList(),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 18,
                ),
              ),
              Newlistviewbuilder(category: 'top',)
            ],
          ),
        ));
  }
}


