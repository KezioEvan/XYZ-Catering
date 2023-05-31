import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class RegisterPageView extends StatefulWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  Widget build(context, RegisterPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Serving delicious \n  and quality food',
                style: greenEmerlandTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                color: greenFadedolor,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      QTextField(
                        label: "Email",
                        suffixIcon: Icons.email,
                        value: "demo@gmail.com",
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      QTextField(
                        label: "Password",
                        obscure: true,
                        validator: Validator.required,
                        suffixIcon: Icons.password,
                        value: "123456",
                        onChanged: (value) {},
                      ),
                      QDropdownField(
                        label: "As",
                        validator: Validator.required,
                        items: const [
                          {
                            "label": "Buyer",
                            "value": "Buyer",
                          },
                          {
                            "label": "Seller",
                            "value": "Seller",
                          }
                        ],
                        onChanged: (value, label) {},
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomeButton(
                title: 'Register',
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPageView(),
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Terms and Conditions',
                  style: greenSageColorTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<RegisterPageView> createState() => RegisterPageController();
}
