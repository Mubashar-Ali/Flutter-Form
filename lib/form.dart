import 'package:flutter/material.dart';
import 'package:flutter_form/myButton.dart';
import 'package:flutter_form/validation.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.sizeOf(context).width;

    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(
            width: w * .7,
            child: TextFormField(
              controller: nameController,
              // autofocus: true,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This Field is required';
                }
                return null;
              },
              decoration: const InputDecoration(
                helperText: '',
                hintText: 'Enter Name',
                // border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: w * .7,
            child: TextFormField(
              controller: phoneController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This Field is required';
                } else if (!value.isPhone()) {
                  return 'Invalid phone no';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Phone No',
                helperText: '',
                // border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: w * .7,
            child: TextFormField(
              controller: emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This Field is required';
                } else if (!value.isEmail()) {
                  return 'Invalid Email';
                }
                return null;
              },
              // autovalidateMode: AutovalidateMode.always,
              decoration: const InputDecoration(
                // hintText: 'Email Address',
                hintText: 'Email Address',
                // border: OutlineInputBorder(),
                helperText: '',
              ),
            ),
          ),
          SizedBox(
            width: w * .7,
            child: TextFormField(
              controller: passwordController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This Field is required';
                } else if (!value.isPassword()) {
                  return 'Minimun 8 digits required for Password';
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Enter Password',
                // border: OutlineInputBorder(),
                helperText: '',
              ),
            ),
          ),
          const SizedBox(height: 5),
          MyButton(
            onPressed: btnSubmit,
          ),
        ],
      ),
    );
  }

  void btnSubmit() {
    setState(() {
      if (formKey.currentState!.validate()) {}
    });
  }
}
