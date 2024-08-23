// import 'package:flutter/material.dart';
// import 'package:news_app_ui_setup/models/news_tile_model.dart';
// import 'package:news_app_ui_setup/services/news_services.dart';
// import 'package:news_app_ui_setup/widgets/news_tile.dart';

// class Newslistview extends StatefulWidget {
//   const Newslistview({super.key, required List<NewsTileModel> articles});

//   @override
//   State<Newslistview> createState() => _NewslistviewState();
// }

// class _NewslistviewState extends State<Newslistview> {
//   List<NewsTileModel> articles = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     Getgeneralnews();
//   }

//   Future<void> Getgeneralnews() async { 
//     articles = await NewsServices().getGeneralnews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(childCount: articles.length,
//                 (context, index) {
//             return new_tile(
//               newstile: articles[index],
//             );
//           }));
//   }
// }
