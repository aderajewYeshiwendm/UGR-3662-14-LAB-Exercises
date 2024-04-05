import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Icon(Icons.search),
        actions: const [Icon(Icons.shopping_cart), Icon(Icons.notifications)],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/light.png',
                width: 400,
                height: 320,
                fit: BoxFit.contain,
              ),
              Positioned(
                  top: 270,
                  left: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.save),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.lightbulb),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.person_3),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(Icons.save),
                      ),
                    ],
                  ))
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.attach_money),
                  Text(
                    "4.6",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite),
                ],
              )
            ],
          ),
          const Text(
            'BARDI Smart Light Bulb Lamp Bohlam LED WIFI RGBWW 12 watt Home IoT',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('(354)'),
                ],
              ),
              Text('|'),
              Text('540 Sale'),
              Text('|'),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text('Broklyn'),
                ],
              )
            ],
          ),
          const Divider(
            thickness: 20,
            color: Colors.white30,
          ),
          const Text(
            'Variant',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Row(
            children: [
              Text('Size:'),
              Text(
                'Xs',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text(
                  'XS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('S'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('M'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('L'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('XL'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: Text('XLL'),
              ),
            ],
          ),
          const Row(
            children: [
              Text('Color:'),
              Text(
                'Red',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text(
                  'Red',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('Black'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('Green'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text('White'),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  border: Border.all(
                    color: Colors.black, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                child: const Text(
                  'Blue',
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.save,
            color: Color.fromARGB(255, 9, 189, 165),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                )),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(minimumSize: const Size(340, 15)),
              child: const Text(
                'Add to shopping Cart',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
