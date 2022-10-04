main() {
  var runes = Runes("Hello Friend ")
      .map(
        (e) => e.toRadixString(16).padLeft(4, '0'),
      )
      .toList();
  print(runes);
  print(runes.length);
  String run = '\u{0048}\u{0065}\u{006c}\u{006c}\u{006f}\u{1F496}';
  print(run);
  //Printing some emojis
  print('\u{1F496},\u{1F970},\u{1F63B},\u{1F499},\u{1F495},\u{1F493}');
}
