import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/bloc/loginCubit/cubit.dart';
import '../widgets/Login/login_body.dart';
import '../widgets/home/app_bar.dart';
import '../widgets/home/home_drawer.dart';
import '../widgets/home/information.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color.fromRGBO(255, 230, 198, 1),
        drawer:const HomeDrawer(),
        body: Padding(
          padding: EdgeInsets.zero,
          child: CustomScrollView(
            physics:const BouncingScrollPhysics(),
            slivers: [
              const  SliverToBoxAdapter(
                child: HomeAppBar(),
              ),
              SliverToBoxAdapter(
                child: LoginBody(),
              ),
              const   SliverToBoxAdapter(
                child: InformationWidget(),
              ),
            ],
          ),
        ));
  }
}
