import java.util.Scanner;

private String fileName;
private PhoneList phones;
Scanner in;

void setup() {
  fileName = sketchPath() + "/phoneData.csv";
  phones = new PhoneList();
  in = InputReader.getScanner(fileName);
  readData();
  phones.sort();
  println(phones.toString());
  
  println("\nThe details of the Apple iPhone 7 Plus are:");
  println(phones.findByBrandAndModel("Apple","iPhone 7 Plus").toString());
  println("\nThe expensive phones are:");
  println(phones.findExpensivePhones(600).toString());
}

void draw() {
}

void readData() {
  String header = in.nextLine();
  System.out.println(header); //why ths line has extra stuff

  while (in.hasNext()) {
    String csv = in.nextLine();
    String[] data = csv.split(",");
    Phone phone = new Phone(data[0]);
    phone.setModel(data[1]);
    phone.setAnnounced(data[8]);
    phone.setWeight_g(Float.parseFloat(data[11]));
    phone.setInternal_memory(data[21]);
    phone.setApprox_price_EUR(Integer.parseInt(data[36]));

    phones.addPhone(phone);
  }
  println("---------------------------------------------");
  println("Total number of phones is " + phones.getNumberOfPhones());
}
