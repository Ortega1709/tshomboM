// ignore: file_names
import 'dart:math';

int randomCodeEmail(int maxi, int mini) {
  return (Random().nextInt(mini) + ((maxi - mini)));
}