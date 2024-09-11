class Constant {}

int hexColor(String color) {
  String newColor = "0xff" + color;
  newColor = newColor.replaceAll('#', '');
  return int.parse(newColor);
}
