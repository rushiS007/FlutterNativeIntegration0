import 'package:flutter/cupertino.dart';

class Location with ChangeNotifier {
  Location({
    this.type,
    this.title,
    this.displaytitle,
    this.namespace,
    this.wikibaseItem,
    this.titles,
    this.pageid,
    this.thumbnail,
    this.originalimage,
    this.lang,
    this.dir,
    this.revision,
    this.tid,
    this.timestamp,
    this.description,
    this.descriptionSource,
    this.coordinates,
    this.contentUrls,
    this.extract,
    this.extractHtml,
  });
  String? type;
  String? title;
  String? displaytitle;
  Namespace? namespace;
  String? wikibaseItem;
  Titles? titles;
  int? pageid;
  Thumbnail? thumbnail;
  Originalimage? originalimage;
  String? lang;
  String? dir;
  String? revision;
  String? tid;
  String? timestamp;
  String? description;
  String? descriptionSource;
  Coordinates? coordinates;
  ContentUrls? contentUrls;
  String? extract;
  String? extractHtml;

  String? get getExtract => extract;
  String? get getDescription => description;
  String? get getImageSource => originalimage!.source;

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    displaytitle = json['displaytitle'];
    namespace = Namespace.fromJson(json['namespace']);
    wikibaseItem = json['wikibase_item'];
    titles = Titles.fromJson(json['titles']);
    pageid = json['pageid'];
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    originalimage = Originalimage.fromJson(json['originalimage']);
    lang = json['lang'];
    dir = json['dir'];
    revision = json['revision'];
    tid = json['tid'];
    timestamp = json['timestamp'];
    description = json['description'];
    descriptionSource = json['description_source'];
    coordinates = Coordinates.fromJson(json['coordinates']);
    contentUrls = ContentUrls.fromJson(json['content_urls']);
    extract = json['extract'];
    extractHtml = json['extract_html'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['title'] = title;
    _data['displaytitle'] = displaytitle;
    _data['namespace'] = namespace!.toJson();
    _data['wikibase_item'] = wikibaseItem;
    _data['titles'] = titles!.toJson();
    _data['pageid'] = pageid;
    _data['thumbnail'] = thumbnail!.toJson();
    _data['originalimage'] = originalimage!.toJson();
    _data['lang'] = lang;
    _data['dir'] = dir;
    _data['revision'] = revision;
    _data['tid'] = tid;
    _data['timestamp'] = timestamp;
    _data['description'] = description;
    _data['description_source'] = descriptionSource;
    _data['coordinates'] = coordinates!.toJson();
    _data['content_urls'] = contentUrls!.toJson();
    _data['extract'] = extract;
    _data['extract_html'] = extractHtml;
    return _data;
  }
  notifyListeners();
}

class Namespace {
  Namespace({
    required this.id,
    required this.text,
  });
  late final int id;
  late final String text;

  Namespace.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    return _data;
  }
}

class Titles {
  Titles({
    required this.canonical,
    required this.normalized,
    required this.display,
  });
  late final String canonical;
  late final String normalized;
  late final String display;

  Titles.fromJson(Map<String, dynamic> json) {
    canonical = json['canonical'];
    normalized = json['normalized'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['canonical'] = canonical;
    _data['normalized'] = normalized;
    _data['display'] = display;
    return _data;
  }
}

class Thumbnail {
  Thumbnail({
    required this.source,
    required this.width,
    required this.height,
  });
  late final String source;
  late final int width;
  late final int height;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['source'] = source;
    _data['width'] = width;
    _data['height'] = height;
    return _data;
  }
}

class Originalimage {
  Originalimage({
    required this.source,
    required this.width,
    required this.height,
  });
  late final String source;
  late final int width;
  late final int height;

  Originalimage.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['source'] = source;
    _data['width'] = width;
    _data['height'] = height;
    return _data;
  }
}

class Coordinates {
  Coordinates({
    required this.lat,
    required this.lon,
  });
  late final double lat;
  late final double lon;

  Coordinates.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lon'] = lon;
    return _data;
  }
}

class ContentUrls {
  ContentUrls({
    required this.desktop,
    required this.mobile,
  });
  late final Desktop desktop;
  late final Mobile mobile;

  ContentUrls.fromJson(Map<String, dynamic> json) {
    desktop = Desktop.fromJson(json['desktop']);
    mobile = Mobile.fromJson(json['mobile']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['desktop'] = desktop.toJson();
    _data['mobile'] = mobile.toJson();
    return _data;
  }
}

class Desktop {
  Desktop({
    required this.page,
    required this.revisions,
    required this.edit,
    required this.talk,
  });
  late final String page;
  late final String revisions;
  late final String edit;
  late final String talk;

  Desktop.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    revisions = json['revisions'];
    edit = json['edit'];
    talk = json['talk'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['revisions'] = revisions;
    _data['edit'] = edit;
    _data['talk'] = talk;
    return _data;
  }
}

class Mobile {
  Mobile({
    required this.page,
    required this.revisions,
    required this.edit,
    required this.talk,
  });
  late final String page;
  late final String revisions;
  late final String edit;
  late final String talk;

  Mobile.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    revisions = json['revisions'];
    edit = json['edit'];
    talk = json['talk'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['revisions'] = revisions;
    _data['edit'] = edit;
    _data['talk'] = talk;
    return _data;
  }
}
