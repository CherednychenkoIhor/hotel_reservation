import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_reservation/auth/application/auth_bloc.dart';
import 'package:hotel_reservation/navigation/app_router.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late final AuthBloc _authBloc = context.read<AuthBloc>();

  final TextEditingController emailController =
      TextEditingController(text: 'test@test.com');

  final TextEditingController passwordController =
      TextEditingController(text: 'test123');

  final TextEditingController userNameController = TextEditingController();

  final TextEditingController verifyPasswordController =
      TextEditingController();

  final _signInFormKey = GlobalKey<FormState>();
  final _signUpFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _signIn.init();
    _authBloc.add(const AuthEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
        bloc: _authBloc,
        listener: (context, state) {
          if (state.user != null) {
            context.replaceRoute(const HomeRoute());
          }
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/img.jpg'),
                      fit: BoxFit.cover),
                ),
                child: state.isLoading || state.user != null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxWidth: 800,
                            maxHeight: 450,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              state.isSignIn ? signIn() : haveAccount(),
                              state.isSignIn ? haveNotAccount() : signUp(),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          );
        });
  }

  Widget haveAccount() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Haven Account',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'SIGN IN NOW',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              passwordController.clear();
              verifyPasswordController.clear();
              userNameController.clear();
              emailController.clear();
              _authBloc.add(const AuthEvent.goSignIn());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget haveNotAccount() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Haven\'t Account',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'SIGN UP NOW',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              passwordController.clear();
              verifyPasswordController.clear();
              userNameController.clear();
              emailController.clear();
              _authBloc.add(const AuthEvent.goSignUp());
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget signIn() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Form(
        key: _signInFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign In',
              style: TextStyle(color: Colors.black),
            ),
            // Row(
            //   children: [
            //     // _signIn.renderButton(),
            //     InkWell(
            //       onTap: () {
            //         _authBloc.add(const AuthEvent.signInWithGoogle());
            //       },
            //       child: const CircleAvatar(
            //         child: Icon(Icons.account_circle),
            //       ),
            //     ),
            //     const SizedBox(width: 10),
            //     const CircleAvatar(
            //       child: Icon(Icons.account_circle),
            //     ),
            //     const SizedBox(width: 10),
            //     const CircleAvatar(
            //       child: Icon(Icons.account_circle),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 10),
            const Text(
              'You have account? Sign in now!',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: Container(
                width: 210,
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please fill email';
                    } else if (value.trim() == '') {
                      return 'Please fill email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 210,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill password';
                  } else if (value.trim() == '') {
                    return 'Please fill password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (_signInFormKey.currentState!.validate()) {
                  _authBloc.add(
                    SignInWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget signUp() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Form(
        key: _signUpFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(color: Colors.black),
            ),
            // Row(
            //   children: [
            //     InkWell(
            //       onTap: () {
            //         _authBloc.add(const AuthEvent.signInWithGoogle());
            //       },
            //       child: const CircleAvatar(
            //         child: Icon(Icons.account_circle),
            //       ),
            //     ),
            //     const SizedBox(width: 10),
            //     const CircleAvatar(
            //       child: Icon(Icons.account_circle),
            //     ),
            //     const SizedBox(width: 10),
            //     const CircleAvatar(
            //       child: Icon(Icons.account_circle),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 10),
            const Text(
              'Create new account',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 210,
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill email';
                  } else if (value.trim() == '') {
                    return 'Please fill email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 210,
              child: TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill username';
                  } else if (value.trim() == '') {
                    return 'Please fill username';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 210,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please fill password';
                  } else if (value.trim() == '') {
                    return 'Please fill password';
                  }
                  if (value.length < 6) {
                    return 'The password must contain more than 6 characters';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: 210,
              child: TextFormField(
                controller: verifyPasswordController,
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please repeat password';
                  } else if (value.trim() == '') {
                    return 'Please repeat password';
                  }
                  if (value != passwordController.text) {
                    return 'Passwords don\'t match';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Verify password',
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                if (_signUpFormKey.currentState!.validate()) {
                  _authBloc.add(
                    CreateUserWithEmailAndPassword(
                      email: emailController.text,
                      password: passwordController.text,
                      userName: userNameController.text,
                    ),
                  );
                }
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
