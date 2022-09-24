import 'dart:mirrors';

myFunc(){
    return "My first function";
}

sayHello(String name, [String additionalMessage = "Here we come to dart"]){
    return "Hello $name, $additionalMessage";
}

main(){
    for (var i=2; i<5; i++){
        //print('hello joseph $i');
    }
    var func = myFunc;
    var a = 'world';
    var b = 12 + 23;
    //var c = 45 / 12; //results in a double part
    const c = 45 ~/ 12; //for integer part
    var d = 45 % 12; //for integer part
    var aa = 'My string for first dart program';
    //other operators like +=, -=, *= e.t.c
    //for increment use var++ or var-- for decrement
    print('hello $b ');
    print('$c reminder $d');
    print(c == d);//false
    print(c is int);//true
    print(aa.length);
    print(reflect(b).type.reflectedType.toString());
    print(myFunc()); //same as print(func())
    print(sayHello('Joseph')); //it uses default value for the additional message
    print(sayHello('Joseph', 'How was your day?'));
    var lists = {4,6,5,7};
    lists.add(10);
    var list2 = ['kalli','Noma',1];
    list2.add(3);
    print(list2);
    //lists.forEach((number) => print('hello $number'));
}