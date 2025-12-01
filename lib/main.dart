
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const HomeScreen(),
//       theme: ThemeData(
//         scaffoldBackgroundColor: const Color(0xFFF5F7FB),
//         fontFamily: 'Roboto',
//       ),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildPage(),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: (index) {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Reports"),
//           BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Cards"),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
//         ],
//       ),
//     );
//   }

//   Widget _buildPage() {
//     if (selectedIndex == 1) return const ReportsScreen();
//     return const HomeDashboard();
//   }
// }

// // HOME DASHBOARD UI
// class HomeDashboard extends StatelessWidget {
//   const HomeDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // HEADER
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: const [
//                     Text(
//                       "Welcome back,",
//                       style: TextStyle(fontSize: 16, color: Colors.grey),
//                     ),
//                     Text(
//                       "STUDENT NAME",
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//                 const CircleAvatar(
//                   child: Icon(Icons.person),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),

//             // BALANCE CARD
//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text("Total Balance", style: TextStyle(color: Colors.white70)),
//                   SizedBox(height: 5),
//                   Text(
//                     "\$8,945.32",
//                     style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 8),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Savings: \$5,500", style: TextStyle(color: Colors.white70)),
//                       Text("Last 30 days: +\$300", style: TextStyle(color: Colors.white70)),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // QUICK ACTION BUTTONS
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _actionButton(Icons.swap_horiz, "Transfer"),
//                 _actionButton(Icons.receipt_long, "Pay Bills"),
//                 _actionButton(Icons.trending_up, "Invest"),
//               ],
//             ),

//             const SizedBox(height: 25),

//             const Text(
//               "Recent Transactions",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 15),
//             _transactionTile("Netflix Subscription", "Entertainment · Today", "\$19.99", Colors.red),
//             _transactionTile("Coffee Shop", "Food & Drink · Today", "\$4.50", Colors.red),
//             _transactionTile("Salary Deposit", "Income · Yesterday", "+\$3500.00", Colors.green),
//             _transactionTile("Grocery Store", "Shopping · Yesterday", "\$55.80", Colors.red),
//             _transactionTile("Amazon Purchase", "Shopping · 2 days ago", "\$120.45", Colors.red),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _transactionTile(String title, String subtitle, String amount, Color amountColor) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               const CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.shopping_bag)),
//               const SizedBox(width: 12),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                   Text(subtitle, style: const TextStyle(color: Colors.grey)),
//                 ],
//               ),
//             ],
//           ),
//           Text(amount, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: amountColor)),
//         ],
//       ),
//     );
//   }

//   Widget _actionButton(IconData icon, String label) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       width: 100,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Column(
//         children: [Icon(icon, size: 28, color: Colors.blue), const SizedBox(height: 8), Text(label)],
//       ),
//     );
//   }
// }

// // REPORTS SCREEN
// class ReportsScreen extends StatelessWidget {
//   const ReportsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text("Monthly Spending Report", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 20),

//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text("Total Expenses (Last 30 days)", style: TextStyle(color: Colors.grey)),
//                   SizedBox(height: 10),
//                   Text("-\$1270.00", style: TextStyle(fontSize: 32, color: Colors.red, fontWeight: FontWeight.bold)),
//                   SizedBox(height: 5),
//                   Text("↑ Up 12% from last month", style: TextStyle(color: Colors.red)),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             Container(
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("Spending Breakdown", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 20),
//                   _barItem("Food & Drink", "\$450.00 (35%)", 0.35, Colors.red),
//                   _barItem("Shopping", "\$320.00 (25%)", 0.25, Colors.blue),
//                   _barItem("Housing", "\$280.00 (22%)", 0.22, Colors.orange),
//                   _barItem("Transport", "\$150.00 (12%)", 0.12, Colors.green),
//                   _barItem("Other", "\$70.00 (6%)", 0.06, Colors.grey),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _barItem(String title, String value, double percent, Color color) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 15),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [Text(title), Text(value)],
//           ),
//           const SizedBox(height: 6),
//           LinearProgressIndicator(
//             value: percent,
//             color: color,
//             backgroundColor: Colors.grey.shade300,
//             minHeight: 8,
//             borderRadius: BorderRadius.circular(20),
//           )
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        // Set the primary background color for the entire app
        scaffoldBackgroundColor: const Color(0xFFF5F7FB),
        fontFamily: 'Roboto',
        // Update the BottomNavigationBar theme to match the clean design
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF1E90FF), // A nice blue for selected
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true, // Show labels for all items
          type: BottomNavigationBarType.fixed, // Fixed type for better look with more items
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
  // Use a map to hold the custom icon data to match the image icons (Home, Reports, Cards, Profile)
  final List<Map<String, dynamic>> _navItems = const [
    {'icon': Icons.home, 'label': 'Home'},
    {'icon': Icons.bar_chart, 'label': 'Reports'},
    {'icon': Icons.credit_card, 'label': 'Cards'},
    {'icon': Icons.person, 'label': 'Profile'},
  ];

  int selectedIndex = 2; // Set initial index to 'Cards' to show a new screen, but 'Home' (0) is typical

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPage(),
      bottomNavigationBar: Container(
        // Wrap the BottomNavigationBar in a container to enforce white background
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
        return const CardsScreen(); // Added Cards Screen
      case 3:
        return const ProfileScreen(); // Added Profile Screen
      default:
        return const HomeDashboard();
    }
  }
}

// =========================================================================
// WIDGETS FOR PROFILE SCREEN (fltr4.png)
// =========================================================================
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF4A6DE9), // Custom blue for initials
                    child: Text("S", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("STUDENT NAME", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text('0', style: TextStyle(color: Colors.white, fontSize: 10)),
                    child: Icon(Icons.notifications_none, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // User Profile Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "User Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),

            // Large Profile Circle
            const Center(
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFF4A6DE9),
                child: Text("SN", style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 30),

            // Profile Fields
            _buildProfileField("Name", "STUDENT NAME (YOUR NAME HERE)"),
            _buildProfileField("Student ID", "S12345 (YOUR ID HERE)"),
            _buildProfileField("Email", "student.name@iub.edu (YOUR IUB EMAIL HERE)"),

            // Bio / Story Section
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
                    SizedBox(height: 10),
                    Text(
                      "(Note: Students should replace the text above with their own description here!)",
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 80), // Space for bottom nav
          ],
        ),
      ),
    );
  }

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
}

// =========================================================================
// WIDGETS FOR CARDS SCREEN (fltr3.png)
// =========================================================================
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF4A6DE9),
                    child: Text("S", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("STUDENT NAME", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text('0', style: TextStyle(color: Colors.white, fontSize: 10)),
                    child: Icon(Icons.notifications_none, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // My Cards Title
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "My Cards",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),

            // The Credit Card Widget
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildCreditCard(),
            ),
            const SizedBox(height: 25),

            // Action Buttons
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

            // Linked Accounts
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Linked Accounts",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 15),

            // Linked Account Tile
            _buildLinkedAccountTile("Shared Savings", "\$5,500.00"),
            const SizedBox(height: 80), // Space for bottom nav
          ],
        ),
      ),
    );
  }

  Widget _buildCreditCard() {
    // This is a complex gradient and layout, simplified for a clean look
    return Container(
      height: 200,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // Approximate dark gradient from the image
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
                  color: const Color(0xFFFFCC00), // Yellow-orange chip placeholder
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
                children: const [
                  Text("CARD HOLDER", style: TextStyle(color: Colors.white54, fontSize: 10)),
                  Text("STUDENT NAME", style: TextStyle(color: Colors.white, fontSize: 16)),
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
            const CircleAvatar(
              backgroundColor: Color(0xFF4A6DE9),
              radius: 14,
              child: Text("S", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold)),
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
}

// =========================================================================
// ORIGINAL WIDGETS FOR HOMEDASHBOARD AND REPORTSSCREEN (Modified to match header style)
// =========================================================================
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
        children: [Icon(icon, size: 28, color: const Color(0xFF1E90FF)), const SizedBox(height: 8), Text(label)],
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
            // HEADER (Updated to match other screens)
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF4A6DE9),
                    child: Text("S", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("STUDENT NAME", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text('0', style: TextStyle(color: Colors.white, fontSize: 10)),
                    child: Icon(Icons.notifications_none, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // BALANCE CARD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF4A6DE9), // Changed to the dark blue color for consistency
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

            // QUICK ACTION BUTTONS
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
            const SizedBox(height: 80), // Space for bottom nav
          ],
        ),
      ),
    );
  }
}

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
            // HEADER (Updated to match other screens)
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF4A6DE9),
                    child: Text("S", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome back,", style: TextStyle(fontSize: 14, color: Colors.grey)),
                      Text("STUDENT NAME", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text('0', style: TextStyle(color: Colors.white, fontSize: 10)),
                    child: Icon(Icons.notifications_none, color: Colors.grey, size: 24),
                  ),
                ],
              ),
            ),
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
                        _barItem("Shopping", "\$320.00 (25%)", 0.25, const Color(0xFF1E90FF)),
                        _barItem("Housing", "\$280.00 (22%)", 0.22, Colors.orange),
                        _barItem("Transport", "\$150.00 (12%)", 0.12, Colors.green),
                        _barItem("Other", "\$70.00 (6%)", 0.06, Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80), // Space for bottom nav
          ],
        ),
      ),
    );
  }
}

// =========================================================================
// END OF ORIGINAL WIDGETS
// =========================================================================