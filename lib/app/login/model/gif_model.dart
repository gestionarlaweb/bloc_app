import 'dart:convert';

class Datum {
  Datum({
    required this.type,
    required this.id,
    required this.url,
    required this.embedUrl,
    required this.title,
    required this.images,
  });

  String type;
  String id;
  String url;
  String embedUrl;
  String title;
  Images images;

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        type: json["type"],
        id: json["id"],
        url: json["url"],
        embedUrl: json["embed_url"],
        title: json["title"],
        images: Images.fromMap(json["images"]),
      );

  Map<String, dynamic> toMap() => {
        "type": type,
        "id": id,
        "url": url,
        "embed_url": embedUrl,
        "title": title,
        "images": images.toMap(),
      };
}

class Images {
  Images({
    required this.original,
  });

  Original original;

  factory Images.fromJson(String str) => Images.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Images.fromMap(Map<String, dynamic> json) => Images(
        original: Original.fromMap(json["original"]),
      );

  Map<String, dynamic> toMap() => {
        "original": original.toMap(),
      };
}

class Original {
  Original({
    required this.height,
    required this.width,
    required this.size,
    required this.url,
    required this.mp4Size,
  });

  String height;
  String width;
  String size;
  String url;
  String mp4Size;

  factory Original.fromJson(String str) => Original.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Original.fromMap(Map<String, dynamic> json) => Original(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
        mp4Size: json["mp4_size"],
      );

  Map<String, dynamic> toMap() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
        "mp4_size": mp4Size,
      };
}
