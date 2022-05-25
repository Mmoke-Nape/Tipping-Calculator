import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:tipping_calculator/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipperTwo(flip: true),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 20, bottom: 40),
                  height: 110,
                  width: size.width,
                  color: lightBlue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                        color: darkBlue,
                      ),
                      Text(
                        'Tipper Splitter',
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: darkBlue,
                              letterSpacing: 2,
                            ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  // top: 10,
                  left: 100,
                  right: 100,
                ),
                width: size.width,
                // color: Colors.green,
                //height: size.height * .5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter bill total',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 40),
                        Text(
                          'R',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: darkBlue,
                                  ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            minWidth: size.width * .2,
                            maxWidth: size.width * .3,
                          ),
                          child: const TextField(
                            style: TextStyle(
                              color: darkBlue,
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: '0.00',
                              hintStyle:
                                  TextStyle(fontSize: 25, color: darkBlue),
                              alignLabelWithHint: true,
                            ),
                          ),
                        ),
                        Text(
                          'ZAR',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: darkBlue,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Choose tip',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: size.width * .13),
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25.0),
                              ),
                              color: darkBlue,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  // color: Colors.black,
                                  // spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(0, 5),
                                )
                              ]),
                          child: Center(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                '%',
                                // textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      // fontSize: 18,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(25.0),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  // color: Colors.black,
                                  // spreadRadius: 4,
                                  blurRadius: 4,
                                  offset: Offset(0, 5),
                                )
                              ]),
                          child: Center(
                            child: InkWell(
                              onTap: () {},
                              child: Text(
                                'R',
                                // textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      // fontSize: 18,
                                      color: darkBlue,
                                      // color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 45),
                        Container(
                            constraints: BoxConstraints(
                              minWidth: size.width * .2,
                              maxWidth: size.width * .3,
                            ),
                            child: const TextField(
                              style: TextStyle(color: darkBlue),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: '15.00',
                                hintStyle:
                                    TextStyle(fontSize: 25, color: darkBlue),
                                alignLabelWithHint: true,
                              ),
                            )),
                        const Text('%'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Split',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 30),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.remove),
                        ),
                        const Text(
                          '3',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: darkBlue,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                width: size.width * .85,
                // height: size.height * .4,
                child: Column(
                  children: [
                    Text(
                      'Total per person',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'R',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: darkBlue),
                        ),
                        Text(
                          '45.05',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontSize: 60,
                                    fontWeight: FontWeight.bold,
                                    color: darkBlue,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'bill',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'R',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: darkBlue,
                                      ),
                                ),
                                Text(
                                  '37.53',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: darkBlue,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        Column(
                          children: [
                            Text(
                              'tip',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'R',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: darkBlue,
                                      ),
                                ),
                                Text(
                                  '7.51',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: darkBlue,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
