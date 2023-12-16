import 'package:flutter/material.dart';
import 'package:sneakers/widgets/About/about_appbar.dart';

import '../widgets/About/about_body.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 220, 176),
        drawer: HomeDrawer(),
        body: Padding(
          padding: EdgeInsets.zero,
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AboutAppBar(),
              ),
              SliverToBoxAdapter(
                child: AboutBody(),
              ),
              SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
