import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seguritl/dominio/entidades/mensaje.dart';
import 'package:seguritl/presentation/providers/chat_provider.dart';
import 'package:seguritl/presentation/widgets/chat/otros_mensajes.dart';
import 'package:seguritl/presentation/widgets/chat/mis_mensajes.dart';
import 'package:seguritl/presentation/widgets/shared/campo_mensaje.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://leon.tecnm.mx/wp-content/uploads/2020/12/itl_leon.png'),
          ),
        ),
        title: const Text('ITL'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messageList.length,
                    itemBuilder: (context, index) {
                      final mensaje = chatProvider.messageList[index];

                      return (mensaje.deQuien == DeQuien.otros)
                          ? OtrosMensajes(
                              message: mensaje,
                            )
                          : MisMensajes(
                              mensaje: mensaje,
                            );
                    })),

            /// Caja de texto de mensajes
            CampoMensaje(
              // onValue: (value) => chatProvider.enviarMensaje(value),
              onValue: chatProvider.enviarMensaje,
            ),
          ],
        ),
      ),
    );
  }
}
