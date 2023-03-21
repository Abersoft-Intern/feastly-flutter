import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/navigation/route_name.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  categoriesPlace(index) {
    final theme = Theme.of(context);
  return SizedBox(
    height: 73,
    width: 134,
    child: Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 0.3, color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("assets/images/category_bg.png"),
            fit: BoxFit.cover,
          ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  _Categories[index]['name']!,
                  style: theme.extension<CustomTextTheme>()!.body16Bold!,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
final _Categories = {
{
  'name': 'Breakfast',
},
{
  'name': 'Chicken',
},
{
  'name': 'Breakfast',
},
{
  'name': 'Chicken',
},

}.toList();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color bgColor = theme.primaryColor;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            gapH32,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'My lists'.hardcoded,
                      style: theme.extension<CustomTextTheme>()!.h3!,
                    ),
                    gapW20,
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                      onPressed: () {},
                      child: Text('Add new +'.hardcoded,
                        style: theme
                            .extension<CustomTextTheme>()!
                            .body16Regular!
                            .copyWith(color: theme.primaryColor)),
                        ),
                    ), 
                  ],
                ),
            gapH24,
            gapW20,
          Container(
            child: Expanded(
              child: ListView.separated(
                physics: PageScrollPhysics(),
                separatorBuilder: (context, index) => 
                Divider(
                indent: 3,
                ),
                scrollDirection: Axis.horizontal, 
                itemCount: _Categories.length,
                itemBuilder: (context, index) => categoriesPlace(index),
              ),
            ),
          ),
        
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: SizedBox(
              height: 382,
              child: Stack(
                children: [
                  Positioned(
                  left: 0,
                  bottom: 50,
                  child: Image.asset(
                    'assets/images/Cake.png',
                  ),
                  ),
                  Positioned(
                  right: 0,
                  top: 20,
                  child: Image.asset(
                    'assets/images/Donut.png'
                  ),
                  ),
                ],
              ),
              ),
              ),
              gapH24,
              Text(
                    'Looks like you have not saved anything yet. Go back to Discover and like something!'.hardcoded,
                    style: theme.extension<CustomTextTheme>()!.body16Regular!,
                    textAlign: TextAlign.center,
                  ),
                gapH32,
          ],
        ),
      ),
    );
  }
}