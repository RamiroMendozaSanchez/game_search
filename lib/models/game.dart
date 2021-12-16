class Game {
  static const String dbid = 'id';
  static const String dbtitle = 'title';
  static const String dbthumbnail = 'thumbnail';
  static const String dbshort_description = 'short_description';
  static const String dbgame_url = 'game_url';
  static const String dbgenre = 'genre';
  static const String dbplatform = 'platform';
  static const String dbpublisher = 'publisher';
  static const String dbdeveloper = 'developer';
  static const String dbrelease_date = 'release_date';

  final int id;
  final String title;
  final String thumbnail;
  final String short_description;
  final String game_url;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  final String release_date;

  Game({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.short_description,
    required this.game_url,
    required this.genre,
    required this.platform,
    required this.developer,
    required this.publisher,
    required this.release_date,
  });

  static List<Game> toList({
    required List<dynamic> json,
  }) =>
      json.map((e) => Game.fromJson(json: e)).toList();

  factory Game.fromJson({required Map<String, dynamic> json}) => Game(
      id: json[dbid].toInt() ?? 0,
      title: json[dbtitle] ?? '',
      thumbnail: json[dbthumbnail] ?? '',
      short_description: json[dbshort_description] ?? '',
      game_url: json[dbgame_url] ?? '',
      genre: json[dbgenre] ?? '',
      platform: json[dbplatform] ?? '',
      publisher: json[dbpublisher] ?? '',
      developer: json[dbdeveloper] ?? '',
      release_date: json[dbrelease_date] ?? '',
    );

  Map<String, dynamic> toJson() => {
        dbid: id,
        dbtitle: title,
        dbthumbnail: dbthumbnail,
        dbshort_description: short_description,
        dbgame_url: game_url,
        dbgenre: genre,
        dbplatform: platform,
        dbpublisher: publisher,
        dbdeveloper: developer,
        dbrelease_date: release_date,
      };
}
