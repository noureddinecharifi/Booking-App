import 'package:airtrip/utils/constants.dart';
import 'package:airtrip/utils/functions.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

class SignIn extends StatefulWidget {
  final void Function()? onTap;
  const SignIn({
    super.key,
    this.onTap,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isOn = false;

  //login function
  void login() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
    //try to sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      if (context.mounted) Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      displayMessage(e.code, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        context.go('/');
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  Text(
                    "Forgot your password?",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.2,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(35))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Let’s get Something",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "Good to see you back",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                        color: Colors.black45, fontSize: 20),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: const Color(0xff1877F2)),
                                    child: Center(
                                        child: Image.asset(
                                      facebook,
                                      width: 20,
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                                    child: Center(
                                        child: Image.asset(
                                      google,
                                      width: 35,
                                    )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: const Color(0xff1DA1F2)),
                                    child: Center(
                                        child: Image.asset(
                                      twitter,
                                      width: 35,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              CustomInput(
                                controller: emailController,
                                prefixIcon: Icons.person,
                                validator: (p0) {
                                  return null;
                                },
                                hintText: 'User Email',
                                obscure: false,
                              ),
                              CustomInput(
                                controller: passwordController,
                                prefixIcon: Icons.lock,
                                validator: (p0) {
                                  return null;
                                },
                                hintText: 'Password',
                                obscure: true,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Remember me",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  Switch(
                                    onChanged: (value) {
                                      setState(() {
                                        _isOn = value;
                                      });
                                    },
                                    value: _isOn,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomButton(
                                text: 'SignIn',
                                onTap: login,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: widget.onTap,
                                  child: RichText(
                                    text: TextSpan(
                                        text: 'Don\'t have an account? ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'SignUp',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall
                                                ?.copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary),
                                          )
                                        ]),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
