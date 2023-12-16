import 'package:flutter/material.dart';
import '../widgets/contact/contact_body.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(255, 230, 198, 1),
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
                child: ContactBody(),
              ),
              SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
