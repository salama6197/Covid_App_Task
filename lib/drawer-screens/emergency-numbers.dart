
import 'package:covid19_care/styles-consts/style-config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class EmergencyNumbers extends StatelessWidget {
  static const String id = 'emergency';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Config.scaffoldColor,
      appBar: AppBar(
        backgroundColor: Color(0xff1f283c),
        title: Text('Emergency Numbers',),
        centerTitle: true,
      ),
      body: Container(
        height: height,
        width: width,
        color: Color(0xff1f283c),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
            _buildCard('Salama Nafei', 'Mansoura' , 'available from 2pm : 7pm','assets/doctor/salama.jpg'),
          ],
        ),
      ),
    );
  }
  _buildCard(String title,String subTitle , String secSubTitle ,String image){
    return Card(
      elevation: 2,
      color: Config.cardColor.withOpacity(1),
      margin: EdgeInsets.fromLTRB(4, 0, 4, 8),
      child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(image),
          ),
          title: Text(title, style: TextStyle(fontSize: 20,color: Colors.white),),
          subtitle:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subTitle, style: TextStyle(fontSize: 16,color: Colors.white),),
              Text(secSubTitle, style: TextStyle(fontSize: 16,color: Colors.white),),
            ],
          ),
          trailing: Icon(Icons.phone,color: Colors.white)
      ),
    );
  }
}
