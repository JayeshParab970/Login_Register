import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool hide=true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'),fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35 ,top: 30) ,
              child: Text('Create\nAccount',
                style: TextStyle(color: Colors.white ,fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.28,
                      right:35,
                      left:35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: 'Name',
                            prefixIcon: Icon(Icons.abc,color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.black)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email,color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                          obscureText: hide,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white)),
                                  hintText: 'Password',
                                  prefixIcon: Icon(Icons.password,color: Colors.white),
                                  suffixIcon:IconButton(onPressed:(){setState(() {
                                  hide= !hide;
                                    });

                                  },icon:hide? Icon(Icons.visibility_off):Icon(Icons.visibility),),
                                    hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            Text('Sign Up',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,fontWeight: FontWeight.w700),
                            ),
                            CircleAvatar(
                              radius:30,
                              backgroundColor: Colors.black,
                              child: IconButton(
                                color: Colors.white,
                                onPressed: (){Navigator.pushNamed(context, 'welcome');},
                                icon: Icon(Icons.arrow_forward),
                              ),
                            )
                          ]
                      ),
                      SizedBox(
                        height: 40,
                      ),

                    ],

                      )
                  )
              ),
          ],
        ),
      ),
    );
  }
}
