import 'package:flutter/material.dart';

class LeftSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on, size: 24),
                    SizedBox(width: 8),
                    Text(
                      'Trustland',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                      radius: 24,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Alina Carter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('alinacarter@mail.com'),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Dashboard'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: Text('Messages'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.alt_route),
          title: Text('Routes'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.inbox),
          title: Text('Inbox'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.schedule),
          title: Text('Schedule'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text('Payments'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.report),
          title: Text('Reports'),
          onTap: () {},
        ),
        Spacer(),
        Container(
          color: Colors.green[100],
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Today',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '1332',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text('+ 678 km'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRect(
                    child: Align(
                      alignment: Alignment.centerRight,
                      widthFactor: 0.5,
                      child: Image.asset(
                        'lib/Images/truck long.jpg', // Adjust image path and size as needed
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Container(
          color: Colors.red[100],
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'A new shipment available',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Details →',
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
