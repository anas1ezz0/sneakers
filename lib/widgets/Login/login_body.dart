import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneakers/bloc/loginCubit/cubit.dart';
import 'package:sneakers/bloc/loginCubit/status.dart';
import 'package:sneakers/compo/compo.dart';


class LoginBody extends StatelessWidget {
     LoginBody({super.key});
  var formKey =  GlobalKey<FormState>();
     var emailController = TextEditingController();
     var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit,ShopLoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
                color: Colors.white,
                height: 400,
                width: 300,
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Welcome Back!",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        child: TextFormField(

                          controller:emailController ,
                          validator: (value ){
                            if(value!.isEmpty){
                              return 'User name must not be empty';
                            }
                            return null;
                          },
                          scrollPadding: const EdgeInsets.symmetric(horizontal: 5),
                          cursorColor: Colors.black,
                          cursorWidth: 1,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.black),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color.fromRGBO(255, 230, 198, 1),
                              hintText: 'Username',
                              hintStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                  const BorderSide(color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(8)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.orange, width: 2))),
                        ),
                      ),
                      Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                          child: defaultFormField(
                            type: TextInputType.number,
                            controller: passwordController,
                            validate:(value ){
                              if(value!.isEmpty){
                                return 'password must not be empty';
                              }
                              return null;
                            },
                            cursorWidth: 1,
                            isPassword:  ShopLoginCubit.get(context).isPassword,
                            suffix: ShopLoginCubit.get(context).suffix,
                            suffixPressed: (){
                              ShopLoginCubit.get(context).changePasswordVisibility();
                            },
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, color: Colors.black),
                            cursorColor:Colors.black ,
                            scrollPadding: const EdgeInsets.symmetric(horizontal: 5), decoration: InputDecoration(),
               
                             )
                        // TextFormField(
                        //   controller: passwordController,
                        //   validator: (value ){
                        //     if(value!.isEmpty){
                        //       return 'password must not be empty';
                        //     }
                        //     return null;
                        //   },
                        //
                        //   keyboardType: TextInputType.visiblePassword,
                        //
                        //   decoration: InputDecoration(
                        //
                        //       filled: true,
                        //       fillColor: const Color.fromRGBO(255, 230, 198, 1),
                        //       hintText: 'Password',
                        //       hintStyle: const TextStyle(
                        //           color: Colors.grey, fontWeight: FontWeight.w400),
                        //       enabledBorder: UnderlineInputBorder(
                        //           borderSide:
                        //               const BorderSide(color: Colors.transparent),
                        //           borderRadius: BorderRadius.circular(8)),
                        //       focusedBorder: const OutlineInputBorder(
                        //           borderSide:
                        //               BorderSide(color: Colors.orange, width: 2))),
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forget Password ?",
                              style: TextStyle(color: Colors.grey[800]),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                            height: 35,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 49),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: const Color.fromARGB(255, 255, 115, 0)),
                            child: MaterialButton(
                                onPressed: () {if(formKey.currentState!.validate()){
                                  print(emailController.text);
                                }},
                                child: const Text(
                                  "Login",
                                  style: TextStyle(fontSize: 17, color: Colors.white),
                                ))),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                            height: 35,
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 49),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0),
                                color: Colors.black),
                            child: MaterialButton(
                                onPressed: () {
                                  if(formKey.currentState!.validate()){
                                    print(emailController.text);
                                  }
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(fontSize: 17, color: Colors.white),
                                ))),
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
