import 'package:flutter/material.dart';
import 'package:safe_route/model/use_dm.dart';

import '../utils/app_colors.dart';

class Profile extends StatelessWidget {
  static String routeName = "profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        //centerTitle: true,
        title: Text(
          "Profile",
          style: TextStyle(
              color: AppColors.textColor,
              fontWeight: FontWeight.w300,
              fontSize: 30),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/dark3.png"), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(
              flex: 50,
            ),
            Expanded(
                flex: 50,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            UserDM.currentUser!.userName,
                            style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 1,
                      thickness: 0.5,
                      endIndent: 30,
                      indent: 30,
                      color: AppColors.textColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),

                          Text(
                            UserDM.currentUser!.email,
                            style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),

                        ],
                      ),
                    ),

                  ],
                )),
          ],
        ),
      ),
    );
  }
}

/* Widget getRowOption(String selectedOption ){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              Icon(Icons.person),
              Text(selectedOption,style: TextStyle(color: AppColors.textColor,fontSize: 18,fontWeight: FontWeight.w500),),
            ],
          ),
          Icon(Icons.arrow_forward_ios_outlined),

        ],
      ),
    );
  }*/
