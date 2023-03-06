import 'package:flutter_final_project_level1/1.dart';

List<money> geter() {
  money upwork = money();
  upwork.name = 'Food';
  upwork.fee = '650 TD';
  upwork.time = 'Today';
  upwork.image = 'food.png';
  upwork.buy = false;
  money educ = money();
  educ.name = 'Education';
  educ.fee = '50 TD';
  educ.time = '21/02/2023';
  educ.image = 'Education.png';
  educ.buy = true;
  money transfer = money();
  transfer.name = 'Transfer';
  transfer.fee = '500 TD';
  transfer.time = '21/02/2023';
  transfer.image = 'Transfer.png';
  transfer.buy = true;

  return [upwork, educ, transfer];
}
