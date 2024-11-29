import 'package:flutter/material.dart';
import 'package:truonglleminhnhat_2180604923/screens/temperature_convert_screen.dart';
import 'package:truonglleminhnhat_2180604923/screens/unit_convert_screen.dart';
import 'package:truonglleminhnhat_2180604923/screens/video_from_yt_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ứng dụng chuyển đổi'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VideoFromYoutubeScreen()),
                );
              },
              child: const Text('video từ link youtube'),

            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TemperatureConverterScreen()),
                );
              },
              child: const Text('Chuyển đổi nhiệt độ'),

            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnitConverterScreen()),
                );
              },
              child: const Text('Chuyển đổi đơn vị đo'),
            ),
            // Hiển thị ảnh từ thư mục assets
            Image.asset(
              'assets/duongvaotimemoibanggia.jpg', // Đường dẫn tới ảnh trong thư mục assets
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Hiển thị ảnh từ Internet
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif', // URL ảnh
              width: 200,
              height: 200,
              fit: BoxFit.cover,                    
            ),
          ],
        ),
      ),
    );
  }
}