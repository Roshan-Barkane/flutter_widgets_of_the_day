abstract class DataBase {
  String Name();
  String Phone();
}

class Data implements DataBase {
  @override
  String Name() {
    String name = "Roshan";
    return name;
  }

  String Phone() {
    @override
    String phone = "+91-500XXXXXXX";
    return phone;
  }
}
