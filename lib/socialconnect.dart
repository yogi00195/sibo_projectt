

import 'package:flutter/material.dart';

//import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher.dart';




class SocialConnect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

 return Container(
           
             height: 100.0,
             
               child: Row(
                      children: <Widget>[
                      
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Material(
                  color: new Color(0xffffffff),
                  shape: CircleBorder(),
                  child: Padding
                  (
                    padding: EdgeInsets.all(8.0),
                    child: Icon(FontAwesomeIcons.facebook,
                      color: Color(0xff125dde),
                      size: 35.0),
                  

                  ),
                  
                ),
                onTap: () {
                  _facebookURL("yogi00195");
                                  },
                                ),
                                
                              ),
                              Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Material(
                  color: new Color(0xffffffff),
                  shape: CircleBorder(),
                  child: Padding
                  (
                    padding: EdgeInsets.all(8.0),
                    child: Icon(FontAwesomeIcons.linkedinIn,
                      color: Color(0xff039be5),
                      size: 35.0),
                  

                  ),
                  
                ),
                onTap: () {
                  _facebookURL("yogi00195");
                                  },
                                ),
                                
                              ),
                            
                              Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.googlePlusG,
                                      color: Color(0xfff44336),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _twitterURL("Baileyr");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Color(0xffad1457),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _twitterURL("Baileyr");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.twitter,
                                      color: Color(0xff125DDE),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _twitterURL("yogi00195");
                            },
                          ),
                        ),
                      ], ) ,
                          
                             );
  }
}
     _facebookURL(String $profileName) async {
    var url = 'https://facebook.com/'+ $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   _twitterURL(String $profileName) async {
    var url = 'https://facebook.com/'+ $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
      
             
             