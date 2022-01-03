import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}
class _DashBoardState extends State<DashBoard> {
  bool loading = false;

  var currentSelectedValue;
  List<String> pelanggan = ["Pelanggan Aktif", "Pelanggan Tidak Aktif", "Umum"];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        // leading: Image.asset('images/x_house.png'
        leading: Icon(Icons.home_work
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.map_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            onPressed: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.INFO,
                borderSide: BorderSide(color: Colors.green, width: 2),
                buttonsBorderRadius: BorderRadius.all(Radius.circular(2)),
                headerAnimationLoop: false,
                animType: AnimType.BOTTOMSLIDE,
                title: 'Konfirmasi Log Out',
                desc: 'Apakah anda yakin akan keluar ?',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {
                  Navigator.pop(context);
                },
              )..show();
            },
          ),

        ],
      ),


      body: ListView(
        // padding: EdgeInsets.all(16.0),
        children: <Widget>[

      Container(
        margin: EdgeInsets.only(right:16, left: 16, top:16,bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
      CircleAvatar(
      backgroundColor: Colors.blue,
        child: Image.asset('images/sfa_user.png',
        )
        ),
        Column(
          children: <Widget>[
            Text("Nama Pelanggan",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
            ),
            Text("Date : 01-01-2022"),
          ],
        ),
         ElevatedButton(
          onPressed: (){
            // Aksi ketika button diklik
          },
          child: Text("PROFILE"),
        )
      ]
      ),
      ),


          Container(
            margin: EdgeInsets.only(right:16, left: 16, top:16,bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Image.asset('images/sfa_filter.png',
                      )
                  ),

                   Expanded(
                     flex: 4,
                       child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      alignment: Alignment.center,
                      hint: Text("Pilih Pelanggan"),

                      value: currentSelectedValue,
                      isDense: true,
                      onChanged: (newValue) {
                        setState(() {
                          currentSelectedValue = newValue;
                        });
                        print(currentSelectedValue);
                      },
                      items: pelanggan.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,
                          textAlign: TextAlign.center,),
                        );
                      }).toList(),
                    ),
                  ),
                   ),
                       ]
            ),
          ),

      Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.grey),
        ),

          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex:2,
                    child: Text(
                    'MTD SUMMARY',
                    style: TextStyle(fontSize: 16,
                    color: Colors.blue),
                  ),
                  ),

                  Expanded(
                    flex:2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                            flex: 9,
                            child: Text('Time Gone 77%',
                              textAlign: TextAlign.right,),

                        ),
                        Expanded(
                            flex: 1,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('images/sfa_refresh.png',
                                )
                            ),
                        )
                      ],
                    )
                  )
                ],

              ),

    Align(alignment: Alignment.centerLeft,
    child: Text('Volume',
    textAlign: TextAlign.left,
    style: TextStyle(
    color: Colors.black),),
              ),

              Container(

                margin: EdgeInsets.only(top:3,bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('70%',
                            textAlign: TextAlign.center,
                          ),
                      ),

    Expanded(
    flex: 2,
                      child: Column(
                        children: <Widget>[

                          Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.all(5),
                                  child: LinearProgressIndicator(
                                    value: 0.7,
                                  ),
                          ),
                      Text('3/10',
                      textAlign: TextAlign.center,)



                        ],
                      ),
    ),

                    ]
                ),
              ),



              Align(alignment: Alignment.centerLeft,
                child: Text('Call',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black),),
              ),

              Container(

                margin: EdgeInsets.only(top:3,bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('50%',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[

                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              child: LinearProgressIndicator(
                                value: 0.5,
                              ),
                            ),
                            Text('5/10',
                              textAlign: TextAlign.center,)



                          ],
                        ),
                      ),

                    ]
                ),
              ),


              Align(alignment: Alignment.centerLeft,
                child: Text('Productive Call',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black),),
              ),

              Container(

                margin: EdgeInsets.only(top:3,bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('50%',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[

                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              child: LinearProgressIndicator(
                                value: 0.5,
                              ),
                            ),
                            Text('5/10',
                              textAlign: TextAlign.center,)



                          ],
                        ),
                      ),

                    ]
                ),
              ),


              Align(alignment: Alignment.centerLeft,
                child: Text('Golden Point',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black),),
              ),

              Container(

                margin: EdgeInsets.only(top:3,bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('50%',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[

                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              child: LinearProgressIndicator(
                                value: 0.5,
                              ),
                            ),
                            Text('5/10',
                              textAlign: TextAlign.center,)



                          ],
                        ),
                      ),

                    ]
                ),
              ),


              Align(alignment: Alignment.centerLeft,
                child: Text('Avg. Stop Call',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black),),
              ),

              Container(

                margin: EdgeInsets.only(top:3,bottom: 3),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('100%',
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[

                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              child: LinearProgressIndicator(
                                value: 0.10,
                              ),
                            ),
                            Text('10/10',
                              textAlign: TextAlign.center,)



                          ],
                        ),
                      ),

                    ]
                ),
              ),




    ],
    ),
    ),


      Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.red),
        ),
        child: Center(
          child: Text(
            'UNDER CONSTRUCTION',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
      Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.green),
        ),
        child: Center(
          child: Text(
            'FINDING INSPIRATION',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
      ],
    ),





      );
  }

}
