void main() {
  List list = [1, 2, 3, 4];
  var result = firstWhere(list, (singleItemInList) => singleItemInList == 5,
      orElse: () => -1);
  print(result);

  //Now we will see the reduce method to combine all the items in a list
  //You can also use for loop for adding all the items in a list but that's a long version of doing the same.
  List list2 = [2, 1];
  var reduceResult = list2.reduce((value, element) => value + element);
  print(reduceResult);

  //Getting unknown emails domain from a list
  const emails = [
    'abc@abc.com',
    'me@example.co.pk',
    'john@gmail.com ',
    'katy@yahoo.com '
  ];
  const knownDomains = ['gmail.com ', 'yahoo.com'];
  authenticEmail(emails, knownDomains);
}

authenticEmail(List<String> emails, List<String> knownDomains) {
  var unknownEmails = emails
      .map((email) => email.split('@').last)
      .where((element) => !knownDomains.contains(element));
  print('Unknown emails are: $unknownEmails');
}

T firstWhere<T>(List<T> items, bool Function(T) f,
    {required T Function() orElse}) {
  for (var item in items) {
    if (f(item)) {
      return item;
    }
  }
  return orElse();
}
