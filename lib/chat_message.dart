import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage(this.userData, this.mymessage, {Key? key}) : super(key: key);

  final Map<String, dynamic> userData;
  final bool mymessage;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          !mymessage ?
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                userData['senderPhotoUrl'],
              ),
            ),
          ) : Container(),
          Expanded(
            child: Column(
              crossAxisAlignment: mymessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  userData['senderName'],
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                userData['imgUrl'] != null
                    ? Image.network(
                  userData['imgUrl'],
                  width: 250,
                )
                    : Text(
                  userData['text'],
                  textAlign: mymessage ? TextAlign.end : TextAlign.start,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          mymessage ?
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                userData['senderPhotoUrl'],
              ),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
