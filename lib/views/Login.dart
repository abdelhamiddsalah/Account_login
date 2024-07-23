
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool action = true;
  bool action2 = true;
   Color iconColor = Colors.black;
    Color background = Colors.white;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbar(),
    body: Container(
        margin: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/Login-cuate.jpg", width: 200,),
              const SizedBox(height: 15,),
              TextFormField(
                 decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: "Email",
                  border: const OutlineInputBorder(
                  ),
                    enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder:const OutlineInputBorder()
                 )
              ),
              const SizedBox(height: 15,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  labelText: "Password",        
                  enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder:const OutlineInputBorder()
                 )
                 
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      color: background,
                      
                        child: InkWell(
                          onTap: (){
                            
                           setState(() {
                            background= action2 ? const Color(0xff1bc073) : Colors.white;
                          iconColor = action ? Colors.white : Colors.black;
                            action = !action;
                            action2 = !action2;
                           });
                          },
                          child:  Icon(Icons.check, color: iconColor)),
                      ),
                  ),
                  
                  const Text("Remember Me"),
                  const Spacer(),
                  const Text("Forget Password?"),
                ],
              ),
              const SizedBox(height: 20,),
               Button(),
               const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account? "),
                  Text("Register" , style: TextStyle(color:Color(0xff1bc073), fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
  backgroundColor: Colors.white,
   leading: const Icon(Icons.arrow_back , color: Colors.black,),
   title:const Text("Account Login", style: TextStyle(fontWeight: FontWeight.bold),)
  );}}


class Button extends StatelessWidget {
  const Button({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: (){},
     color: const Color(0xff1bc073),minWidth: 350, height: 40, child: const Text("Login", style: TextStyle(color: Colors.white),),);
  }
}