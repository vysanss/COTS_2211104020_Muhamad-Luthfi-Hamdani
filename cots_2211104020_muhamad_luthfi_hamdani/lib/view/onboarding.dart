import 'package:flutter/material.dart';
import 'loginpage.dart'; 
import 'register.dart'; 

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/glogo.png', height: 20),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  _buildPageContent(
                    image: 'assets/images/login1.png',
                    title: 'Selamat datang di Gojek!',
                    description: 'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan dimanapun',
                  ),
                  _buildPageContent(
                    image: 'assets/images/login2.png',
                    title: 'Transportasi & logistik',
                    description: 'Antarin kamu jalan atau ambilin barang lebih gampang tinggal  ngeklik doang~',
                  ),
                  _buildPageContent(
                    image: 'assets/images/login3.png',
                    title: 'Pesan makan & belanja',
                    description: 'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  width: 8,
                  height : 8,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.green : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50), // Make button background wider
              ),
              child: const Text('Masuk'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Navigate to register page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50), // Make button background wider
              ),
              child: const Text('Register'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageContent({required String image, required String title, required String description}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}