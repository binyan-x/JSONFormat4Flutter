import 'dart:convert';


class RegionResp {

  int code;
  int ttl;
  String message;
  Data data;


  RegionResp(jsonStr) {
    var jsonRes = JSON.decode(jsonStr);

    code = jsonRes['code'];
    ttl = jsonRes['ttl'];
    message = jsonRes['message'];
    data = new Data(jsonRes['data']);
  }

  @override
  String toString() {
    return '{"code": $code,"ttl": $ttl,"message": ${message != null ? '${JSON
        .encode(message)}' : 'null'},"data": $data}';
  }
}


class Data {

  List<Arch> archives;
  Page page;


  Data(jsonRes) {
    archives = [];

    for (var archivesItem in jsonRes['archives']) {
      archives.add(new Arch(archivesItem));
    }

    page = new Page(jsonRes['page']);
  }

  @override
  String toString() {
    return '{"archives": $archives,"page": $page}';
  }
}


class Page {

  int count;
  int num;
  int size;


  Page(jsonRes) {
    count = jsonRes['count'];
    num = jsonRes['num'];
    size = jsonRes['size'];
  }

  @override
  String toString() {
    return '{"count": $count,"num": $num,"size": $size}';
  }
}


class Arch {

  int aid;
  int attribute;
  int copyright;
  int ctime;
  int duration;
  int pubdate;
  int state;
  int tid;
  int videos;
  String desc;
  String dynamic;
  String pic;
  String title;
  String tname;
  Owner owner;
  Rights rights;
  Stat stat;


  Arch(jsonRes) {
    aid = jsonRes['aid'];
    attribute = jsonRes['attribute'];
    copyright = jsonRes['copyright'];
    ctime = jsonRes['ctime'];
    duration = jsonRes['duration'];
    pubdate = jsonRes['pubdate'];
    state = jsonRes['state'];
    tid = jsonRes['tid'];
    videos = jsonRes['videos'];
    desc = jsonRes['desc'];
    dynamic = jsonRes['dynamic'];
    pic = jsonRes['pic'];
    title = jsonRes['title'];
    tname = jsonRes['tname'];
    owner = new Owner(jsonRes['owner']);
    rights = new Rights(jsonRes['rights']);
    stat = new Stat(jsonRes['stat']);
  }

  @override
  String toString() {
    return '{"aid": $aid,"attribute": $attribute,"copyright": $copyright,"ctime": $ctime,"duration": $duration,"pubdate": $pubdate,"state": $state,"tid": $tid,"videos": $videos,"desc": ${desc !=
        null ? '${JSON.encode(desc)}' : 'null'},"dynamic": ${dynamic != null
        ? '${JSON.encode(dynamic)}'
        : 'null'},"pic": ${pic != null
        ? '${JSON.encode(pic)}'
        : 'null'},"title": ${title != null
        ? '${JSON.encode(title)}'
        : 'null'},"tname": ${tname != null
        ? '${JSON.encode(tname)}'
        : 'null'},"owner": $owner,"rights": $rights,"stat": $stat}';
  }
}


class Stat {

  int aid;
  int coin;
  int danmaku;
  int favorite;
  int his_rank;
  int like;
  int now_rank;
  int reply;
  int share;
  int view;


  Stat(jsonRes) {
    aid = jsonRes['aid'];
    coin = jsonRes['coin'];
    danmaku = jsonRes['danmaku'];
    favorite = jsonRes['favorite'];
    his_rank = jsonRes['his_rank'];
    like = jsonRes['like'];
    now_rank = jsonRes['now_rank'];
    reply = jsonRes['reply'];
    share = jsonRes['share'];
    view = jsonRes['view'];
  }

  @override
  String toString() {
    return '{"aid": $aid,"coin": $coin,"danmaku": $danmaku,"favorite": $favorite,"his_rank": $his_rank,"like": $like,"now_rank": $now_rank,"reply": $reply,"share": $share,"view": $view}';
  }
}


class Rights {

  int bp;
  int download;
  int elec;
  int hd5;
  int movie;
  int no_reprint;
  int pay;


  Rights(jsonRes) {
    bp = jsonRes['bp'];
    download = jsonRes['download'];
    elec = jsonRes['elec'];
    hd5 = jsonRes['hd5'];
    movie = jsonRes['movie'];
    no_reprint = jsonRes['no_reprint'];
    pay = jsonRes['pay'];
  }

  @override
  String toString() {
    return '{"bp": $bp,"download": $download,"elec": $elec,"hd5": $hd5,"movie": $movie,"no_reprint": $no_reprint,"pay": $pay}';
  }
}


class Owner {

  int mid;
  String face;
  String name;


  Owner(jsonRes) {
    mid = jsonRes['mid'];
    face = jsonRes['face'];
    name = jsonRes['name'];
  }

  @override
  String toString() {
    return '{"mid": $mid,"face": ${face != null
        ? '${JSON.encode(face)}'
        : 'null'},"name": ${name != null ? '${JSON.encode(name)}' : 'null'}}';
  }
}

