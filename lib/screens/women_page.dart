import 'package:flutter/material.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';
import '../widgets/women/women_head.dart';
import '../widgets/women/women_listbuilder.dart';

class WomenPage extends StatefulWidget {
  const WomenPage({super.key});

  @override
  State<WomenPage> createState() => _WomenPageState();
}

class _WomenPageState extends State<WomenPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.white,
        drawer: HomeDrawer(),
        body: Padding(
          padding: EdgeInsets.zero,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: HomeAppBar(),
              ),
              SliverToBoxAdapter(
                child: WomenHead(),
              ),
              WomensListViewBuilder(),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 15,
              )),
              SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
