// class YesNoModel {
//   String answer;
//   bool forced;
//   String image;

//   YesNoModel({required this.answer, required this.forced, required this.image});

//   factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
//       answer: json['answer'], forced: json['forced'], image: json['image']);
// }

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'package:seguritl/dominio/entidades/mensaje.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Mensaje toMessageEntity() => Mensaje(
      text: answer == 'yes' ? 'Si' : 'No',
      deQuien: DeQuien.otros,
      imageUrl: image);
}
