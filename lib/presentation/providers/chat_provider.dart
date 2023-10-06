import 'package:flutter/material.dart';
import 'package:seguritl/dominio/entidades/mensaje.dart';

import '../../config/helpers/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnswer = GetYesNoAnswer();

  List<Mensaje> messageList = [
    Mensaje(text: 'Hola', deQuien: DeQuien.yo),
    Mensaje(text: '.........', deQuien: DeQuien.yo),
  ];

  Future<void> enviarMensaje(String text) async {
    if (text.isEmpty) return;
    final nuevoMensaje = Mensaje(text: text, deQuien: DeQuien.yo);
    messageList.add(nuevoMensaje);

    if (text.endsWith('?')) {
      respuesta();
    }
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> respuesta() async {
    final suMensaje = await getYesNoAnswer.getAnswer();
    messageList.add(suMensaje);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(microseconds: 500));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceOut);
  }
}
