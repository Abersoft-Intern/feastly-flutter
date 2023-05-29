import 'package:flutter/material.dart';

class GroupRecipes extends StatelessWidget {
  const GroupRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return null;
      },
      itemCount: 5,
    );
  }
}
