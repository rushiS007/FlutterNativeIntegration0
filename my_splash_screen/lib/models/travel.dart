// To parse this JSON data, do
//
//     final travelData = travelDataFromJson(jsonString);

import 'dart:convert';

TravelData travelDataFromJson(String str) => TravelData.fromJson(json.decode(str));

String travelDataToJson(TravelData data) => json.encode(data.toJson());

class TravelData {
    TravelData({
        this.distances,
        this.distance,
        this.stops,
        this.travel,
    });

    List<int>? distances;
    int? distance;
    List<Stop>? stops;
    Travel? travel;

    factory TravelData.fromJson(Map<String, dynamic> json) => TravelData(
        distances: List<int>.from(json["distances"].map((x) => x)),
        distance: json["distance"],
        stops: List<Stop>.from(json["stops"].map((x) => Stop.fromJson(x))),
        travel: Travel.fromJson(json["travel"]),
    );

    Map<String, dynamic> toJson() => {
        "distances": List<dynamic>.from(distances!.map((x) => x)),
        "distance": distance,
        "stops": List<dynamic>.from(stops!.map((x) => x.toJson())),
        "travel": travel!.toJson(),
    };
}

class Stop {
    Stop({
        this.travelGuidesTimestamp,
        this.locatedByVersion,
        this.locatedByTimestamp,
        this.city,
        this.travelGuides,
        this.postalCode,
        this.nearByCities,
        this.latitude,
        this.type,
        this.countryCode,
        this.translations,
        this.wikipediaTimestamp,
        this.wikipediaVersion,
        this.hotelsTimestamp,
        this.timeZoneVersion,
        this.wikipedia,
        this.longitude,
        this.airportsVersion,
        this.timeZoneTimestamp,
        this.alt,
        this.timeZone,
        this.translationsVersion,
        this.locatedBy,
        this.airports,
        this.airportsTimestamp,
        this.localTime,
        this.nearByCitiesVersion,
        this.promotions,
        this.travelGuidesVersion,
        this.nearByCitiesTimestamp,
        this.hotels,
        this.lastUpdate,
        this.hotelsVersion,
        this.compressed,
        this.region,
        this.translationsTimestamp,
    });

    DateTime? travelGuidesTimestamp;
    int? locatedByVersion;
    DateTime? locatedByTimestamp;
    String? city;
    List<TravelGuide>? travelGuides;
    String? postalCode;
    List<NearByCity>? nearByCities;
    double? latitude;
    String? type;
    String? countryCode;
    Translations? translations;
    DateTime? wikipediaTimestamp;
    int? wikipediaVersion;
    DateTime? hotelsTimestamp;
    int? timeZoneVersion;
    Wikipedia? wikipedia;
    double? longitude;
    int? airportsVersion;
    DateTime? timeZoneTimestamp;
    List<dynamic>? alt;
    TimeZone? timeZone;
    int? translationsVersion;
    String? locatedBy;
    List<dynamic>? airports;
    DateTime? airportsTimestamp;
    LocalTime? localTime;
    int? nearByCitiesVersion;
    Promotions? promotions;
    int? travelGuidesVersion;
    DateTime? nearByCitiesTimestamp;
    List<Hotel>? hotels;
    DateTime? lastUpdate;
    int? hotelsVersion;
    int? compressed;
    String? region;
    DateTime? translationsTimestamp;

    factory Stop.fromJson(Map<String, dynamic> json) => Stop(
        travelGuidesTimestamp: DateTime.parse(json["travelGuides_timestamp"]),
        locatedByVersion: json["locatedBy_version"],
        locatedByTimestamp: DateTime.parse(json["locatedBy_timestamp"]),
        city: json["city"],
        travelGuides: List<TravelGuide>.from(json["travelGuides"].map((x) => TravelGuide.fromJson(x))),
        postalCode: json["postalCode"],
        nearByCities: List<NearByCity>.from(json["nearByCities"].map((x) => NearByCity.fromJson(x))),
        latitude: json["latitude"].toDouble(),
        type: json["type"],
        countryCode: json["countryCode"],
        translations: Translations.fromJson(json["translations"]),
        wikipediaTimestamp: DateTime.parse(json["wikipedia_timestamp"]),
        wikipediaVersion: json["wikipedia_version"],
        hotelsTimestamp: DateTime.parse(json["hotels_timestamp"]),
        timeZoneVersion: json["timeZone_version"],
        wikipedia: Wikipedia.fromJson(json["wikipedia"]),
        longitude: json["longitude"].toDouble(),
        airportsVersion: json["airports_version"],
        timeZoneTimestamp: DateTime.parse(json["timeZone_timestamp"]),
        alt: json["alt"] == null ? null : List<dynamic>.from(json["alt"].map((x) => x)),
        timeZone: TimeZone.fromJson(json["timeZone"]),
        translationsVersion: json["translations_version"],
        locatedBy: json["locatedBy"],
        airports: List<dynamic>.from(json["airports"].map((x) => x)),
        airportsTimestamp: DateTime.parse(json["airports_timestamp"]),
        localTime: LocalTime.fromJson(json["localTime"]),
        nearByCitiesVersion: json["nearByCities_version"],
        promotions: Promotions.fromJson(json["promotions"]),
        travelGuidesVersion: json["travelGuides_version"],
        nearByCitiesTimestamp: DateTime.parse(json["nearByCities_timestamp"]),
        hotels: List<Hotel>.from(json["hotels"].map((x) => Hotel.fromJson(x))),
        lastUpdate: DateTime.parse(json["lastUpdate"]),
        hotelsVersion: json["hotels_version"],
        compressed: json["compressed"],
        region: json["region"],
        translationsTimestamp: DateTime.parse(json["translations_timestamp"]),
    );

    Map<String, dynamic> toJson() => {
        "travelGuides_timestamp": travelGuidesTimestamp!.toIso8601String(),
        "locatedBy_version": locatedByVersion,
        "locatedBy_timestamp": locatedByTimestamp!.toIso8601String(),
        "city": city,
        "travelGuides": List<dynamic>.from(travelGuides!.map((x) => x.toJson())),
        "postalCode": postalCode,
        "nearByCities": List<dynamic>.from(nearByCities!.map((x) => x.toJson())),
        "latitude": latitude,
        "type": type,
        "countryCode": countryCode,
        "translations": translations!.toJson(),
        "wikipedia_timestamp": wikipediaTimestamp!.toIso8601String(),
        "wikipedia_version": wikipediaVersion,
        "hotels_timestamp": hotelsTimestamp!.toIso8601String(),
        "timeZone_version": timeZoneVersion,
        "wikipedia": wikipedia!.toJson(),
        "longitude": longitude,
        "airports_version": airportsVersion,
        "timeZone_timestamp": timeZoneTimestamp!.toIso8601String(),
        "alt": alt == null ? null : List<dynamic>.from(alt!.map((x) => x)),
        "timeZone": timeZone!.toJson(),
        "translations_version": translationsVersion,
        "locatedBy": locatedBy,
        "airports": List<dynamic>.from(airports!.map((x) => x)),
        "airports_timestamp": airportsTimestamp!.toIso8601String(),
        "localTime": localTime!.toJson(),
        "nearByCities_version": nearByCitiesVersion,
        "promotions": promotions!.toJson(),
        "travelGuides_version": travelGuidesVersion,
        "nearByCities_timestamp": nearByCitiesTimestamp!.toIso8601String(),
        "hotels": List<dynamic>.from(hotels!.map((x) => x.toJson())),
        "lastUpdate": lastUpdate!.toIso8601String(),
        "hotels_version": hotelsVersion,
        "compressed": compressed,
        "region": region,
        "translations_timestamp": translationsTimestamp!.toIso8601String(),
    };
}

class Hotel {
    Hotel({
        this.provider,
        this.name,
        this.nativeId,
        this.picture,
        this.url,
        this.description,
    });

    String? provider;
    String? name;
    String? nativeId;
    String? picture;
    String? url;
    String? description;

    factory Hotel.fromJson(Map<String, dynamic> json) => Hotel(
        provider: json["provider"],
        name: json["name"],
        nativeId: json["nativeId"],
        picture: json["picture"],
        url: json["url"],
        description: json["description"] == null ? null : json["description"],
    );

    Map<String, dynamic> toJson() => {
        "provider": provider,
        "name": name,
        "nativeId": nativeId,
        "picture": picture,
        "url": url,
        "description": description == null ? null : description,
    };
}

class LocalTime {
    LocalTime({
        this.dstActive,
        this.timeZoneName,
        this.formatted,
        this.timeZoneAbbr,
    });

    bool? dstActive;
    String? timeZoneName;
    String? formatted;
    String? timeZoneAbbr;

    factory LocalTime.fromJson(Map<String, dynamic> json) => LocalTime(
        dstActive: json["dstActive"],
        timeZoneName: json["timeZoneName"],
        formatted: json["formatted"],
        timeZoneAbbr: json["timeZoneAbbr"],
    );

    Map<String, dynamic> toJson() => {
        "dstActive": dstActive,
        "timeZoneName": timeZoneName,
        "formatted": formatted,
        "timeZoneAbbr": timeZoneAbbr,
    };
}

class NearByCity {
    NearByCity({
        this.distance,
        this.city,
        this.rank,
        this.category,
    });

    int? distance;
    String? city;
    int? rank;
    Category? category;

    factory NearByCity.fromJson(Map<String, dynamic> json) => NearByCity(
        distance: json["distance"],
        city: json["city"],
        rank: json["rank"],
        category: categoryValues.map[json["category"]],
    );

    Map<String, dynamic> toJson() => {
        "distance": distance,
        "city": city,
        "rank": rank,
        "category": categoryValues.reverse[category],
    };
}

enum Category { FAR, NEAR, MEDIUM }

final categoryValues = EnumValues({
    "far": Category.FAR,
    "medium": Category.MEDIUM,
    "near": Category.NEAR
});

class Promotions {
    Promotions({
        this.lastminutedeVersion,
        this.lastminutedeTimestamp,
        this.lastminutede,
    });

    int? lastminutedeVersion;
    DateTime? lastminutedeTimestamp;
    Lastminutede? lastminutede;

    factory Promotions.fromJson(Map<String, dynamic> json) => Promotions(
        lastminutedeVersion: json["lastminutede_version"],
        lastminutedeTimestamp: DateTime.parse(json["lastminutede_timestamp"]),
        lastminutede: Lastminutede.fromJson(json["lastminutede"]),
    );

    Map<String, dynamic> toJson() => {
        "lastminutede_version": lastminutedeVersion,
        "lastminutede_timestamp": lastminutedeTimestamp!.toIso8601String(),
        "lastminutede": lastminutede!.toJson(),
    };
}

class Lastminutede {
    Lastminutede();

    factory Lastminutede.fromJson(Map<String, dynamic> json) => Lastminutede(
    );

    Map<String, dynamic> toJson() => {
    };
}

class TimeZone {
    TimeZone({
        this.dstSavingsMins,
        this.name,
        this.id,
        this.abbr,
        this.offsetMin,
    });

    int? dstSavingsMins;
    String? name;
    String? id;
    String? abbr;
    int? offsetMin;

    factory TimeZone.fromJson(Map<String, dynamic> json) => TimeZone(
        dstSavingsMins: json["dstSavingsMins"],
        name: json["name"],
        id: json["id"],
        abbr: json["abbr"],
        offsetMin: json["offsetMin"],
    );

    Map<String, dynamic> toJson() => {
        "dstSavingsMins": dstSavingsMins,
        "name": name,
        "id": id,
        "abbr": abbr,
        "offsetMin": offsetMin,
    };
}

class Translations {
    Translations({
        this.no,
        this.de,
        this.fi,
        this.sv,
        this.ru,
        this.ko,
        this.pt,
        this.el,
        this.en,
        this.it,
        this.fr,
        this.zh,
        this.es,
        this.ar,
        this.ja,
        this.pl,
        this.da,
        this.he,
        this.tr,
        this.nl,
    });

    String? no;
    String? de;
    String? fi;
    String? sv;
    String? ru;
    String? ko;
    String? pt;
    String? el;
    String? en;
    String? it;
    String? fr;
    String? zh;
    String? es;
    String? ar;
    String? ja;
    String? pl;
    String? da;
    String? he;
    String? tr;
    String? nl;

    factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        no: json["no"],
        de: json["de"],
        fi: json["fi"],
        sv: json["sv"],
        ru: json["ru"],
        ko: json["ko"],
        pt: json["pt"],
        el: json["el"],
        en: json["en"],
        it: json["it"],
        fr: json["fr"],
        zh: json["zh"],
        es: json["es"],
        ar: json["ar"],
        ja: json["ja"],
        pl: json["pl"],
        da: json["da"],
        he: json["he"],
        tr: json["tr"],
        nl: json["nl"],
    );

    Map<String, dynamic> toJson() => {
        "no": no,
        "de": de,
        "fi": fi,
        "sv": sv,
        "ru": ru,
        "ko": ko,
        "pt": pt,
        "el": el,
        "en": en,
        "it": it,
        "fr": fr,
        "zh": zh,
        "es": es,
        "ar": ar,
        "ja": ja,
        "pl": pl,
        "da": da,
        "he": he,
        "tr": tr,
        "nl": nl,
    };
}

class TravelGuide {
    TravelGuide({
        this.thumbnail,
        this.review,
        this.title,
        this.url,
    });

    String? thumbnail;
    String? review;
    String? title;
    String? url;

    factory TravelGuide.fromJson(Map<String, dynamic> json) => TravelGuide(
        thumbnail: json["thumbnail"],
        review: json["review"],
        title: json["title"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "review": review,
        "title": title,
        "url": url,
    };
}

class Wikipedia {
    Wikipedia({
        this.image,
        this.thumbnail,
        this.wikipediaAbstract,
        this.home,
        this.population,
    });

    String? image;
    String? thumbnail;
    String? wikipediaAbstract;
    String? home;
    String? population;

    factory Wikipedia.fromJson(Map<String, dynamic> json) => Wikipedia(
        image: json["image"],
        thumbnail: json["thumbnail"],
        wikipediaAbstract: json["abstract"] == null ? null : json["abstract"],
        home: json["home"],
        population: json["population"].toString(),
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "thumbnail": thumbnail,
        "abstract": wikipediaAbstract == null ? null : wikipediaAbstract,
        "home": home,
        "population": population,
    };
}

class Travel {
    Travel({
        this.general,
        this.origin,
        this.destination,
        this.timeOffset,
        this.airports,
    });

    General? general;
    Origin? origin;
    Destination? destination;
    TimeOffset? timeOffset;
    int? airports;

    factory Travel.fromJson(Map<String, dynamic> json) => Travel(
        // general: General.fromJson(json["general"]),
        origin: Origin.fromJson(json["origin"]),
     //   destination: Destination.fromJson(json["destination"]),
      //  timeOffset: TimeOffset.fromJson(json["timeOffset"]),
     //   airports: json["airports"],
    );

    Map<String, dynamic> toJson() => {
        "general": general!.toJson(),
        "origin": origin!.toJson(),
        "destination": destination!.toJson(),
        "timeOffset": timeOffset!.toJson(),
        "airports": airports,
    };
}

class Destination {
    Destination({
        this.time,
    });

    String? time;

    factory Destination.fromJson(Map<String, dynamic> json) => Destination(
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "time": time,
    };
}

class General {
    General({
        this.countries,
    });

    String? countries;

    factory General.fromJson(Map<String, dynamic> json) => General(
        countries: json["countries"],
    );

    Map<String, dynamic> toJson() => {
        "countries": countries,
    };
}

class Origin {
    Origin({
        this.zoneInfo,
        this.time,
    });

    ZoneInfo? zoneInfo;
    String? time;

    factory Origin.fromJson(Map<String, dynamic> json) => Origin(
        zoneInfo: ZoneInfo.fromJson(json["zoneInfo"]),
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "zoneInfo": zoneInfo!.toJson(),
        "time": time,
    };
}

class ZoneInfo {
    ZoneInfo({
        this.image,
        this.thumbnail,
        this.offsetMinutes,
        this.description,
        this.offsetMinutesFormatted,
        this.page,
        this.lang,
        this.key,
    });

    String? image;
    String? thumbnail;
    int? offsetMinutes;
    String? description;
    String? offsetMinutesFormatted;
    String? page;
    String? lang;
    String? key;

    factory ZoneInfo.fromJson(Map<String, dynamic> json) => ZoneInfo(
        image: json["image"],
        thumbnail: json["thumbnail"],
        offsetMinutes: json["offsetMinutes"],
        description: json["description"],
        offsetMinutesFormatted: json["offsetMinutesFormatted"],
        page: json["page"],
        lang: json["lang"],
        key: json["key"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "thumbnail": thumbnail,
        "offsetMinutes": offsetMinutes,
        "description": description,
        "offsetMinutesFormatted": offsetMinutesFormatted,
        "page": page,
        "lang": lang,
        "key": key,
    };
}

class TimeOffset {
    TimeOffset({
        this.offsetMins,
    });

    int? offsetMins;

    factory TimeOffset.fromJson(Map<String, dynamic> json) => TimeOffset(
        offsetMins: json["offsetMins"],
    );

    Map<String, dynamic> toJson() => {
        "offsetMins": offsetMins,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap={};

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
