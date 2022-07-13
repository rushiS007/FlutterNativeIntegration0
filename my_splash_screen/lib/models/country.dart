class Country {
  Country({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.gini,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo,
    required this.postalCode,
  });
  late final Name name;
  late final List<String> tld;
  late final String cca2;
  late final String ccn3;
  late final String cca3;
  late final String cioc;
  late final bool independent;
  late final String status;
  late final bool unMember;
  late final Currencies currencies;
  late final Idd idd;
  late final List<String> capital;
  late final List<String> altSpellings;
  late final String region;
  late final String subregion;
  late final Languages languages;
  late final Translations translations;
  late final List<int> latlng;
  late final bool landlocked;
  late final List<String> borders;
  late final int area;
  late final Demonyms demonyms;
  late final String flag;
  late final Maps maps;
  late final int population;
  late final Gini gini;
  late final String fifa;
  late final Car car;
  late final List<String> timezones;
  late final List<String> continents;
  late final Flags flags;
  late final CoatOfArms coatOfArms;
  late final String startOfWeek;
  late final CapitalInfo capitalInfo;
  late final PostalCode postalCode;
  
  Country.fromJson(Map<String, dynamic> json){
    name = Name.fromJson(json['name']);
    tld = List.castFrom<dynamic, String>(json['tld']);
    cca2 = json['cca2'];
    ccn3 = json['ccn3'];
    cca3 = json['cca3'];
    cioc = json['cioc'];
    independent = json['independent'];
    status = json['status'];
    unMember = json['unMember'];
    currencies = Currencies.fromJson(json['currencies']);
    idd = Idd.fromJson(json['idd']);
    capital = List.castFrom<dynamic, String>(json['capital']);
    altSpellings = List.castFrom<dynamic, String>(json['altSpellings']);
    region = json['region'];
    subregion = json['subregion'];
    languages = Languages.fromJson(json['languages']);
    translations = Translations.fromJson(json['translations']);
    latlng = List.castFrom<dynamic, int>(json['latlng']);
    landlocked = json['landlocked'];
    borders = List.castFrom<dynamic, String>(json['borders']);
    area = json['area'];
    demonyms = Demonyms.fromJson(json['demonyms']);
    flag = json['flag'];
    maps = Maps.fromJson(json['maps']);
    population = json['population'];
    gini = Gini.fromJson(json['gini']);
    fifa = json['fifa'];
    car = Car.fromJson(json['car']);
    timezones = List.castFrom<dynamic, String>(json['timezones']);
    continents = List.castFrom<dynamic, String>(json['continents']);
    flags = Flags.fromJson(json['flags']);
    coatOfArms = CoatOfArms.fromJson(json['coatOfArms']);
    startOfWeek = json['startOfWeek'];
    capitalInfo = CapitalInfo.fromJson(json['capitalInfo']);
    postalCode = PostalCode.fromJson(json['postalCode']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name.toJson();
    _data['tld'] = tld;
    _data['cca2'] = cca2;
    _data['ccn3'] = ccn3;
    _data['cca3'] = cca3;
    _data['cioc'] = cioc;
    _data['independent'] = independent;
    _data['status'] = status;
    _data['unMember'] = unMember;
    _data['currencies'] = currencies.toJson();
    _data['idd'] = idd.toJson();
    _data['capital'] = capital;
    _data['altSpellings'] = altSpellings;
    _data['region'] = region;
    _data['subregion'] = subregion;
    _data['languages'] = languages.toJson();
    _data['translations'] = translations.toJson();
    _data['latlng'] = latlng;
    _data['landlocked'] = landlocked;
    _data['borders'] = borders;
    _data['area'] = area;
    _data['demonyms'] = demonyms.toJson();
    _data['flag'] = flag;
    _data['maps'] = maps.toJson();
    _data['population'] = population;
    _data['gini'] = gini.toJson();
    _data['fifa'] = fifa;
    _data['car'] = car.toJson();
    _data['timezones'] = timezones;
    _data['continents'] = continents;
    _data['flags'] = flags.toJson();
    _data['coatOfArms'] = coatOfArms.toJson();
    _data['startOfWeek'] = startOfWeek;
    _data['capitalInfo'] = capitalInfo.toJson();
    _data['postalCode'] = postalCode.toJson();
    return _data;
  }
}

class Name {
  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });
  late final String common;
  late final String official;
  late final NativeName nativeName;
  
  Name.fromJson(Map<String, dynamic> json){
    common = json['common'];
    official = json['official'];
    nativeName = NativeName.fromJson(json['nativeName']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['common'] = common;
    _data['official'] = official;
    _data['nativeName'] = nativeName.toJson();
    return _data;
  }
}

class NativeName {
  NativeName({
    required this.eng,
    required this.hin,
    required this.tam,
  });
  late final Eng eng;
  late final Hin hin;
  late final Tam tam;
  
  NativeName.fromJson(Map<String, dynamic> json){
    eng = Eng.fromJson(json['eng']);
    hin = Hin.fromJson(json['hin']);
    tam = Tam.fromJson(json['tam']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['eng'] = eng.toJson();
    _data['hin'] = hin.toJson();
    _data['tam'] = tam.toJson();
    return _data;
  }
}

class Eng {
  Eng({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Eng.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Hin {
  Hin({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Hin.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Tam {
  Tam({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Tam.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Currencies {
  Currencies({
    required this.INR,
  });
  late final INR;
  
  Currencies.fromJson(Map<String, dynamic> json){
    INR = INR.fromJson(json['INR']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['INR'] = INR.toJson();
    return _data;
  }
}

class INR {
  INR({
    required this.name,
    required this.symbol,
  });
  late final String name;
  late final String symbol;
  
  INR.fromJson(Map<String, dynamic> json){
    name = json['name'];
    symbol = json['symbol'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['symbol'] = symbol;
    return _data;
  }
}

class Idd {
  Idd({
    required this.root,
    required this.suffixes,
  });
  late final String root;
  late final List<String> suffixes;
  
  Idd.fromJson(Map<String, dynamic> json){
    root = json['root'];
    suffixes = List.castFrom<dynamic, String>(json['suffixes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['root'] = root;
    _data['suffixes'] = suffixes;
    return _data;
  }
}

class Languages {
  Languages({
    required this.eng,
    required this.hin,
    required this.tam,
  });
  late final String eng;
  late final String hin;
  late final String tam;
  
  Languages.fromJson(Map<String, dynamic> json){
    eng = json['eng'];
    hin = json['hin'];
    tam = json['tam'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['eng'] = eng;
    _data['hin'] = hin;
    _data['tam'] = tam;
    return _data;
  }
}

class Translations {
  Translations({
    required this.ara,
    required this.ces,
    required this.cym,
    required this.deu,
    required this.est,
    required this.fin,
    required this.fra,
    required this.hrv,
    required this.hun,
    required this.ita,
    required this.jpn,
    required this.kor,
    required this.nld,
    required this.per,
    required this.pol,
    required this.por,
    required this.rus,
    required this.slk,
    required this.spa,
    required this.swe,
    required this.urd,
    required this.zho,
  });
  late final Ara ara;
  late final Ces ces;
  late final Cym cym;
  late final Deu deu;
  late final Est est;
  late final Fin fin;
  late final Fra fra;
  late final Hrv hrv;
  late final Hun hun;
  late final Ita ita;
  late final Jpn jpn;
  late final Kor kor;
  late final Nld nld;
  late final Per per;
  late final Pol pol;
  late final Por por;
  late final Rus rus;
  late final Slk slk;
  late final Spa spa;
  late final Swe swe;
  late final Urd urd;
  late final Zho zho;
  
  Translations.fromJson(Map<String, dynamic> json){
    ara = Ara.fromJson(json['ara']);
    ces = Ces.fromJson(json['ces']);
    cym = Cym.fromJson(json['cym']);
    deu = Deu.fromJson(json['deu']);
    est = Est.fromJson(json['est']);
    fin = Fin.fromJson(json['fin']);
    fra = Fra.fromJson(json['fra']);
    hrv = Hrv.fromJson(json['hrv']);
    hun = Hun.fromJson(json['hun']);
    ita = Ita.fromJson(json['ita']);
    jpn = Jpn.fromJson(json['jpn']);
    kor = Kor.fromJson(json['kor']);
    nld = Nld.fromJson(json['nld']);
    per = Per.fromJson(json['per']);
    pol = Pol.fromJson(json['pol']);
    por = Por.fromJson(json['por']);
    rus = Rus.fromJson(json['rus']);
    slk = Slk.fromJson(json['slk']);
    spa = Spa.fromJson(json['spa']);
    swe = Swe.fromJson(json['swe']);
    urd = Urd.fromJson(json['urd']);
    zho = Zho.fromJson(json['zho']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ara'] = ara.toJson();
    _data['ces'] = ces.toJson();
    _data['cym'] = cym.toJson();
    _data['deu'] = deu.toJson();
    _data['est'] = est.toJson();
    _data['fin'] = fin.toJson();
    _data['fra'] = fra.toJson();
    _data['hrv'] = hrv.toJson();
    _data['hun'] = hun.toJson();
    _data['ita'] = ita.toJson();
    _data['jpn'] = jpn.toJson();
    _data['kor'] = kor.toJson();
    _data['nld'] = nld.toJson();
    _data['per'] = per.toJson();
    _data['pol'] = pol.toJson();
    _data['por'] = por.toJson();
    _data['rus'] = rus.toJson();
    _data['slk'] = slk.toJson();
    _data['spa'] = spa.toJson();
    _data['swe'] = swe.toJson();
    _data['urd'] = urd.toJson();
    _data['zho'] = zho.toJson();
    return _data;
  }
}

class Ara {
  Ara({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Ara.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Ces {
  Ces({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Ces.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Cym {
  Cym({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Cym.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Deu {
  Deu({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Deu.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Est {
  Est({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Est.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Fin {
  Fin({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Fin.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Fra {
  Fra({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Fra.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Hrv {
  Hrv({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Hrv.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Hun {
  Hun({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Hun.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Ita {
  Ita({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Ita.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Jpn {
  Jpn({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Jpn.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Kor {
  Kor({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Kor.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Nld {
  Nld({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Nld.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Per {
  Per({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Per.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Pol {
  Pol({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Pol.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Por {
  Por({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Por.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Rus {
  Rus({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Rus.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Slk {
  Slk({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Slk.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Spa {
  Spa({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Spa.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Swe {
  Swe({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Swe.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Urd {
  Urd({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Urd.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Zho {
  Zho({
    required this.official,
    required this.common,
  });
  late final String official;
  late final String common;
  
  Zho.fromJson(Map<String, dynamic> json){
    official = json['official'];
    common = json['common'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['official'] = official;
    _data['common'] = common;
    return _data;
  }
}

class Demonyms {
  Demonyms({
    required this.eng,
    required this.fra,
  });
  late final Eng eng;
  late final Fra fra;
  
  Demonyms.fromJson(Map<String, dynamic> json){
    eng = Eng.fromJson(json['eng']);
    fra = Fra.fromJson(json['fra']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['eng'] = eng.toJson();
    _data['fra'] = fra.toJson();
    return _data;
  }
}

class Maps {
  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });
  late final String googleMaps;
  late final String openStreetMaps;
  
  Maps.fromJson(Map<String, dynamic> json){
    googleMaps = json['googleMaps'];
    openStreetMaps = json['openStreetMaps'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['googleMaps'] = googleMaps;
    _data['openStreetMaps'] = openStreetMaps;
    return _data;
  }
}

class Gini {
  Gini({
    required this.twok11,
  });
  late final double twok11;
  
  Gini.fromJson(Map<String, dynamic> json){
    twok11 = json['2011'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['2011'] = 2011;
    return _data;
  }
}

class Car {
  Car({
    required this.signs,
    required this.side,
  });
  late final List<String> signs;
  late final String side;
  
  Car.fromJson(Map<String, dynamic> json){
    signs = List.castFrom<dynamic, String>(json['signs']);
    side = json['side'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['signs'] = signs;
    _data['side'] = side;
    return _data;
  }
}

class Flags {
  Flags({
    required this.png,
    required this.svg,
  });
  late final String png;
  late final String svg;
  
  Flags.fromJson(Map<String, dynamic> json){
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['png'] = png;
    _data['svg'] = svg;
    return _data;
  }
}

class CoatOfArms {
  CoatOfArms({
    required this.png,
    required this.svg,
  });
  late final String png;
  late final String svg;
  
  CoatOfArms.fromJson(Map<String, dynamic> json){
    png = json['png'];
    svg = json['svg'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['png'] = png;
    _data['svg'] = svg;
    return _data;
  }
}

class CapitalInfo {
  CapitalInfo({
    required this.latlng,
  });
  late final List<double> latlng;
  
  CapitalInfo.fromJson(Map<String, dynamic> json){
    latlng = List.castFrom<dynamic, double>(json['latlng']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['latlng'] = latlng;
    return _data;
  }
}

class PostalCode {
  PostalCode({
    required this.format,
    required this.regex,
  });
  late final String format;
  late final String regex;
  
  PostalCode.fromJson(Map<String, dynamic> json){
    format = json['format'];
    regex = json['regex'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['format'] = format;
    _data['regex'] = regex;
    return _data;
  }
}