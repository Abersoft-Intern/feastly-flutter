import 'package:feastly/src/presentation/groups/group/member_avatar.dart';
import 'package:flutter/material.dart';

class GroupMembers extends StatelessWidget {
  const GroupMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        MemberAvatar(
          isDeleteable: true,
          isActive: true,
        ),
        MemberAvatar(
          isDeleteable: true,
        ),
        MemberAvatar(
          isDeleteable: true,
        )
      ],
    );
  }
}
