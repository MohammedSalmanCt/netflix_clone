import 'package:flutter/material.dart';
import 'package:netflix_clone/Presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_clone/Presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_clone/Presentation/home/screen_home.dart';
import 'package:netflix_clone/Presentation/main_page/widgets/botto_nav.dart';
import 'package:netflix_clone/Presentation/nw_and_hot/screen_hotandnew.dart';
import 'package:netflix_clone/Presentation/search/screen_search.dart';
import 'package:netflix_clone/Presentation/widgets/app_bar_widgetgs.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _pages=[
    ScreenHome(),
    ScreenHotAndNew(),
    ScreenFastAndLaugh(),
    ScreenSearch(),
    ScreenDownload(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ValueListenableBuilder(
            valueListenable: indexChangedNotifier,
            builder: (context,int index, child) {
              return _pages[index];
            }
            ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
