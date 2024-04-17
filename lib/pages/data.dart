abstract class DataBase {
  String Name();
  String Phone();
}

class Data implements DataBase {
  @override
  String Name() {
    String name = "Roshan Developer";
    return name;
  }

  String Phone() {
    @override
    String phone = "+91-500XXXXXXX";
    return phone;
  }
}
