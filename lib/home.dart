import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'dashboard.dart';



class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    var _controller1 = TextEditingController();
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          //untuk memaksimalkan lebar pakai crossAxisAlignment
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
              margin: EdgeInsets.only(top: 16.0,right: 16),
              child: Text('Version 1.0.0 (Build no.19)',
              textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 12
                ),
              ),
            ),
            ),
      Expanded(
        flex: 2,
        child: Container(
        child: Image.asset('images/icon_supervision.png'),
      ),
      ),

      Expanded(
        flex: 7,
        child: SafeArea(
        // padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

                Container(
                  margin: const EdgeInsets.only(left: 16,right: 16),
                  color: Colors.white,
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(

                      fillColor: Colors.white,
                    filled: true,
                      icon: const ImageIcon(
                        // Icons.email,
                        AssetImage('images/sfa_user.png'),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => _controller.clear(),
                        icon: Icon(Icons.clear),
                      ),
                      // hintText: 'Masukkan Username',
                      labelText: 'Username',
                      border: OutlineInputBorder(),

                    ),
                    keyboardType: TextInputType.name,

                  ),
                ),

            Container(
              margin: const EdgeInsets.only(left: 16,right: 16, top: 16),
              color: Colors.white,
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  icon: ImageIcon(
                    // Icons.password,
                    AssetImage('images/pass.png'),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => _controller1.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  // hintText: 'Masukkan Password',
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),

              ),
            ),

        Container(
        margin: const EdgeInsets.only(left: 16,right: 16,top: 16),
          color: Colors.lightBlue,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,
                shadowColor: Colors.blueAccent,
                minimumSize: Size.fromHeight(50), // fromHeight use double.infinity as width and 40 is the height
              ),
              onPressed: () {
                final text = _controller.value.text;
                if(text.isEmpty ) {
                  Fluttertoast.showToast(
                      msg: "Isi 1 huruf untuk Username !!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER
                  );
                }else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashBoard()),
                  );
                  _controller.clear();
                }

              },
              child: Text('Login'),
            ),
        ),

            Expanded(
              flex: 3,
              child: Container(
                margin: EdgeInsets.all(16),
                alignment: Alignment.bottomRight,
                // child: ImageIcon(AssetImage('images/sfa_update.png'),
                  child: IconButton(icon: const Icon(Icons.update),
                      onPressed: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.INFO,
                          borderSide: BorderSide(color: Colors.green, width: 2),
                          buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                          headerAnimationLoop: false,
                          animType: AnimType.BOTTOMSLIDE,
                          title: 'Konfirmasi Update APK',
                          desc: 'Apakah anda yakin akan memperbarui aplikasi SuperVision ?\nVersion APK Saat ini : \n Version APK Update :',
                          showCloseIcon: true,
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();
                      }

                  ),
                ),
              ),


          ],
        ),
      ),
      ),


          ],
        ),
      ),
    );
  }
}



