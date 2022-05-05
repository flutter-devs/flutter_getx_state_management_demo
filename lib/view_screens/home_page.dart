import 'package:flutter/material.dart';
import 'package:flutter_getx_statemanagement/view_screens/second_page.dart';
import 'package:get/get.dart';
import '../controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter GetX State Management Demo"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.teal,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/logo.png",
              width: 300,
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'You have pushed the button this many times:',
            ),
            const SizedBox(
              height: 10,
            ),
            Obx(
              () => Text(
                '${controller.count.value}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  primary: Colors.teal,
                ),
                onPressed: () {
                  Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.tealAccent);
                },
                child: const Text('Show Snackbar')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 18),
                  primary: Colors.teal,
                ),
                onPressed: () {
                  Get.defaultDialog(
                      title: 'GetX Alert',
                      middleText: 'Simple GetX alert',
                      textConfirm: 'Okay',
                      confirmTextColor: Colors.white,
                      textCancel: 'Cancel');
                },
                child: const Text('Show AlertDialog')),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    minimumSize: const Size.fromHeight(40),
                    primary: Colors.teal,
                  ),
                  child: Row(
                    children: const [
                      Spacer(),
                      Text("Go to next screen"),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: Icon(
                        Icons.arrow_right_alt,
                        size: 40,
                      ))
                    ],
                  ),
                  onPressed: () {
                    Get.to(() => const SecondPage());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
