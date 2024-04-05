import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  HomePage2({super.key});

  final List<Item> items = [
    Item(title: 'Map all devices', iconData: Icons.map),
    Item(title: 'Live locations', iconData: Icons.location_on),
    Item(title: 'History locations', iconData: Icons.history),
    Item(title: 'Edit device', iconData: Icons.edit),
    Item(title: 'Detail info', iconData: Icons.info),
    Item(title: 'Charge center number', iconData: Icons.battery_charging_full),
    Item(title: 'Disabled menu', iconData: Icons.accessibility_new),
    Item(title: 'Set GPS time interval', iconData: Icons.timer),
    Item(title: 'Restart device', iconData: Icons.restart_alt),
    Item(title: 'Power saving mode', iconData: Icons.power_settings_new),
    Item(title: 'Normal mode', iconData: Icons.settings),
    Item(title: 'Shutdown device', iconData: Icons.power_off),
    Item(title: 'Device command history', iconData: Icons.history),
    Item(title: 'Contact us', iconData: Icons.contact_mail),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.help_outline,
              color: Colors.white,
            ),
            Text(
              'Tracker',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.add_alert,
                  color: Colors.white,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/gomoon.jpeg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Robert Steven',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.car_crash,
                            color: Colors.blue,
                          ),
                          SizedBox(width: 5),
                          Container(
                            child: Text(
                              'B 2455 UJD | 0180',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 1,
                  height: 15,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  'Battery: 90%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Component(
                  iconData: items[index].iconData,
                  text: items[index].title,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String title;
  final IconData iconData;

  Item({required this.title, required this.iconData});
}

class Component extends StatelessWidget {
  final IconData iconData;
  final String text;

  const Component({
    required this.iconData,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 60,
            color: Colors.blue,
          ),
          const SizedBox(height: 2),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
