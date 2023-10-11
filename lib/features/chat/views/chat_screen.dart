import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled55/features/chat/models/massege_model.dart';
import 'package:untitled55/features/chat/models/user_model.dart';

import '../../../constants/images_path.dart';
import '../../../constants/text.dart';
import '../../../ui/colors.dart';
import '../../../ui/text_style.dart';
import '../../../ui/ui.dart';
import '../../chats/view/chats_screen.dart';

class ChatScreen extends StatefulWidget {
  final User? user;

  static const routeName = '/chat';

  const ChatScreen({super.key, this.user});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble(Message message, bool isMe, bool isSameUser) {
    if (isMe) {
      return Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.80,
                  ),
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    message.text,
                    style: const TextStyle(
                      color: ProjectColors.appIcon,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 8,
                bottom: 13,
                child: SvgPicture.asset(
                  check,
                ),
              ),
            ],
          ),
          !isSameUser
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      message.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    10.widthBox,
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    } else {
      return Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.80,
              ),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                message.text,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          !isSameUser
              ? Row(
                  children: <Widget>[
                    Image.asset(avatars.last, scale: 5),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      message.time,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                )
              : Container(
                  child: null,
                ),
        ],
      );
    }
  }

  _sendMessageArea() {
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(
            8,
          ),
          topLeft: Radius.circular(
            8,
          ),
        ),
        color: Colors.grey.shade900,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      height: 70,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(other),
            color: Theme.of(context).primaryColor,
            onPressed: () {},
          ),
          Expanded(
            child: SizedBox(
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset(smailik),
                    iconSize: 25,
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                  ),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight: height * 0.5,
                  ),
                  hintText: 'Type something',
                  hintStyle: HeadlineTextStyle.style400w14.copyWith(
                    color: Colors.grey.shade400,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade800,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    int prevUserId = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff202329),
        elevation: 0,
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              const TextSpan(
                  text: mansName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              const TextSpan(text: '\n'),
              widget.user?.isOnline ?? true
                  ? const TextSpan(
                      text: 'Online',
                      style: TextStyle(
                        color: ProjectColors.laim,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  : const TextSpan(
                      text: 'Offline',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
            child: IconButtonGrey(
              onTap: () {},
              child: Image.asset('assets/images/phone.png'),
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          child: IconButtonGrey(
            onTap: () {
              Navigator.of(context).pushNamed(ChatsScreen.routeName);
            },
            child: Image.asset('assets/images/back.png'),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                final bool isMe = message.sender.id == currentUser.id;
                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;
                return _chatBubble(message, isMe, isSameUser);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }
}
