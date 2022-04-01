import "package:get/get.dart";

enum NUM { FIRST, SECOND }

class User {
  String? name;
  int? age;
  User({this.name, this.age});
}

class CountControllerWithReactive extends GetxController {
  // .obs 하면 반응형으로 관리된다.
  // int 형식인데 반응형은 "Rx" 접두사 붙혀준다.
  RxInt count = 0.obs;
  RxDouble doubleValue = 0.0.obs;
  RxString stringvalue = "".obs;
  RxList list = [].obs;
  Rx<User> user = User(name: "짱구", age: 7).obs;
  Rx<NUM> nums = NUM.FIRST.obs;

  void increase() {
    count.value++;
    doubleValue.value++;
    doubleValue(123);

    list.addAll([1, 2, 3]);
    list.add([1, 2, 3]);
    list.addIf(1 == 1, [1, 2, 3]);

    user(User());
    user.update((_user) {
      _user?.name = "신짱구";
    });

    nums(NUM.SECOND);
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) {
      print("매번 호춯");
    });
    once(count, (_) {
      print("한번만 호춯");
    });
    debounce(count, (_) {
      print("마지막 변경에 한번만 호출");
    }, time: Duration(seconds: 1));
    interval(count, (_) {
      print("변경되고 있는 동안에 1초마다 호출");
    }, time: Duration(seconds: 1));

    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;
}
