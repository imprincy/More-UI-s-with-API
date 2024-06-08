import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 8,
          backgroundColor: Colors.indigo.shade50,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.manage_search), label: 'manage'),
            BottomNavigationBarItem(
                icon: Icon(Icons.payment), label: 'payment'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundColor: Colors.lightBlueAccent.shade100,
              radius: 24,
              child: const Icon(
                Icons.account_circle_rounded,
                size: 30,
              ),
            ),
            const Column(
              children: [
                Text("manage",
                    style: TextStyle(fontSize: 20, color: Colors.white)),
                Text(
                  "plans and accounts",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.indigo.shade50,
              radius: 24,
              child: const Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.black,
                size: 25,
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.indigo.shade50,
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 220,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PREPAID",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                color: Colors.blue,
                                size: 15,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "2.9 GB",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text("data left"),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "expiring in 7 days",
                            style: TextStyle(color: Colors.orangeAccent),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {},
                              child: const Text(
                                "RECHARGE",
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 220,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18)),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "5G",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.red,
                                fontSize: 40),
                          ),
                          Text(
                            "need another prepaid SIM?",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "enjoy unlimited 5G data & 15 + OTTs.",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "ORDER NOW",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.indigo.shade50,
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "AIRTEL FINANCE",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo.shade50,
                                    radius: 30,
                                    child: const Icon(Icons.clean_hands_sharp),
                                  ),
                                  Text(
                                    "personal loan",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo.shade50,
                                    radius: 30,
                                    child: const Icon(Icons.credit_card),
                                  ),
                                  Text(
                                    "credit card",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo.shade50,
                                    radius: 30,
                                    child: const Icon(Icons.credit_score),
                                  ),
                                  Text(
                                    "credit score",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.indigo.shade50,
                                    radius: 30,
                                    child:
                                        const Icon(Icons.clean_hands_rounded),
                                  ),
                                  Text(
                                    'emi',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(double.infinity, 30),
                                backgroundColor: Colors.red.shade600,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.card_giftcard_sharp,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "100% digital process and instant disbursal",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.indigo.shade50,
              height: 120,
              width: MediaQuery.sizeOf(context).width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white54),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.lightGreen.shade200,
                            radius: 20,
                            child: const Icon(
                              Icons.call,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                        const Text(
                          "     call\nmanager",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white54,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.purpleAccent.shade200,
                            radius: 20,
                            child: const Icon(
                              Icons.wallet_giftcard_sharp,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                        const Text(
                          "rewards &\n coupons",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white54),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 20,
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                        Text(
                          "refer & \nget Rs.300",
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              color: Colors.indigo.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SHORTCUTS",
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                      child: const Icon(Icons.cached_sharp),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50),
                                  const Text(
                                    "recharge",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                      child: const Icon(Icons.paypal),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50),
                                  const Text(
                                    "pay bills",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                      radius: 30,
                                      child:
                                          const Icon(Icons.more_time_rounded),
                                      backgroundColor: Colors.indigo.shade50),
                                  const Text(
                                    "claim OTTs",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                      child: const Icon(Icons.interests),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50),
                                  const Text(
                                    "international",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                    child: const Icon(Icons.add_box_sharp),
                                    radius: 30,
                                    backgroundColor: Colors.indigo.shade50),
                                const Text(
                                  "add existing",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                    child: const Icon(
                                        Icons.data_exploration_outlined),
                                    radius: 30,
                                    backgroundColor: Colors.indigo.shade50),
                                const Text(
                                  "top up data",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    child: const Icon(Icons.sim_card),
                                    backgroundColor: Colors.indigo.shade50),
                                const Text(
                                  "upgrade post",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CircleAvatar(
                                    child: const Icon(
                                        Icons.sim_card_alert_outlined),
                                    radius: 30,
                                    backgroundColor: Colors.indigo.shade50),
                                const Text(
                                  "upgrade to eSIM",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 420,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.indigo.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.white),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.send_and_archive,
                                color: Colors.red,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "5G Plus",
                                style: TextStyle(color: Colors.red),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Claim Unlimited 5G Data",
                                style: TextStyle(color: Colors.black54),
                              ),
                              SizedBox(width: 50),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.red,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 300,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BUY NEW SERVICE",
                              style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        child: const Icon(Icons.radio),
                                        radius: 30,
                                        backgroundColor: Colors.indigo.shade50,
                                      ),
                                      Text(
                                        "broadband",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        child: const Icon(Icons.post_add),
                                        radius: 30,
                                        backgroundColor: Colors.indigo.shade50,
                                      ),
                                      Text(
                                        "postpaid",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        child: const Icon(Icons.cable),
                                        radius: 30,
                                        backgroundColor: Colors.indigo.shade50,
                                      ),
                                      Text(
                                        "dth",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        child: const Icon(
                                            Icons.clean_hands_outlined),
                                        radius: 30,
                                        backgroundColor: Colors.indigo.shade50,
                                      ),
                                      Text(
                                        "loan",
                                        style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    backgroundColor: Colors.red),
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.wallet_giftcard_sharp,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Text(
                                      "15% discount on long term plans",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      child: const Icon(
                                          Icons.sim_card_alert_sharp),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50,
                                    ),
                                    Text(
                                      "prepaid",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      child: const Icon(
                                          Icons.airplane_ticket_sharp),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50,
                                    ),
                                    Text(
                                      "airtel black",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      child: const Icon(Icons.security),
                                      radius: 30,
                                      backgroundColor: Colors.indigo.shade50,
                                    ),
                                    Text(
                                      "security camera",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const CircleAvatar(
                                      child: Icon(
                                        Icons.expand_more_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ),
                                      radius: 30,
                                      backgroundColor: Colors.black,
                                    ),
                                    Text(
                                      "More",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.indigo.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/world.jpeg'),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.blue,
                                    )
                                  ]),
                              const Text(
                                "International Roaming",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    fontSize: 20),
                              ),
                              Text(
                                "Stay connected while travelling at just Rs.90/day",
                                style: TextStyle(color: Colors.grey.shade600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 220,
                      width: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('assets/images/mobile.jpeg'),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.blue,
                                  )
                                ]),
                            const Text(
                              "Rs. 300 off on next bill",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 20),
                            ),
                            Text(
                              "refer super-fast Wi-Fi to your friends",
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.indigo.shade50,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 350,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "recommended for you",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.password_sharp,
                              color: Colors.grey.shade300,
                            )
                          ],
                        ),
                        Text(
                          'explore more from airtel',
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 12),
                        ),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 150,
                                    color: Colors.pink,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
