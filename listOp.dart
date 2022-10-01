main() {
  var myList = [1, 2, 3, 4, 5, 6, 7];
  myList.shuffle();
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
  myList[3] *= 5;//multiplies the element at index[3] by 5
  print(myList);
}
