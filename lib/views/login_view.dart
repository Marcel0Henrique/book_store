import 'package:book_store/widgets/custom_elevatedbuttom.dart';
import 'package:book_store/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Container(
              alignment: Alignment.center,
              child: Card(
                color: Color(0xff1c1c1c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        "Book Store",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomTextFormField(
                        prefixIcon: Icon(Icons.person),
                      ),
                      const SizedBox(height: 20),
                      const CustomTextFormField(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                      const SizedBox(height: 30),
                      CustomElevatedButtom(
                        onPressed: () {},
                        title: "Entrar",
                      ),
                      const SizedBox(height: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Esqueci minha senha"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Ou",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          CustomElevatedButtom(
            inverseColor: true,
            onPressed: () {},
            title: "Cadastrar",
          ),
        ],
      ),
    );
  }
}
