import 'dart:convert';
import 'dart:io';
import '../utils.dart';

void day02() {
  File('./bin/day02/input.txt').readAsString().then((String contents) {
    // part1(LineSplitter().convert(contents));
    part2(LineSplitter().convert(contents));
  });
}

void part1(List<String> input) {
  int checksum = 0;
  for(final line in input) {
    List<int> nums = convertListSI(line.split(RegExp(r'\s+')));
    nums.sort((a, b) => a.compareTo(b));
    print(nums);
    checksum += (nums.last - nums.first);
  }

  print('The checksum is $checksum.');
}

void part2(List<String> input) {
  int checksum = 0;
  for(final line in input) {
    List<int> nums = convertListSI(line.split(RegExp(r'\s+')));
    for (int r = 0; r < nums.length; r++) {
      for (int l = 0; l < nums.length; l++) {
        if (r != l) {
          if (nums[r].remainder(nums[l]) == 0) {
            print('r is ${nums[r]} and l is ${nums[l]}');
            checksum += nums[r]~/nums[l];
          }
        }
      }
    }
  }

  print('The checksum is $checksum.');
}