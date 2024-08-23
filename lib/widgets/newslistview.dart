import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/news_tile_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class Newslistview extends StatelessWidget {
  final List<NewsTileModel> articles ;
  Newslistview({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return new_tile(
        newstile: articles[index],
      );
    }));
  }
}
