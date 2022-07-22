import 'package:flutter/material.dart';
import 'package:flutter_layout_responsive/widgets/input_showdow_widget.dart';
import 'package:flutter_layout_responsive/widgets/version_info_widget_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 1/2,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: 10,
              right: 10
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                  size: 200,
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0,0),
                        blurRadius: 2
                      )
                    ]
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [

                      builTittlePage(),

                      const SizedBox(
                        height: 20,
                      ),
                      
                      buildInputTextEmail(),

                      const SizedBox(
                        height: 20,
                      ),

                      buildTextInputPassword(),

                      const SizedBox(
                        height: 20,
                      ),

                      buildElevatedButtonLogin(),

                      const SizedBox(
                        height: 20,
                      ),

                      Center(
                        child: TextButton(
                          onPressed: (){},
                          child:  Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                              'Don´t have an account ? ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal
                                )
                              ),
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                )
                              ),
                            ],
                          ),
                        ),
                      ),

                      Center(
                        child: TextButton(
                          child: const Text(
                            'Forgot password !',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          onPressed: (){},
                        ),
                      )

                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                VersionInfoWidgetWidget(),
              
              ],
            ),
          ),
        ),
      )
    );
  }

  Widget builTittlePage(){
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Sign In',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
      ),
    );
  }

  Widget buildInputTextEmail() {
    return InputShadow(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.solidEnvelope),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: 'Enter a email',
        ),
      ),
    );
  }

  Widget buildTextInputPassword() {
    return InputShadow(
      child: const TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.lock),
          border: OutlineInputBorder(
            borderSide: BorderSide.none
          ),
          hintText: 'Enter a password',
        ),
      ),
    );
  }

  Widget buildElevatedButtonLogin() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(57),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: const Text(
        'Login',
        style: TextStyle(fontSize: 20),
      ),
      onPressed: () {},
    );
  }
  
}
