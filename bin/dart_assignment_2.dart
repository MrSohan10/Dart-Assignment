/// Assignment of Module 2

void main() {
  List<int> studentGrades = [85, 92, 78, 65, 88, 72];
  int totalMark = 0; // before summation.

  for (int i = 0; i < studentGrades.length; i++) {
    totalMark = totalMark + studentGrades[i];
  }

  double average = totalMark / studentGrades.length;
  int roundedAverage = average.round();
  print("Student's average grade: $average \nRounded average: $roundedAverage");

  if (average >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
