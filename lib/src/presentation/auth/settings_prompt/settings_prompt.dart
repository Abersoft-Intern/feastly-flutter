import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPromptScreen extends StatefulWidget {
  const SettingsPromptScreen({super.key});
  @override
  State<SettingsPromptScreen> createState() => _SettingsPromptState();
}

class _SettingsPromptState extends State<SettingsPromptScreen> {
String _selectedGroup = ''; 

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50),
                ),
                child: Icon(
                  FeastlyIcon.arrow_back_green,
                  size: 26.0,
                  color: theme.primaryColor,
                ),
                onTap: () {
                  context.pop();
                },
              ),
              gapH12,
              Text(
                'Select swiping group'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
              gapH12,
              Text(
                'Select what group you are swiping as, or if you are swiping solo. If your swiping as a group it is only the Group Creator that can select the categories.'
                    .hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
              gapH24,
              ListTile(
                trailing: Radio<String>(
                  value: 'soloSwipe',
                  groupValue: _selectedGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedGroup = value!;
                    });
                  },
                ),
                title: const Text('Solo Swipe'),
              ),
              ListTile(
                trailing: Radio<String>(
                  value: 'family',
                  groupValue: _selectedGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedGroup = value!;
                    });
                  },
                ),
                title: const Text('Family'),
              ),
              ListTile(
                trailing: Radio<String>(
                  value: 'friendGroup',
                  groupValue: _selectedGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedGroup = value!;
                    });
                  },
                ),
                title: const Text('Friend Group'),
              ),
              ListTile(
                trailing: Radio<String>(
                  value: 'workTeam',
                  groupValue: _selectedGroup,
                  onChanged: (value) {
                    setState(() {
                      _selectedGroup = value!;
                    });
                  },
                ),
                title: const Text('Work Team'),
              ),
            
              gapH24,
              gapH16,
            ],
          ),
        ),
      ),
    );
  }
}
