import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/secondpage.dart';
import 'package:flutter_application_1/signup.dart';
import 'package:url_launcher/url_launcher.dart';

class Landingscreen extends StatelessWidget {
  const Landingscreen({super.key});

  Future<void> _phone(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _email(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _web(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text(
                    "JAY BHAVANI TRANSPORT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 1, 26, 101),
                        fontSize: 30),
                  ),
                ),
                Row(
                  children: <Widget>[
                    MaterialButton(
                      color: Color.fromARGB(255, 1, 26, 101),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                      child: Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      color: Color.fromARGB(255, 1, 26, 101),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      color: Color.fromARGB(255, 1, 26, 101),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Signup()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    MaterialButton(
                      color: Color.fromARGB(255, 1, 26, 101),
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () {},
                      child: Text(
                        "Extra",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 138, 159, 222),
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              color: Color.fromARGB(255, 86, 121, 226),
                              child: Text(
                                'Do you need the best\ngoods transportation and logistics\nfor your Company or Industry?\n'
                                'You have found the right place!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                'Jay Bhavani Transports will do that for you.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Color.fromARGB(255, 1, 64, 252),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          height: 700,
                          width: 1000,
                          child: Image.asset('assets/images/og.jpg',
                              height:
                                  MediaQuery.of(context).size.height * 0.55),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 40,
                width: 2000,
                color: Color.fromARGB(255, 166, 109, 88),
                child: Center(
                  child: Text(
                    'Available Transport Facilities',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 300,
                child: CarouselSlider(
                  items: [
                    //1st Image of Slider
                    Container(
                      height: 80,
                      width: 600,
                      margin: EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        image: DecorationImage(
                          image: NetworkImage("assets/images/truck.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      height: 80,
                      width: 600,
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("assets/images/tempo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      height: 80,
                      width: 600,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("assets/images/bigtruck.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                    initialPage: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 40,
                width: 2000,
                color: Color.fromARGB(255, 166, 109, 88),
                child: Center(
                  child: Text(
                    'Available Transport Facilities',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 300.0,
                width: 3000,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => secondpage()))
                      },
                      child: Container(
                        height: 70.0,
                        width: 350.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/1stslide.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.all(15.3),
                            child: Container(
                              height: 40,
                              width: 300,
                              color: Colors.brown,
                              child: Stack(
                                children: [
                                  Text(
                                    '              Truck',
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 70.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/2ndslide.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(15.3),
                          child: Container(
                            height: 40,
                            width: 300,
                            color: Colors.brown,
                            child: Stack(
                              children: [
                                Text(
                                  '          large Truck',
                                  style: TextStyle(fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 70.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/3rdslide.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(15.3),
                          child: Container(
                            height: 40,
                            width: 300,
                            color: Colors.brown,
                            child: Stack(
                              children: [
                                Text(
                                  '        Compact Truck',
                                  style: TextStyle(fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 70.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/4thslide.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(15.3),
                          child: Container(
                            height: 40,
                            width: 300,
                            color: Colors.brown,
                            child: Stack(
                              children: [
                                Text(
                                  '          Mini Truck',
                                  style: TextStyle(fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 70.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/5thslide.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(15.3),
                          child: Container(
                            height: 40,
                            width: 300,
                            color: Colors.brown,
                            child: Stack(
                              children: [
                                Text(
                                  '             Tanker',
                                  style: TextStyle(fontSize: 30),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: Center(
                    child: Text('Frequently Asked Quetions',
                        style: TextStyle(color: Colors.black, fontSize: 30))),
              ),
              Container(
                height: 500,
                color: Colors.white,
                child: Column(
                  children: [
                    ExpansionTile(
                      title: Center(
                        child: Text(
                            'Can I attach my tata ace on a monthly contract or rent mini trucks on monthly basis?',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'You can attach your commercial vehicle to Porter on a daily, weekly or monthly basis for a part-time or full-time engagement.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text(
                            'what all parts are designed in these model',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text('why should you buy cheap parts',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text('is the facility suitable for longterm?',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text(
                            'Can I attach my tata ace on a monthly contract or rent mini trucks on monthly basis?',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text(
                            'what is the pricing of tyre and in what range it can go',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text('what is the pricing and how does it work',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                    ExpansionTile(
                      title: Center(
                        child: Text(
                            'what is the pricing for each fair of an mini truck',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15)),
                      ),
                      children: [
                        Text(
                            'As you can see, FAQ questions are essential for any organization, and if you want to know how to do FAQ and build the content of the list of FAQ questions, dive in.',
                            style: TextStyle(color: Colors.black, fontSize: 15))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Column(
                children: [
                  const Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'DISCUSS FEW THINGS OR JUST WANT TO SAY HI?\nOUR INBOX IS OPEN FOR ALL!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          _web(
                            'https://goo.gl/maps/ickERdYTAyxUAuhf8',
                          );
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.black),
                        child: const Text(
                          'Mumbai, Maharashtra, India',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.mail,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 10),
                      TextButton(
                        onPressed: () {
                          _email('mailto:feazysolutions@gmail.com');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.black),
                        child: const Text(
                          'bhaktiyadav@gmail.com',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              _phone('tel:+91-8879843934');
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: const Text(
                              'Bhakti Yadav: +91 9134713934',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              _phone('tel:+91-8169852662');
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.black),
                            child: const Text(
                              'Mr Bangar: +91 8169891365',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
