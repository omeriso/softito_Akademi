

void main(List<String> arguments) { 
  List<String> phonesList = [
    "+47 63733773",
    "+49 63733773",
    "+49 63733576",
    "+48 63733556"
  ];

  int sayac = getCountryPhoneCount("49", phonesList);
  print(sayac);
}


int getCountryPhoneCount(String code, List<String> phones) {
  int counter = 0;
  for (var phoneNumber in phones) {
    String phoneCountryCode = "";

    for (var i = 1; i < phoneNumber.indexOf(" "); i++) {
      phoneCountryCode += phoneNumber[i];
    }

    if (phoneCountryCode == code) counter++;
    
  }

  return counter;
}
