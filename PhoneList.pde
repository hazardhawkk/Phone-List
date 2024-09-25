import java.util.ArrayList;
import java.util.Collections; //for the sort method

class PhoneList {

  private ArrayList<Phone> phones;

  public PhoneList() {
    phones = new ArrayList<Phone>();
  }

  public void addPhone(Phone phone) {
    phones.add(phone);
  }

  public int getNumberOfPhones() {
    return phones.size();
  }

  public String toString() {
    String result = "";
    for (int index = 0; index < phones.size(); index++) {
      Phone phone = phones.get(index);
      result = result + phone.toString();
      result = result + "\n";
    }
    return result;
  }

  public void sort() {
    Collections.sort(phones);
  }

  public Phone findByBrandAndModel(String brand, String model) {
    for (int i = 0; i < phones.size(); i++) {
      Phone phone = phones.get(i);
      if (phone.getBrand().equals(brand) && phone.getModel().equals(model)) {
        return phone;
      }
    }
    return null;
  }

  public PhoneList findExpensivePhones(int price) {
    PhoneList list = new PhoneList();
    for (int i = 0; i < phones.size(); i++) {
      Phone phone = phones.get(i);
      if (phone.getApprox_price_EUR() > price) {
        list.addPhone(phone);
      }
    }
    list.sort();
    return list;
  }
}
