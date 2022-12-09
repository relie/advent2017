import 'dart:io';

void day01() {
  File('./bin/day01/input.txt').readAsString().then((String contents) {
    part2(contents.trim().split(''));
  });
}

void part1(List<String> input) {
  int sum = 0;
  for (int r = 0; r < input.length; r++) {
    String current = input[r];
    String next;

    if (r == input.length-1) {
      next = input[0];
    } else {
      next = input[r+1];
    }

    if (current == next) {
      sum += int.parse(current);
    }
  }

  print('The sum is $sum.');
}

void part2(List<String> input) {
  int sum = 0;
  int halfway = input.length~/2;
  print('Halfway is $halfway');
  for (int r = 0; r < input.length; r++) {
    String current = input[r];
    String next;

    if (r > halfway-1) {
      next = input[r-halfway];
      print('Current index is $r, next index is ${0+r-halfway}');
    } else {
      next = input[r+halfway];
      print('Current index is $r, next index is ${r+halfway}');
    }

    if (current == next) {
      sum += int.parse(current);
    }
  }

  print('The sum is $sum.');
}
