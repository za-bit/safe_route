import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/full_screen.png"), fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(
            flex: 45,
          ),
          Expanded(
              flex: 55,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width:10,
                      ),
                      Text("Status",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w200)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 14,),
                              Icon(Icons.battery_saver_sharp,color: AppColors.textColor,size: 20),
                              Text("Battery Charge",
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100)),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Text("68%",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [

                              Icon(Icons.location_on,color: AppColors.textColor,size: 20),
                              Text("Range",
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100)),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Text("01 km",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [

                              Icon(Icons.heat_pump_rounded,color: AppColors.textColor,size: 20),
                              Text("Temperature",
                                  style: TextStyle(
                                      color: AppColors.textColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100)),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Text("28 C",
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                        ],
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
