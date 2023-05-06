import 'package:auction/pages/history_page.dart';
import 'package:auction/screens/categories.dart';
import 'package:auction/theme.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'widgets/my_widgets.dart';

class AppStart extends StatelessWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier('');

  final pages = [MainPage(), LikePage(), NotificationPage(), HistoryPage(), ProfilPage()];
  final pageTitles = ['', 'Liked', 'Notifications','History', 'Profil'];

  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.blue1,
            AppColors.blue2,
            AppColors.blue3,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        )),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leadingWidth: 54,
            title: ValueListenableBuilder(
              valueListenable: title,
              builder: (BuildContext context, String value, _) {
                return Align(
                  alignment: Alignment.center,
                  child: Text(value),
                );
              },
            ),
          ),
          body: ValueListenableBuilder(
            valueListenable: pageIndex,
            builder: (BuildContext context, int value, _) {
              return pages[value];
            },
          ),
          bottomNavigationBar: CustomBottomNavigationBar(
            onItemSelected: _onNavigationItemSelected,
          ),
        ),
      ),
    );
  }
}
