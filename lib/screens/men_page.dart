import 'package:flutter/material.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';
import '../widgets/men/head.dart';
import '../widgets/men/mens_listbuilder.dart';

class MenPage extends StatefulWidget {
  const MenPage({super.key});

  @override
  State<MenPage> createState() => _MenPageState();
}

class _MenPageState extends State<MenPage> {
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
                child: Head(),
              ),
              MensListViewBuilder(
                dataList: [],
              ),
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
