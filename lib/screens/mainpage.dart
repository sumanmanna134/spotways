

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:spotways/controller/vaccine_store.dart';
import 'package:spotways/utils/utils.dart';
import 'package:spotways/widget/custom_background.dart';
import 'package:spotways/widget/vaccination_card_widget.dart';

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({Key key, this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}



class _MainPageState extends State<MainPage> {

  VaccineStore store = VaccineStore();
  ScrollController controller = ScrollController();
  bool timeOut = false;
  DateTime selectedDate = DateTime.now();

 

  setTimeOut() async {
    await Future.delayed(Duration(seconds: 10));
    setState(() {
      timeOut = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    store.getCenters();
    setTimeOut();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset:false,
      floatingActionButton:FloatingActionButton(

        child: Icon(Icons.filter_list),
        onPressed: ()async{
          
          _selectDate(context);

        },

      ),


      body:RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(Duration(seconds: 1));

          store.getCenters();
          Utils.showSuccessToast("Updated", context);
        },

        child: CustomPaint(
          painter: BackgroundPainter(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10, right: 10, top: 46),
                child: Column(children: [
                  Card(
                    child: Container(

                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text("${Utils.dateToLocalString(selectedDate)}" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  ),

                  Observer(
                    builder: (context)=> Container(
                    height: MediaQuery.of(context).size.height*0.7,

                    child: Observer(
                      
                      builder:(_){
                        store.date = Utils.dateToLocalString(selectedDate);
                        return ((store.centerListFuture!=null && store.centerListFuture.isNotEmpty))?
                       ListView.builder(

                          shrinkWrap: true,


                          itemCount:store.centerListFuture.length,
                          itemBuilder: (_, index){
                            final centers = store.centerListFuture[index];
                            return VaccinationCard(
                              vaccineName: centers.vaccine,
                              title: centers.name,
                              address: centers.address,
                              capacity: centers.availableCapacity,
                              fee: centers.fee,
                              pincode: centers.pincode.toString(),
                              min_age_limit: centers.minAgeLimit,
                              block: centers.blockName,
                              date: centers.date,
                              district: centers.districtName,
                              firstDose: centers.availableCapacityDose1,
                              secDose: centers.availableCapacityDose2,
                              startTime: centers.from,
                              endTime: centers.to,

                            );
                          },

                        ):
                        Center(child: !timeOut? CircularProgressIndicator(): Column(children: [

                          Icon(Icons.error, size: 60,),
                          SizedBox(height: 10),
                          Text("Opps! Not Available",style:TextStyle(fontSize: 20)),


                        ],),);
                      }

                      ),
                      ),
                  )


                ],),
              )
            ],
          ),
        ),
      )

    );
  }





  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2020),
        lastDate: DateTime(DateTime.now().year+1));
    
    if(picked!=null && picked!=selectedDate){
      
      setState(() {
        selectedDate = picked;

      });

      await Future.delayed(Duration(seconds: 1));

      store.getCenters();
      Utils.showSuccessToast("refreshed", context);
    }

  }
}








