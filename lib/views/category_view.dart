import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/New_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.catagory});
  final String catagory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
            slivers: [
               Newlistviewbuilder(category:catagory,),
            ],
          ),
    );
  }
}