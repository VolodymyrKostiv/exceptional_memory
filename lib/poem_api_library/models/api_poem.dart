import 'dart:convert';

List<APIPoem> poemFromJson(String str) =>
    List<APIPoem>.from(json.decode(str).map((x) => APIPoem.fromJson(x)));

String poemToJson(List<APIPoem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class APIPoem {
  APIPoem({
    required this.title,
    required this.author,
    required this.lines,
    required this.linecount,
  });

  final String title;
  final String author;
  final List<String> lines;
  final String linecount;

  factory APIPoem.fromJson(Map<String, dynamic> json) => APIPoem(
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
