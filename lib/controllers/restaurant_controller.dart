import 'package:get/state_manager.dart';

class RestaurantController extends GetxController {
  final name = "Pizza Cabin".obs;
  final followerCount = 0.obs;
  final isOpen = true.obs;
  final followerList = [].obs;
  final reviews = <String, String>{}.obs;

  static RestaurantController get to => Get.find<RestaurantController>();

  @override
  void onInit() {
    super.onInit();
  }

  setName(String restoName) {
    name(restoName);
  }

  incrementCount() {
    followerCount(followerCount.value + 1);
  }

  decrement() {
    followerCount(followerCount.value - 1);
  }

  setIsOpen(bool open) {
    isOpen(open);
  }

  setFollowerList(List<String> list) {
    followerList.assignAll(list);
  }

  addFollower(String name) {
    followerList.add(name);
  }

  removeFollower(int index) {
    followerList.removeAt(index);
  }

  addReview(String name, String review) {
    reviews.add(name, review);
  }

  removeReview(String name) {
    reviews.remove(name);
  }
}
