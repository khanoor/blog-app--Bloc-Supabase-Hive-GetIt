import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign Up.",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            AuthField(hintText: 'Name', controller: nameController),
            const SizedBox(height: 15),
            AuthField(hintText: 'Email', controller: nameController),
            const SizedBox(height: 15),
            AuthField(hintText: 'Password', controller: nameController),
            const SizedBox(height: 15),
            AuthGradientButton(buttonText: 'Sign up', onPressed: () {}),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                  text: "Don't have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: [
                    TextSpan(
                        text: 'Sign In',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(
                                color: AppPallete.gradient2,
                                fontWeight: FontWeight.bold))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
