import 'package:flutter/material.dart';
import 'package:zego_zimkit/services/services.dart';
import 'package:zego_zimkit/utils/dialogs_utils.dart';

class HomePagePopupMenuButton extends StatefulWidget {
  const HomePagePopupMenuButton({super.key});

  @override
  State<HomePagePopupMenuButton> createState() =>
      _HomePagePopupMenuButtonState();
}

class _HomePagePopupMenuButtonState extends State<HomePagePopupMenuButton> {
  final userIDcontroller = TextEditingController();
  final groupNamecontroller = TextEditingController();
  final groupUsercontroller = TextEditingController();
  final groupIDcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))),
        position: PopupMenuPosition.under,
        icon: Icon(Icons.add),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem(
                value: 'New Chat',
                child: ListTile(
                  title: Text(
                    "New Chat",
                    maxLines: 1,
                  ),
                  onTap: () => ZIMKit().showDefaultNewPeerChatDialog(context),
                )
                ),
                PopupMenuItem(
                   value: 'New Group',
                  child: ListTile(
                 
                  title: Text("New Group",maxLines: 1,),
                  onTap: ()=>ZIMKit().showDefaultNewGroupChatDialog(context),
                )),
                PopupMenuItem(
                   value: 'Join Group',
                  child: ListTile(
                  title: Text("Join Group",maxLines: 1,),
                  onTap: ()=>ZIMKit().showDefaultJoinGroupDialog(context),
                )),
          ];
        });
  }
}
