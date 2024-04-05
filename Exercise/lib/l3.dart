import 'package:flutter/material.dart';

class App3 extends StatelessWidget {
  const App3({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Order details'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildOrderStatus(),
              _buildOrderDetails(),
              _buildShippingInformation(),
              _buildPaymentInformation(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderStatus() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildOrderStatusTile(),
              _buildOrderIDTile(),
              _buildOrderDateTile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrderStatusTile() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Icon(Icons.check_circle),
        title: Text('Completed'),
        subtitle: Text('completed on March 29th'),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }

  Widget _buildOrderIDTile() {
    return ListTile(
      leading: Text('Order ID'),
      trailing: Text(
        '#521420',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildOrderDateTile() {
    return ListTile(
      leading: Text('Order Date'),
      trailing: Text(
        '20 July 2024',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildOrderDetails() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildPurchasedItemsTitle(),
              _buildPurchasedItem(
                imagePath: 'assets/images/gomoon.jpeg',
                itemName: 'Blue T-Shirt',
                itemSize: 'Size: L',
                itemPrice: '50.00',
                itemColor: 'Yellow',
                itemQuantity: '1',
              ),
              _buildPurchasedItem(
                imagePath: 'assets/images/gomoon.jpeg',
                itemName: 'Blue T-Shirt',
                itemSize: 'Size: L',
                itemPrice: 'ETB 50.00',
                itemColor: 'Yellow',
                itemQuantity: '1',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPurchasedItemsTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Purchased Items',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildPurchasedItem({
    required String imagePath,
    required String itemName,
    required String itemSize,
    required String itemPrice,
    required String itemColor,
    required String itemQuantity,
  }) {
    return ListTile(
      leading: Image.asset(imagePath),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: '$itemName\n',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: '$itemSize\n',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            TextSpan(
              text: '$itemPrice',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      trailing: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: 'Color: $itemColor\n'),
            TextSpan(text: 'Qty: $itemQuantity'),
          ],
        ),
      ),
    );
  }

  Widget _buildShippingInformation() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: [
            _buildShippingInformationTitle(),
            _buildShippingInfoTile(title: 'Name', value: 'Jacob Jones'),
            _buildShippingInfoTile(title: 'Phone Number', value: '1234556'),
            _buildShippingInfoTile(title: 'Address', value: 'abcd'),
            _buildShippingInfoTile(title: 'Shipment', value: 'Economy'),
          ],
        ),
      ),
    );
  }

  Widget _buildShippingInformationTitle() {
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Shipping Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _buildShippingInfoTile({
    required String title,
    required String value,
  }) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      trailing: Text(
        value,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildPaymentInformation() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: [
            Text('Payment Information'),
            ListTile(
              leading: Text('Payment method'),
              trailing: Text('Cash on Delivery'),
            )
          ],
        ),
      ),
    );
  }
}
