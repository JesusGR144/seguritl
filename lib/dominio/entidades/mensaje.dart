enum DeQuien { yo, otros }

class Mensaje {
  final String text;
  final String? imageUrl;
  final DeQuien deQuien;

  Mensaje({required this.text, this.imageUrl, required this.deQuien});
}
