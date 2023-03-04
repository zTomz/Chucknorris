class Joke {
  final String iconUrl;
  final String id;
  final String url;
  final String value;

  Joke({
    required this.iconUrl,
    required this.id,
    required this.url,
    required this.value,
  });

  Joke.fromJson(Map<String, dynamic> json)
      : iconUrl = json['icon_url'],
        id = json['id'],
        url = json['url'],
        value = json['value'];

  Map<String, dynamic> toJson() => {
        'icon_url': iconUrl,
        'id': id,
        'url': url,
        'value': value,
      };
}
