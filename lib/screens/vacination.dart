import 'package:covidify/screens/district.dart';
import 'package:covidify/screens/pincode.dart';
import 'package:flutter/material.dart';
import 'package:covidify/utility/bubble_indicator_painter.dart';

class Vaccination extends StatefulWidget {
  @override
  _VaccinationState createState() => _VaccinationState();
}

class _VaccinationState extends State<Vaccination> {
  PageController _pageController;
  Color left = Colors.white;
  Color right = Colors.blueAccent;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.lightBlue,
                                  Colors.blueAccent
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Image(
                            image: AssetImage("assets/images/sticker.png"),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 10,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            gradient: LinearGradient(
                              colors: [
                                Colors.blue,
                                Colors.lightBlue,
                                Colors.blueAccent
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, bottom: 8),
                                  child: Text(
                                    "COVID VACCINE AVAILABILITY",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                        color: Colors.white),
                                  ),
                                ),
                                // SizedBox(
                                //   ,
                                // ),
                                Text(
                                  "Search by Pincode or District",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.white),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context)
                                        .requestFocus(FocusNode());
                                  },
                                  child: Column(children: [
                                    Container(
                                      width: double.infinity,
                                      height: 500,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(90.0)),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20.0),
                                            child: _buildMenuBar(context),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: PageView(
                                              controller: _pageController,
                                              physics:
                                                  const ClampingScrollPhysics(),
                                              onPageChanged: (int i) {
                                                FocusScope.of(context)
                                                    .requestFocus(FocusNode());
                                                if (i == 0) {
                                                  setState(() {
                                                    right = Colors.blueAccent;
                                                    left = Colors.white;
                                                  });
                                                } else if (i == 1) {
                                                  setState(() {
                                                    right = Colors.white;
                                                    left = Colors.blueAccent;
                                                  });
                                                }
                                              },
                                              children: <Widget>[
                                                ConstrainedBox(
                                                  constraints:
                                                      const BoxConstraints
                                                          .expand(),
                                                  child: Pincode(),
                                                ),
                                                ConstrainedBox(
                                                  constraints:
                                                      const BoxConstraints
                                                          .expand(),
                                                  child: District(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.59,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: CustomPaint(
          painter: BubbleIndicatorPainter(80, 25, 20, 25, _pageController),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: _onPincodeButtonPress,
                  child: Text(
                    'PINCODE',
                    style: TextStyle(
                      color: left,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              //Container(height: 33.0, width: 1.0, color: Colors.white),
              Expanded(
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: _onDistrictButtonPress,
                  child: Text(
                    'DISTRICT',
                    style: TextStyle(
                      color: right,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onPincodeButtonPress() {
    _pageController.animateToPage(0,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }

  void _onDistrictButtonPress() {
    _pageController.animateToPage(1,
        duration: const Duration(milliseconds: 500), curve: Curves.decelerate);
  }
}
