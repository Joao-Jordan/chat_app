
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TextComposer extends StatefulWidget {
  const TextComposer(this.sendMessage);

  final Function({String text, File imgFile}) sendMessage;

  @override
  State<TextComposer> createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  final TextEditingController _controller = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  bool _iscomposing = false; //Flag que indica se algum texto foi digitado

  //Função que desativa o botão de enviar mensagens a flag iscomposing == false
  void resetSendButton() {
    setState(
      () {
        _iscomposing = false;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.photo_camera),
            onPressed: () async {
              final imgFile = (await _picker.pickImage(source: ImageSource.camera));
                final file = File(imgFile!.path);
                widget.sendMessage(imgFile: file);
            },
          ),
          Expanded(
            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration.collapsed(
                hintText: 'Digite sua mensagem',
              ),
              onChanged: (text) {
                setState(
                  () {
                    _iscomposing = text.isNotEmpty;
                  },
                );
              },
              onSubmitted: (text) {
                if (text.isNotEmpty) {
                  widget.sendMessage(text: text);
                  _controller.clear();
                  resetSendButton();
                }
              }
            ),
          ),
          IconButton(
              icon: const Icon(Icons.send),
              onPressed: _iscomposing
                  ? () {
                      widget.sendMessage(text: _controller.text);
                      _controller.clear();
                      resetSendButton();
                    }
                  : null),
        ],
      ),
    );
  }
}
