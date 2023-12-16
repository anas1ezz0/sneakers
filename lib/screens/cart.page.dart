import 'package:flutter/material.dart';
import 'package:sneakers/models/data.dart';
import '../widgets/cart/cart_body.dart';
import '../widgets/cart/cart_head.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
                child: CartHeadPage(),
              ),
              SliverToBoxAdapter(child: CartBody()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                ),
              ),
              const SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
