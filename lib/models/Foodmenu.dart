enum BandType {
  band1(name: "Poppin'Party"),
  band2(name: "Afterglow"),
  band3(name: "Pastel Palettes"),
  band4(name: "Roselia"),
  band5(name: "Hello, Happy World!"),
  band6(name: "RAISE A SUILEN"),
  band7(name: "Morfonica"),
  band8(name: "MyGO!!!!!"),
  band9(name: "Ave Mujica");

  const BandType({required this.name});
  final String name;
}

enum schoolType {
  type1(ty: "โรงเรียนสตรีฮานาซากิกาวะ"),
  type2(ty: "โรงเรียนสตรีฮาเนโอกะ"),
  type3(ty: "สถาบันสตรีสึกิโนะโมริ");

  const schoolType({required this.ty});
  final String ty;
}

enum Character {
  c1(character: "", image: "assets/images/8.png"),
  c2(character: "", image: "assets/images/12.png"),
  c3(character: "", image: "assets/images/11.png"),
  c4(character: "", image: "assets/images/9.png"),
  c5(character: "", image: "assets/images/10.png"),
  c6(character: "", image: "assets/images/11.png"),
  c7(character: "", image: "assets/images/12.png"),
  c8(character: "", image: "assets/images/13.png"),
  c9(character: "", image: "assets/images/14.png"),
  c10(character: "", image: "assets/images/15.png"),
  c11(character: "", image: "assets/images/16.png"),
  c12(character: "", image: "assets/images/17.png"),
  c13(character: "", image: "assets/images/18.png"),
  c14(character: "", image: "assets/images/19.png"),
  c15(character: "", image: "assets/images/20.png"),
  c16(character: "", image: "assets/images/21.png"),
  c17(character: "", image: "assets/images/22.png"),
  c18(character: "", image: "assets/images/23.png"),
  c19(character: "", image: "assets/images/24.png"),
  c20(character: "", image: "assets/images/25.png"),
  c21(character: "", image: "assets/images/26.png"),
  c22(character: "", image: "assets/images/27.png"),
  c23(character: "", image: "assets/images/28.png"),
  c24(character: "", image: "assets/images/29.png"),
  c25(character: "", image: "assets/images/30.png"),
  c26(character: "", image: "assets/images/31.png"),
  c27(character: "", image: "assets/images/32.png"),
  c28(character: "", image: "assets/images/33.png"),
  c29(character: "", image: "assets/images/34.png"),
  c30(character: "", image: "assets/images/35.png"),
  c31(character: "", image: "assets/images/36.png"),
  c32(character: "", image: "assets/images/37.png"),
  c33(character: "", image: "assets/images/38.png"),
  c34(character: "", image: "assets/images/39.png"),
  c35(character: "", image: "assets/images/40.png"),
  c36(character: "", image: "assets/images/41.png"),
  c37(character: "", image: "assets/images/42.png"),
  c38(character: "", image: "assets/images/43.png"),
  c39(character: "", image: "assets/images/44.png"),
  c40(character: "", image: "assets/images/45.png"),
  c41(character: "", image: "assets/images/46.png"),
  c42(character: "", image: "assets/images/47.png"),
  c43(character: "", image: "assets/images/48.png"),
  c44(character: "", image: "assets/images/49.png"),
  c45(character: "", image: "assets/images/50.png"),
  c46(character: "", image: "assets/images/51.png"),
  c47(character: "", image: "assets/images/52.png"),;


  const Character({
    required this.character,
    required this.image,
  });

  final String character;
  final String image;
}

class FoodMenu {
  FoodMenu({
    required this.name,
    required this.component,
    required this.band,
    required this.school,
    required this.character,
  });

  String name;
  String component;
  BandType band;
  schoolType school;
  Character character;
}

List<FoodMenu> emp = [];
