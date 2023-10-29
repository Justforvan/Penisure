import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String greeting = '';

  String? makeGreet() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      greeting = 'Good Morning';
    } else if (hour < 17) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    makeGreet();
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFF002175),
          elevation: 0,
          toolbarHeight: 100,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/splashscreen penisure-02.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
                icon: const Icon(Icons.notifications),
              ),
            ),
          ],
        ),
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color(0xFF002175),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '$greeting,',
                                style: const TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'How\'s your erection today?',
                                style: TextStyle(fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ), Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [InkWell(
                                onTap: () {
                                  showModalBottomSheet(context: context, builder: (BuildContext context){
                                    return SizedBox(
                                      height: 300, // Set your desired height here
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              const Text(
                                                "Want to take the test?",
                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                              ),
                                              const SizedBox(height: 10),
                                              const Text(
                                                "This quick erectile function test will take around 5 minutes to complete. Your result can only be seen by you. For maximum accuracy, please answer the questions honestly. Also note that this test is intended as screening tool and not a diagnostic tool. If you have concerns about your erections, please consult a doctor.",
                                              ),
                                              const SizedBox(height: 24),
                                              ElevatedButton.icon(
                                                onPressed: () {
                                                  Navigator.pushNamed(context, "/test-center");
                                                },
                                                icon: Icon(MdiIcons.testTube),
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: const Color(0xFF002175),
                                                  foregroundColor: Colors.white,
                                                ),
                                                label: const Text("Start test"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  });
                                },
                                child: ClipRRect(borderRadius: BorderRadius.circular(10), child:
                                Image.asset('assets/splashscreen penisure-02.png',  width: MediaQuery.of(context).size.width * 0.2,
                                  height: MediaQuery.of(context).size.width * 0.2,),
                                ),
                              ),
                                const Padding(padding: EdgeInsets.only(top: 5),
                                  child: Text('TEST', style: TextStyle(fontWeight: FontWeight.bold),),),
                              ],
                            ),
                            Column(
                              children: [InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/facts-screen');
                                },
                                child: ClipRRect(borderRadius: BorderRadius.circular(10), child:
                                Image.asset('assets/splashscreen penisure-02.png',  width: MediaQuery.of(context).size.width * 0.2,
                                  height: MediaQuery.of(context).size.width * 0.2,),
                                ),
                              ),
                                const Padding(padding: EdgeInsets.only(top: 5),
                                  child: Text('FAQ', style: TextStyle(fontWeight: FontWeight.bold),),),
                              ],
                            ),
                            Column(
                              children: [InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, '/location');
                                },
                                child: ClipRRect(borderRadius: BorderRadius.circular(10), child:
                                Image.asset('assets/splashscreen penisure-02.png',  width: MediaQuery.of(context).size.width * 0.2,
                                  height: MediaQuery.of(context).size.width * 0.2,),
                                ),
                              ),
                                const Padding(padding: EdgeInsets.only(top: 5),
                                  child: Text('FIND', style: TextStyle(fontWeight: FontWeight.bold),),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
