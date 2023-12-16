// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/explore/explor_headsc.dart';
import '../widgets/explore/explor_listBuilder.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';

class ExplorPage extends StatefulWidget {
  const ExplorPage({super.key});

  @override
  State<ExplorPage> createState() => _ExplorPageState();
}

class _ExplorPageState extends State<ExplorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: HomeDrawer(),
        body: Padding(
          padding: EdgeInsets.zero,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: HomeAppBar(),
              ),
              const SliverToBoxAdapter(
                child: ExplorHeadScreen(),
              ),
              const ExploreListViewBuilder(),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 60,
              )),
              const SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
