import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotways/utils/color_codes.dart';

class VaccinationCard extends StatelessWidget {
  final String title;
  final String address;
  final String pincode;
  final  fee;
  final min_age_limit;
  final vaccineName;
  final String date;
  final capacity;
  final firstDose;
  final secDose;
  final block;
  final district;
  final String startTime;
  final String endTime;

   
  

  const VaccinationCard({Key key, this.title, this.address, this.pincode, this.fee, this.min_age_limit, this.vaccineName, this.capacity=0, this.date, this.firstDose, this.secDose, this.block, this.district, this.startTime, this.endTime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10.0) ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(FontAwesomeIcons.syringe , color: ColorCodes.colorPrimary,),
            title: Text(title==null?"N?A":title, style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Container(

            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Text("Vaccine Name :", style:TextStyle(color: Colors.grey)),
                          SizedBox(width: 5,),
                          Text(vaccineName==null?"N/A":vaccineName, style: TextStyle(fontWeight: FontWeight.bold),),



                        ],

                        
                      ),

                      SizedBox(height:10 ,),

                      Row(
                        children: [
                          Text("Available :", style:TextStyle(color: Colors.grey)),
                          SizedBox(width: 5,),
                          Text(capacity==0?"NA":capacity, style: TextStyle(fontWeight: FontWeight.bold),),



                        ],

                        
                      ),


                  ],),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                       Row(
                        children: [
                          Text("Age Limit :", style:TextStyle(color: Colors.grey)),
                          SizedBox(width: 5,),
                          Text(min_age_limit.toString(), style: TextStyle(fontWeight: FontWeight.bold),),



                        ],

                        
                      ),

                       SizedBox(height:10 ,),

                      Row(
                        children: [
                          Text("Time:", style:TextStyle(color: Colors.grey)),
                          SizedBox(width: 5,),
                          Text("9 AM to 5 PM", style: TextStyle(fontWeight: FontWeight.bold),),



                        ],

                        
                      ),

                     


                  ],),

                  

              ],
              ),

               SizedBox(height: 10,
                              ),
                          Divider(),
            ],),


          ),

          Padding(
            padding: const EdgeInsets.all(10.0) ,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(children: [

                        Text("Address", style:TextStyle(color: Colors.grey), maxLines: 3,),

                        SizedBox(height: 10,),

                        Text(address, style : TextStyle(fontWeight: FontWeight.bold))
                      ],
                      
                      ),

                      


                    ],
                  ),

                

                  

                  


                  
                ],

                
                
                ),
            ),
            
            ),

            Divider(),

            Padding(
            padding: const EdgeInsets.all(10.0) ,
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(
                    children: [
                      Column(children: [

                        Text("1st Dose", style:TextStyle(color: Colors.grey),),

                        SizedBox(height: 10,),

                        firstDose==0?

                        Text("Not Available", style : TextStyle(fontWeight: FontWeight.bold, color: Colors.red))
                        :Text(firstDose, style : TextStyle(fontWeight: FontWeight.bold, color: Colors.green))
                      ],
                      
                      ),

                      
                      VerticalDivider()


                    ],
                  ),

                  Row(
                    children: [
                      Column(children: [

                        Text("2nd Dose", style:TextStyle(color: Colors.grey),),

                        SizedBox(height: 10,),

                        secDose==0?

                        Text("Not Available", style : TextStyle(fontWeight: FontWeight.bold, color: Colors.red))
                        :Text(secDose, style : TextStyle(fontWeight: FontWeight.bold, color: Colors.green))
                      ],
                      
                      ),

                      
                      VerticalDivider()


                    ],
                  ),

                  Row(
                    children: [
                      Column(children: [

                        Text("Fee", style:TextStyle(color: Colors.grey),),

                        SizedBox(height: 10,),

                        fee=="0"?

                        Text("Free", style : TextStyle(fontWeight: FontWeight.bold, color: Colors.green))
                        :Text("${fee} /-", style : TextStyle(fontWeight: FontWeight.bold))
                      ],
                      
                      ),

                      
                      


                    ],
                  ),

                  


                  
                ],

                
                
                ),
            ),
            
            )
        ],
      ),
    );
  }
}