import 'package:flutter/material.dart';
import 'package:vchat/screen/login_page.dart';
import 'package:vchat/widgets/submit_btn.dart';
import 'package:vchat/widgets/text_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

late TextEditingController _controller = TextEditingController();

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
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
              "Welcome to registration!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 14),
            ),
            const SizedBox(
              height: 10,
            ),
            commonTextField(
                hinttext: "User Name",
                controller: _controller,
                context: context),
            const SizedBox(
              height: 10,
            ),
            commonTextField(
                hinttext: "Password",
                controller: _controller,
                context: context),
            const SizedBox(
              height: 10,
            ),
            SubmitButton(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageSCreen(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
