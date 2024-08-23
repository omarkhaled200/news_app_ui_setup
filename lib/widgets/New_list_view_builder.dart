import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/news_tile_model.dart';
import 'package:news_app_ui_setup/services/news_services.dart';

import 'package:news_app_ui_setup/widgets/newslistview.dart';

class Newlistviewbuilder extends StatefulWidget {
  final String category;
  const Newlistviewbuilder({super.key,required this.category});
  @override
  State<Newlistviewbuilder> createState() => _NewlistviewbuilderState();
}

class _NewlistviewbuilderState extends State<Newlistviewbuilder> {
  @override
  var future;
  void initState() {
    super.initState();
    future = NewsServices().getnews(category: widget.category
     );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsTileModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Newslistview(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Oops there was an error , try later'),
            );
          } else {
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
