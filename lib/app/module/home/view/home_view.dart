import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_opal/app/module/home/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
      // appBar: AppBar(title: const Text('Users')),
      body: SafeArea(
        child: controller.obx(
            (state) => ListView.builder(
                  itemCount: state!.length,
                  itemBuilder: (context, index) {
                    final user = state[index];
                    return ListTile(
                      // title: Text(user.data as String),
                      // leading: CircleAvatar(
                      //   radius: 25,
                      //   backgroundColor: Colors.white,
                      //   backgroundImage: NetworkImage(user.image!),
                      // ),
                      // title: Text(user.username!),
                      // subtitle: Text(user.email!),
                      // trailing: IconButton(
                      //   icon: const Icon(Icons.delete),
                      //   onPressed: () => controller.deleteUser(user.id.toString()),
                      // ),
                    );
                  },
                ),
            onLoading: const Center(child: CircularProgressIndicator()),
            onError: (error) => Center(child: Text(error.toString()))),
      ),
    );
  }
}
