import 'package:flutter/material.dart';

import '../theme.dart';


class CustomBottomNavigationBar extends StatefulWidget{

  CustomBottomNavigationBar({Key? key, required this.onItemSelected}) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}
class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int selectedItem = 0;

  //for color change
  void handleItemSelected(int index){
    setState(() {
      selectedItem = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      color: Colors.transparent,
      child: SafeArea(
          top: false,
          bottom: true,
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
            padding: const EdgeInsets.only(top: 16,left: 8,right: 8,bottom: 16),
            decoration: BoxDecoration(
                color: Color.fromRGBO(200, 200, 200, 0.2),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(255, 255, 255, 0.3),
                      spreadRadius: 1,
                      blurRadius: 0.2,
                      offset: Offset(0, 0))
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _NavigationBarItem( icon: Icons.home_max, index: 0, isSelected: (selectedItem == 0), onTap:handleItemSelected,),
                _NavigationBarItem(icon: Icons.heart_broken_rounded,index: 1, isSelected: (selectedItem == 1),onTap: handleItemSelected),
                _NavigationBarItem( icon: Icons.notifications_none_outlined,index: 2, isSelected: (selectedItem == 2),onTap: handleItemSelected),
                _NavigationBarItem( icon: Icons.history,index: 3, isSelected: (selectedItem == 3),onTap: handleItemSelected),
                _NavigationBarItem( icon: Icons.person_outlined,index: 4, isSelected: (selectedItem == 4),onTap: handleItemSelected),
              ],
            ),
          )),
    );
  }
}
class _NavigationBarItem extends StatelessWidget {
  _NavigationBarItem({Key? key, required this.icon, required this.index, this.isSelected = false, required this.onTap}) : super(key: key);
  final IconData icon;
  final int index;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        onTap(index);
      },
      child: SizedBox(
        //height: 55,
        width: 60,
        child: Icon(icon, size: 20,color: isSelected ? AppColors.blue3 : AppColors.white,),
      ),
    );
  }
}