import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/news_tile_model.dart';

class new_tile extends StatelessWidget {
  const new_tile({
    super.key,
    required this.newstile
  });
  final NewsTileModel newstile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:18 ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              newstile.image??"",
              height: 300,
              fit: BoxFit.fill,
              width: double.infinity,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Image.asset(
            'assets/general.jpeg', // Local asset
            height: 300,
            fit: BoxFit.fill,
            width: double.infinity,
          );
        },
            ),
          ),
          Text(
            newstile.texttitle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          Text(
          newstile.textsubtitle??"",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
