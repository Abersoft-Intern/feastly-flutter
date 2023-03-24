import 'package:feastly/src/common_widgets/buttons/action_button.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_color.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupsRecipesNone extends StatefulWidget {
  const GroupsRecipesNone({super.key});
  @override
  State<GroupsRecipesNone> createState() => _GroupsRecipesNoneState();
}
  
class _GroupsRecipesNoneState extends State<GroupsRecipesNone> {
  groupsPlace(index) { 
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
                  _groups[index]['name']!,
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
final _groups = {
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
    final textTheme = theme.extension<CustomTextTheme>()!;
     final colorTheme = theme.extension<CustomColor>()!;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'My Groups'.hardcoded,
              style: theme.extension<CustomTextTheme>()!.h3!,
            ),
            gapW20,
            Align(
            alignment: Alignment.centerRight,
            child: TextButton(
            onPressed: () {},
            child:
            Text('Edit Group'.hardcoded,
            style: theme.extension<CustomTextTheme>()!.body16Regular!.copyWith(color: theme.primaryColor)
            ),
            ),
             ), 
          ],
        ),
        // 
        SizedBox(
          height: 43,
          width: 43,
          
          child: Container(
            
        child: InkWell(
                  onTap: () {},
                  
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  child: ActionButton(
                icon: Icon(
                  FeastlyIcon.uil_plus,
                  size: Sizes.p28.h,
                  color: colorTheme.white,
                ),
                onTap: () {},
              ),
                ),
),
        ),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                
                child: Image.asset(
                  'assets/images/Jelly Bear-1.png',
                  height: 238.0.h,
                  fit: BoxFit.contain,
                ),
              ),
              Positioned(
                right: 0,
               
                child: Image.asset(
                  'assets/images/Jelly Bear.png',
                  height: 201.0.h,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 315,
          child: Text(
            'Looks like you dont have any groups yet. Press New Group and invite some friends to swipe together.'
                .hardcoded,
            style: textTheme.body16Regular,
            textAlign: TextAlign.center,
          ),
        ),
        gapH32,
        
      ],
    );
  }
}
