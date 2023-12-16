import 'package:flutter/material.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/head_screen.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';
import '../widgets/home/sneak_list_builder.dart';
import 'explor_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: const HomeDrawer(),
        body: Padding(
          padding: EdgeInsets.zero,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: HomeAppBar(),
              ),
              const SliverToBoxAdapter(
                child: HeadScreen(),
              ),
              const SneakersListViewBuilder(),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 15,
              )),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 70, left: 70, top: 40, bottom: 20),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ExplorPage(),
                          ));
                    },
                    color: const Color.fromARGB(255, 255, 113, 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        "See All Collection",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 15,
              )),
              const SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
