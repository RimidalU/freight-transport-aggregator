import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:untitled55/view/global_widgets/AppbarAndNotifications.dart';

import '/constants/images_path.dart' as image;
import '../../../constants/text.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import '../widgets/chat_container.dart';
import '../widgets/chats_search.dart';
import '../widgets/groups_container.dart';
import '../widgets/notif_container.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  static const routeName = '/chats';

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  bool active = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarAndNotifications(),
            3.heightBox,
            SizedBox(height: height * 0.005),
            const NotifContainer(),
            SizedBox(height: height * 0.02),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      active = !active;
                    });
                    print('1');
                  },
                  child: Text(
                    chatDrivers,
                    style: HeadlineTextStyle.style500w14.copyWith(
                      color: ProjectColors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.06),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        active = !active;
                      });
                      print('2');
                    },
                    child: Text(
                      groups,
                      style: HeadlineTextStyle.style500w14.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            const ChatsSearch(),
            SizedBox(height: height * 0.02),
            Text(
              allContacts,
              style: HeadlineTextStyle.style400w14.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => active
                    ? ChatContainer(
                        avatar: image.avatars[index],
                      )
                    : const GroupsContaine(),
                separatorBuilder: (context, index) => SizedBox(
                  height: height * 0.005,
                ),
                itemCount: image.avatars.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
