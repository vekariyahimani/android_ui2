import 'package:android_ui2/screen/provider/page_provider.dart';
import 'package:android_ui2/screen/view/page1.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main()
{

  runApp(
    ChangeNotifierProvider(
      create: (context) => PageProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Page1(),
        },
      ),
    )
  );
}