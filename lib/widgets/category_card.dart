import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.cate});
  final CategoryModel cate;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryView(catagory:cate.text,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(cate.image),
                  fit: BoxFit.fill,
                )),
            child: Center(
              child: Text(
                cate.text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
