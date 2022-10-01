main() {
  var myList = [1, 2, 3, 4, 5, 6, 7];
  myList.shuffle(); //chooses random values
  print(myList);
  print(myList.reversed.toList());
  //obtaining a sublist from main list by declaring the start index
  //and end index but the end index is optianal
  print(myList.sublist(2, 6));
  print(myList.sublist(
      2)); //since the end point is not provided int prints to the last element in the list
  var mixList = [1, 2, 'b', 4, 'ds', 'tr', 32];
  print(mixList.whereType<int>()); //retrieve only integers from the list
  print(mixList
      .whereType<String>()); //retreive only string type items from the list

  //Skip ignores the element starting from index 0 to the provided index
  print(mixList.skip(3));
  myList[3] *= 5; //multiplies the element at index[3] by 5
  print(myList);

  var names = ['Kalijin', 'Haro', 'Alphamen', 'ABdul', 'ABDUL', 'abdul'];
  //sorting alphabetically with case sensitive
  names.sort((a, b) => a.toUpperCase().compareTo(b.toUpperCase()));
  print(names);
  //sorting by length of name
  names.sort((a, b) {
    if (a.length > b.length)
      return 1;
    else
      return -1;
  });
  print(names);

  var numerics = [54, 8, 74, 24, 61, 34, 20, 5, 9, 18, 3, 87, 13, 47];
  //sort in ascending order
  var sortedNumerics = bubbleSort(numerics, (p0, p1) => p0 < p1);
  print(sortedNumerics);
  //sorting in descending order
  sortedNumerics = bubbleSort(numerics, (p0, p1) => p0 > p1);
  print(sortedNumerics);
  sortedNumerics = bubbleSort(myList, (p0, p1) => p0 < p1);
  print(sortedNumerics);
  sortedNumerics = bubbleSort(myList, (p0, p1) => p0 > p1);
  print(sortedNumerics);

  //fixed size array/list
  var fx = new List.generate(2, (counter) => []);
  fx[1].add(1);
  fx[0].add(5);
  print(fx);
  final fx1 = List.filled(4, [],
      growable:
          true); //set growable to true makes the list to accept the adition of item
  fx1[0].add('7');
  fx1[1].add('17');
  fx1[2].add('127');
  fx1[3].add('127');
  print(fx1);
}

//sorting function
List bubbleSort(List items, bool Function(int, int) compareFunction) {
  for (var j = 0; j < items.length - 1; j++) {
    var swapped = false;
    for (var i = 0; i < items.length - 1; i++) {
      if (!compareFunction(items[i], items[i + 1])) {
        var t = items[i + 1];
        items[i + 1] = items[i];
        items[i] = t;
        swapped = true;
      }
    }
    if (!swapped) break;
  }
  return items;
}
