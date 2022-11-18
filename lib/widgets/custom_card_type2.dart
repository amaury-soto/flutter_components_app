import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? title;

  const CustomCardType2({Key? key, required this.imageUrl, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(title!=null)
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(title ?? 'No title'),
          )
        ],
      ),
    );
  }
}

//https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stan-lee-wandavision-cameo-tributo-homenaje-1614077568.jpg
//'https://ychef.files.bbci.co.uk/1600x900/p01wvg0v.webp'