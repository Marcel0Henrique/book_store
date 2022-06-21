import 'package:book_store/controllers/login_controller.dart';
import 'package:book_store/widgets/custom_elevatedbuttom.dart';
import 'package:book_store/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 0,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,
            ),
            child: Container(
              alignment: Alignment.center,
              child: Card(
                elevation: 16,
                color: Color(0xff1c1c1c),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.038),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.book,
                          color: Colors.orange,
                          size: MediaQuery.of(context).size.width * 0.1),
                      Text(
                        "Book Store",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05),
                      const CustomTextFormField(
                        prefixIcon: Icon(Icons.person),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04),
                      Consumer(
                        builder: (context, _controller, child) =>
                            CustomTextFormField(
                          obscureText: true,
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),
                        ),
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
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.03,
            ),
            child: Text(
              "Ou",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
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
