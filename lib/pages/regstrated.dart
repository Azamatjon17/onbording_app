import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:onbording_app/pages/loginpage.dart';

class RegstreetePage extends StatefulWidget {
  const RegstreetePage({super.key});

  @override
  State<RegstreetePage> createState() => _RegstreetePageState();
}

class _RegstreetePageState extends State<RegstreetePage> {
  TextEditingController namecontroler = TextEditingController();
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler1 = TextEditingController();
  TextEditingController passwordcontroler2 = TextEditingController();

  bool ishide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Register",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const Gap(5),
                const Text(
                  "Create your account for your schedule",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
                const Gap(15),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    hintText: "Your name",
                    prefixIcon: const Icon(Icons.person),
                  ),
                  controller: namecontroler,
                ),
                const Gap(20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                    hintText: "Your email",
                    prefixIcon: const Icon(Icons.email),
                  ),
                  controller: emailcontroler,
                ),
                const Gap(20),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(4),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          )),
                      hintText: "**************",
                      prefixIcon: const Icon(Icons.key),
                      suffix: IconButton(
                        onPressed: () {
                          ishide = !ishide;
                          setState(() {});
                        },
                        icon: Icon(ishide == true ? Icons.visibility_off : Icons.visibility),
                      )),
                  controller: passwordcontroler1,
                  obscureText: ishide,
                ),
                const Gap(20),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(4),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          )),
                      hintText: "**************",
                      prefixIcon: const Icon(Icons.key),
                      suffix: IconButton(
                        onPressed: () {
                          ishide = !ishide;
                          setState(() {});
                        },
                        icon: Icon(ishide == true ? Icons.visibility_off : Icons.visibility),
                      )),
                  controller: passwordcontroler2,
                  obscureText: ishide,
                ),
                const Gap(25),
                Center(
                  child: RichText(
                      text: TextSpan(children: [
                    const TextSpan(text: "You have an account?", style: TextStyle(color: Colors.grey, fontSize: 18)),
                    TextSpan(
                      text: " Sigin up here",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                        },
                      style: const TextStyle(color: Colors.black, fontSize: 18, decoration: TextDecoration.underline),
                    )
                  ])),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: const LinearGradient(colors: [Colors.blue, Color(0xff4554F1)])),
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const Gap(10),
                const Text(
                  "By continuing. you aggre to Loana's",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),
                ),
                const Gap(5),
                Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Terms of Use ",
                      style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),
                    ),
                    TextSpan(text: "&", style: TextStyle(color: Colors.grey, fontSize: 15)),
                    TextSpan(
                      text: " Privacy Policy",
                      style: TextStyle(color: Colors.black, fontSize: 15, decoration: TextDecoration.underline),
                    )
                  ])),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
