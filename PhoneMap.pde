class PhoneMap {
  HashMap<String, Phone> phoneMap;
  //brand + model name is the key, Phone object is the value
  public PhoneMap() {
    phoneMap = new HashMap<String, Phone>();
  }

  public String toString() {
    String result = "";
    for (String key : phoneMap.keySet()) {
      Phone phone = phoneMap.get(key);
      // update result for this phone
      result = result + phone.toString();
      result = result + "\n";
    }
    return result;
  }

  public Phone searchMap(String brand, String model) {
    String theKey = brand + " " + model;
    return phoneMap.get(theKey);
  }
}
