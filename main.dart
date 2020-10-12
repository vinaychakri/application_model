import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(basics());
}
class basics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:appBasics(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class appBasics extends StatefulWidget {
  @override
  _appBasicsState createState() => _appBasicsState();
}

class _appBasicsState extends State<appBasics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: (){},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white, 
                        onPressed: (){},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),

          Padding(
              padding:EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Design',
                style: TextStyle(
                  fontFamily:'',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
                )),
                SizedBox(width: 12.0),
                Text('application_1',
                    style: TextStyle(
                    fontFamily:'',
                    color: Colors.white,
                    //fontWeight: FontWeight.bold,
                    fontSize: 25.0
                ))
              ],
            ),
          ),
          SizedBox(height: 40.0,),
          Container(
            height: MediaQuery.of(context).size.height - 150.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0),
                  bottomRight: Radius.elliptical(150, 70)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0,right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: [
                        _buildItem('assets/download.jpg', 'item_1', '\$12.00'),
                        _buildItem('assets/download.jpg', 'item_2', '\$13.00'),
                        _buildItem('assets/download.jpg', 'item_3', '\$14.00'),
                        _buildItem('assets/download.jpg', 'item_4', '\$15.00'),
                        _buildItem('assets/download.jpg', 'item_5', '\$16.00'),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 65,
                      width: 75,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child:IconButton(
                          icon:Icon(Icons.search,color: Colors.black,),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child:IconButton(
                          icon:Icon(Icons.shopping_basket,color: Colors.black,),
                          onPressed: (){},
                        ),
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text('Check Out',
                            style: TextStyle(
                                fontFamily:'',
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                                fontSize: 18.0
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildItem(String imgpath, String itemName,String itemPrice){
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 10.0),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgpath,
                    child: Image(
                      image: AssetImage(imgpath),
                      fit: BoxFit.cover,
                      height: 50.0,
                      width: 70.0,
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemName,
                          style: TextStyle(
                              fontFamily:'',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0
                          )
                      ),
                      Text(itemPrice,
                          style: TextStyle(
                              fontFamily:'',
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15.0
                          )
                      )
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
              icon:Icon(Icons.add),
              color: Colors.black,
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}


 
