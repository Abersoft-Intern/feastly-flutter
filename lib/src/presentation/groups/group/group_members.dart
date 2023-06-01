import 'package:feastly/src/domain/group/group.dart';
import 'package:feastly/src/presentation/groups/group/member_avatar.dart';
import 'package:flutter/material.dart';

class GroupMembers extends StatelessWidget {
  const GroupMembers(
    this.group, {
    super.key,
  });

  final Group group;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => MemberAvatar(
        groupId: group.id,
        isDeleteable: !group.members[index].isCreator,
        isActive: group.members[index].isCreator,
        name: group.members[index].name,
        id: group.members[index].id,
      ),
      itemCount: group.members.length,
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
