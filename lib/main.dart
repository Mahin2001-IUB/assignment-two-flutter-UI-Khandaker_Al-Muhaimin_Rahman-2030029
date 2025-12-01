import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// --- CONSTANTS ---
const String studentName = "Khandaker Al-Muhaimin Rahman";
const String studentInitials = "KR";
const String studentHeaderInitial = "K";
const String studentId = "2030029";
const String studentEmail = "2030029@iub.edu.bd";
const Color primaryBlue = Color(0xFF4A6DE9);
const Color accentBlue = Color(0xFF1E90FF);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        fontFamily: 'Roboto',
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: accentBlue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _navItems = const [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.bar_chart, 'label': 'Reports'},
    {'icon': Icons.credit_card, 'label': 'Cards'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: _navItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(item['icon']),
                  label: item['label'],
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _buildPage() {
    switch (selectedIndex) {
      case 0:
        return const HomeDashboard();
      case 1:
        return const ReportsScreen();
      case 2:
        return const CardsScreen();
      case 3:
        return const ProfileScreen();
      default:
        return const HomeDashboard();
    }
  }
}

// =========================================================================
// WIDGET FOR REPEATED HEADER
// =========================================================================
class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: primaryBlue,
            child: Text(studentHeaderInitial,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.grey)),
              Text(studentName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const Spacer(),
          const Badge(
            label: Text('0', style: TextStyle(color: Colors.white, fontSize: 10)),
            child: Icon(Icons.notifications_none, color: Colors.grey, size: 24),
          ),
        ],
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 1. HOME DASHBOARD UI (Original Code Block 1)
// -------------------------------------------------------------------------
class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  Widget _actionButton(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [Icon(icon, size: 28, color: accentBlue), const SizedBox(height: 8), Text(label)],
      ),
    );
  }

  Widget _transactionTile(String title, String subtitle, String amount, Color amountColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Icon(Icons.shopping_bag, color: Colors.grey.shade700)),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(subtitle, style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
          Text(amount, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: amountColor)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppHeader(),
            const SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: primaryBlue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Total Balance", style: TextStyle(color: Colors.white70)),
                    SizedBox(height: 5),
                    Text(
                      "\$8,945.32",
                      style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Savings: \$5,500", style: TextStyle(color: Colors.white70)),
                        Text("Last 30 days: +\$300", style: TextStyle(color: Colors.white70)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _actionButton(Icons.swap_horiz, "Transfer"),
                  _actionButton(Icons.receipt_long, "Pay Bills"),
                  _actionButton(Icons.trending_up, "Invest"),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Recent Transactions",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _transactionTile("Netflix Subscription", "Entertainment · Today", "-\$19.99", Colors.red),
                  _transactionTile("Coffee Shop", "Food & Drink · Today", "-\$4.50", Colors.red),
                  _transactionTile("Salary Deposit", "Income · Yesterday", "+\$3500.00", Colors.green),
                  _transactionTile("Grocery Store", "Shopping · Yesterday", "-\$55.80", Colors.red),
                  _transactionTile("Amazon Purchase", "Shopping · 2 days ago", "-\$120.45", Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 2. REPORTS SCREEN (Original Code Block 2)
// -------------------------------------------------------------------------
class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  Widget _barItem(String title, String value, double percent, Color color) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(title), Text(value)],
          ),
          const SizedBox(height: 6),
          LinearProgressIndicator(
            value: percent,
            color: color,
            backgroundColor: Colors.grey.shade300,
            minHeight: 8,
            borderRadius: BorderRadius.circular(20),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppHeader(),
            const SizedBox(height: 30),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Monthly Spending Report", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Total Expenses (Last 30 days)", style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 10),
                        Text("-\$1270.00",
                            style: TextStyle(fontSize: 32, color: Colors.red, fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text("↑ Up 12% from last month", style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Spending Breakdown", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 20),
                        _barItem("Food & Drink", "\$450.00 (35%)", 0.35, Colors.red),
                        _barItem("Shopping", "\$320.00 (25%)", 0.25, accentBlue),
                        _barItem("Housing", "\$280.00 (22%)", 0.22, Colors.orange),
                        _barItem("Transport", "\$150.00 (12%)", 0.12, Colors.green),
                        _barItem("Other", "\$70.00 (6%)", 0.06, Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 3. CARDS SCREEN (Page 3)
// -------------------------------------------------------------------------
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  Widget _buildCreditCard() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF2E323A), Color(0xFF3B4048)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFCC00),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const Text("BANK", style: TextStyle(color: Colors.white70, fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const Spacer(),
          const Text(
            "4567 **** **** 1234",
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w500, letterSpacing: 2),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("CARD HOLDER", style: TextStyle(color: Colors.white54, fontSize: 10)),
                  Text(studentName, style: const TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("EXPIRES", style: TextStyle(color: Colors.white54, fontSize: 10)),
                  Text("12/28", style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardActionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 2)),
            ],
          ),
          child: Icon(icon, color: Colors.grey.shade700, size: 30),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }

  Widget _buildLinkedAccountTile(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: primaryBlue,
              radius: 14,
              child: Text(studentHeaderInitial,
                  style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(amount, style: const TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppHeader(),
            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "My Cards",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCreditCard(),
            ),
            const SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _cardActionButton(Icons.close, "Block"),
                  _cardActionButton(Icons.description_outlined, "Details"),
                  _cardActionButton(Icons.info_outline, "Limit"),
                ],
              ),
            ),
            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Linked Accounts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),

            _buildLinkedAccountTile("Shared Savings", "\$5,500.00"),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

// -------------------------------------------------------------------------
// 4. PROFILE SCREEN (Page 4)
// -------------------------------------------------------------------------
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildProfileField(String label, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            const SizedBox(height: 4),
            Text(content, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AppHeader(),
            const SizedBox(height: 30),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "User Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: primaryBlue,
                child: Text(studentInitials,
                    style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),

            _buildProfileField("Name", studentName),
            _buildProfileField("Student ID", studentId),
            _buildProfileField("Email", studentEmail),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Bio / Story", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(
                      "\"I'm currently focusing on my final year, balancing studies with building side projects. I believe financial health is key to academic success. I love hiking on weekends and planning my next big travel adventure!\"",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}