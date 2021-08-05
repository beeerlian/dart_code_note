void main(List<String> arguments) {
  Listing list1 = new Listing();
  list1.mainList(list1);

  SetColl set1 = new SetColl();
  set1.mainSet();

  MapColl map1 = new MapColl();
  map1.mainMap();
}

class Listing {
  //ststis list
  List<String> listing = ['andi', 'iman', 'ihsan'];

  //dinamic list
  var dynamicList = ['Induk', 12, true, 0.045];

  void foreachList() {
    listing.forEach((element) {
      print("${element.toString()} ");
    });
    print("\n");
    dynamicList.forEach((element) {
      print("${element.toString()} ");
    });
    print("\n");
  }

  void mainList(Listing object) {
    object.foreachList();

    //Menggabungkan 2+ list tanpa Spread
    var allList = [object.dynamicList, object.listing];
    print("${allList.toString()}\n");

    //Menggabungkan 2+ list dengan Spread
    var allListSpread = [...object.dynamicList, ...object.listing];
    print("${allListSpread.toString()}\n");

    //Spread operator dengan null aware spread operator
    List listkosong=[];

    var nullawareList = [
      ...?listkosong,
      ...?object.dynamicList,
      ...?object.listing
    ];
    nullawareList.forEach((element) {
      print("${element.toString()}");
    });
    print("\n");
  }
}

class SetColl {
  //Jenis Collection yang hanya akan menyimpan nilai unik
  //bila ada duplikasi data, maka hanya akan disimpan satu elemen saja
  var numberSet = {1, 4, 6};
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);

  void mainSet() {
    print("${this.anotherSet} \n");

    //menambahkan data kedalam set
    anotherSet.add(6);
    anotherSet.addAll({9, 90, 45});

    print("${this.anotherSet} \n");

    //union = gabungan 2 set, intersection = irisan 2  set
    var union = numberSet.union(anotherSet);
    var intersection = anotherSet.intersection(numberSet);

    print("$intersection \n");
    print("$union \n");
  }
}

class MapColl {
  //Jenis Collection yang hanya akan menyimpan data dengan konsep key value
  //Jakarta = key, Indonesia = value
  var capital = {'Jakarta': 'Indonesia', 'London': 'England', 'Tokyo': 'Japan'};

  void mainMap(){
    print("${capital['Jakarta']} \n");

    //menampilkan key apa saja yang ada di dalam Map
    print("${capital.keys} \n");

    //mengetahui nilai apa saja yang ada di dalam Map
    print("${capital.values} \n");

    //menambahkan key-value baru ke dalam Map
    capital['New Delhi'] = 'India';
    print("$capital \n");
  }
}
