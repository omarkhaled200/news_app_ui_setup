import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCardColoum extends StatelessWidget {
  const CategoryCardColoum({super.key,required this.cateColoum});
final CategoryModel cateColoum;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:300,
        width:double.infinity,
        child: Column(
          children: [
            Image.asset(cateColoum.image,fit: BoxFit.fill,width: double.infinity,height: 200,),
            Text(cateColoum.text,style: TextStyle(fontSize: 18,),)
          ],
        ),
      ),
    );
  }
}
