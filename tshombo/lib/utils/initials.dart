
String getInitial(String nom) {

  var splitted = nom.split(' ');
  String initials;
  if (splitted.length > 1) {
    initials = splitted[0][0] + splitted[1][0];
  } else {
    initials = splitted[0][0];
  }

  return initials.toUpperCase();

}