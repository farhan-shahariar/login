import 'package:flutter/material.dart';
import 'package:login/utils/show_snack_bar.dart';
import '../utils/app_constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get Started with',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your email address!';
                      }
                      if (!AppConstants.emailRegExp.hasMatch(value!)) {
                        return 'Enter a valid email address!';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: _hidePassword,
                    decoration: InputDecoration(hintText: 'Password',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _hidePassword = !_hidePassword;
                      });
                    }, icon: Icon(_hidePassword ? Icons.visibility_off : Icons.visibility))),
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Enter your password!';
                      }
                      if (value!.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      if (!value.contains(AppConstants.capitalLetterRegExp)) {
                        return 'Password must contain at least one uppercase letter';
                      }

                      if (!value.contains(AppConstants.numberRegExp)) {
                        return 'Password must contain at least one number';
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  Visibility(
                    replacement: Center(child: CircularProgressIndicator()),
                    child: ElevatedButton(
                      onPressed: _onTapSignIn,
                      child: Text('Sign In'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignIn() {
    if (_formKey.currentState!.validate()) {
      showSnackBar(context, 'Sign In Successful!');
    } else {
      showSnackBar(context, 'Sign In Failed!', true);
    }
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
