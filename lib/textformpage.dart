import 'package:flutter/material.dart';
import 'package:my_app/textformpage2.dart';

import 'main.dart';

class textFormPage extends StatefulWidget {
  const textFormPage({super.key});

  @override
  State<textFormPage> createState() => _textFormPageState();
}

class _textFormPageState extends State<textFormPage> {
  TextEditingController name_controller=TextEditingController();
  TextEditingController number_controller=TextEditingController();
  TextEditingController email_controller=TextEditingController();
  TextEditingController address_controller=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  bool password=false;
  RegExp phone_validation=RegExp(r"[0-9]{10}$");
  RegExp email_validation=RegExp(r"[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");
  RegExp password_validation=RegExp(r"(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,10}$");
  final formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Text Form Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.all(width*0.03),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  controller: name_controller,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  // obscureText: true,
                  // obscuringCharacter: "+",
                  // maxLength: 5,
                  // maxLines: 5,
                  // minLines: 3,
                  style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    // prefixText: "naa",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.w800
                    // ),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter Your Name",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(
                              color: Colors.yellow
                          )
                      )
                  ),
                ),
                SizedBox(height: width*0.03,),
                TextFormField(
                  controller: number_controller,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.done,
                  // obscureText: true,
                  // obscuringCharacter: "+",
                  maxLength: 10,
                  // maxLines: 5,
                  // minLines: 3,
                  style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(! phone_validation.hasMatch(value!))
                      {
                        return "Enter Valid Number";
                      }
                    else
                      {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.phone),
                    // prefixText: "naa",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.w800
                    // ),
                    labelText: "Number",
                    labelStyle: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter Your Number",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                      // focusedBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(width*0.03),
                      //     borderSide: BorderSide(
                      //         color: Colors.yellow
                      //     )
                      // )
                  ),
                ),
                SizedBox(height: width*0.03,),
                TextFormField(
                  controller: email_controller,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  // obscureText: true,
                  // obscuringCharacter: "+",
                  // maxLength: 5,
                  // maxLines: 5,
                  // minLines: 3,
                  style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(! email_validation.hasMatch(value!))
                      {
                        return("Enter Valid Email");
                      }
                    else
                      {
                        return null;
                      }
                  },
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    // prefixText: "naa",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.w800
                    // ),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter Your Email",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                      // focusedBorder: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(width*0.03),
                      //     borderSide: BorderSide(
                      //         color: Colors.yellow
                      //     )
                      // )
                  ),
                ),
                SizedBox(height: width*0.03,),
                TextFormField(
                  controller: address_controller,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  // obscureText: true,
                  // obscuringCharacter: "+",
                  //  maxLength: 5,
                   maxLines:null,
                  // minLines: 2,
                  style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: InputDecoration(
                     suffixIcon: Icon(Icons.speaker_notes_sharp),
                    // prefixText: "naa",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.w800
                    // ),
                    labelText: "Address",
                    labelStyle: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter Your Address",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(
                              color: Colors.yellow
                          )
                      )
                  ),
                ),
                SizedBox(height: width*0.03,),
                TextFormField(
                  controller: password_controller,
                  // textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  obscureText: password?true:false,
                  // obscuringCharacter: "+",
                   maxLength: 8,
                  // minLines: 2,
                  style: TextStyle(
                    fontSize: width*0.04,
                    fontWeight: FontWeight.w500,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction ,
                  validator: (value) {
                    if(! password_validation.hasMatch(value!))
                      {
                        return("Enter a valid Password");
                      }
                    else
                      {
                        return null;
                      }
                  },
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () {
                        password=!password;
                        setState(() {

                        });
                      },
                        child:
                        password==true?Icon(Icons.visibility_off):Icon(Icons.remove_red_eye),
                    ),
                    // prefixText: "naa",
                    // prefixStyle: TextStyle(
                    //   fontWeight: FontWeight.w800
                    // ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: width*0.04,
                      fontWeight: FontWeight.w500,
                    ),
                    hintText: "Enter Your Password",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: width*0.04,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(width*0.03),
                      borderSide: BorderSide(
                        color: Colors.green
                      )
                    ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width*0.03),
                          borderSide: BorderSide(
                              color: Colors.yellow
                          )
                      )
                  ),
                ),
                SizedBox(height: width*0.03,),
                InkWell(

                  onTap: () {
                    if( name_controller.text!=''&&
                        number_controller.text!='' &&
                        email_controller.text!=''&&
                        address_controller.text!=''&&
                        password_controller.text!=''&&
                    formkey.currentState!.validate()
                    )
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => textFormPage2(
                          name: name_controller.text,
                          number: number_controller.text,
                          email: email_controller.text,
                          address: address_controller.text,
                          password: password_controller.text,

                        ),));

                      }
                    else{
                          name_controller.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Name"))):
                          number_controller.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Number"))):
                          email_controller.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Email"))):
                          address_controller.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Address"))):
                          password_controller.text==''?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Password"))):
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Your Valid details")));
                    }

                  },
                  child: Container(
                    height: width*0.15,
                    width: width*0.26,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width*0.03),
                       color: Colors.red,
                    ),
                    child: Center(
                        child: Text("Submit",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: width*0.045
                        ),)
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
