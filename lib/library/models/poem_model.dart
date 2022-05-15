import 'dart:convert';

List<Poem> poemFromJson(String str) =>
    List<Poem>.from(json.decode(str).map((x) => Poem.fromJson(x)));

String poemToJson(List<Poem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Poem {
  Poem({
    required this.title,
    required this.author,
    required this.lines,
    required this.linecount,
  });

  final String title;
  final String author;
  final List<String> lines;
  final String linecount;

  factory Poem.fromJson(Map<String, dynamic> json) => Poem(
        title: json["title"],
        author: json["author"],
        lines: List<String>.from(json["lines"].map((x) => x)),
        linecount: json["linecount"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "author": author,
        "lines": List<dynamic>.from(lines.map((x) => x)),
        "linecount": linecount,
      };
}
