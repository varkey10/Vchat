import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vchat/provider/chat__bloc.dart';
import 'package:vchat/screen/regs_page.dart';
import 'package:vchat/widgets/submit_btn.dart';
import 'package:vchat/widgets/text_form.dart';

class LoginPageSCreen extends StatefulWidget {
  const LoginPageSCreen({super.key});

  @override
  State<LoginPageSCreen> createState() => _LoginPageSCreenState();
}

final ChatBloc bloc = ChatBloc();

class _LoginPageSCreenState extends State<LoginPageSCreen> {
  late TextEditingController usernameController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      bloc: bloc,
      listenWhen: (previous, current) => current is ChatState,
      buildWhen: (previous, current) => current is ChatState,
      listener: (context, state) {
        // TODO: implement listener

        //   if (state is onLogginbuttonPressedState) {
        //     Navigator.push(context, MaterialPageRoute(
        //       builder: (context) {
        //         return RegisterPage();
        //       },
        //     ));
        //   }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Hey..Welcome back!",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                commonTextField(
                    hinttext: "User Name",
                    controller: usernameController,
                    context: context),
                const SizedBox(
                  height: 10,
                ),
                commonTextField(
                    hinttext: "Password",
                    controller: usernameController,
                    context: context),
                const SizedBox(
                  height: 10,
                ),
                SubmitButton(
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ));
                    // bloc.add(OnLoginbuttonPressedEvent());
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not a member ?"),
                    TextButton(
                        onPressed: () {
                          // bloc.add(OnRegisterbuttonPressedEvent());

                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return RegisterPage();
                            },
                          ));
                        },
                        child: const Text("Register Now"))
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
