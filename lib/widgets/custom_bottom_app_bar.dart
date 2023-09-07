import 'package:article_reader_app/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.img216242homeicon,
        activeIcon: ImageConstant.img216242homeicon,
        type: BottomBarEnum.homeicon,
        isPng: true,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.img3643770favorit,
      activeIcon: ImageConstant.img3643770favorit,
      type: BottomBarEnum.favorit,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.img1814118graphn,
      activeIcon: ImageConstant.img1814118graphn,
      type: BottomBarEnum.graphn,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.img352555bookslibrarymyicon,
      activeIcon: ImageConstant.img352555bookslibrarymyicon,
      type: BottomBarEnum.bookslibrarymyicon,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: appTheme.teal100,
      child: SizedBox(
        height: 78.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widgetonChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? CustomImageView(
                        svgPath: bottomMenuList[index].isPng == true
                            ? null
                            : bottomMenuList[index].activeIcon,
                        imagePath: bottomMenuList[index].isPng == true
                            ? bottomMenuList[index].activeIcon
                            : null,
                        height: 61.v,
                        width: 70.h,
                      )
                    : CustomImageView(
                        svgPath: bottomMenuList[index].isPng == true
                            ? null
                            : bottomMenuList[index].icon,
                        imagePath: bottomMenuList[index].isPng == true
                            ? bottomMenuList[index].icon
                            : null,
                        height: 53.v,
                        width: 57.h,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  homeicon,
  favorit,
  graphn,
  bookslibrarymyicon,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isPng = false,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isPng;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
