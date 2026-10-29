import 'package:flutter/material.dart';

void main() => runApp(const AlignmentApp());

class AlignmentApp extends StatelessWidget {
  const AlignmentApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Alignment',
    theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF146C94)), scaffoldBackgroundColor: const Color(0xFFF4F8FB)),
    home: const WeatherAlignmentPage(),
  );
}

class WeatherAlignmentPage extends StatelessWidget {
  const WeatherAlignmentPage({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Weather Alignment'), centerTitle: true, backgroundColor: Colors.transparent, elevation: 0),
    body: SafeArea(child: SingleChildScrollView(padding: const EdgeInsets.fromLTRB(20, 12, 20, 28), child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Pengaturan Layout', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Text('Row, Column, MainAxisAlignment, dan CrossAxisAlignment', style: TextStyle(color: Colors.blueGrey)),
        const SizedBox(height: 24),
        Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), boxShadow: const [BoxShadow(color: Color(0x18000000), blurRadius: 16, offset: Offset(0, 8))]), child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Prakiraan Cuaca', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            const SizedBox(height: 18),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: [
              WeatherItem(label: 'Cerah', temperature: '32°C', icon: Icons.sunny, color: Color(0xFFFFA000)),
              WeatherItem(label: 'Hujan Salju', temperature: '18°C', icon: Icons.cloudy_snowing, color: Color(0xFF4A90E2)),
              WeatherItem(label: 'Berawan', temperature: '25°C', icon: Icons.cloud, color: Color(0xFF607D8B)),
            ]),
          ],
        )),
        const SizedBox(height: 20),
        Container(padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20), decoration: BoxDecoration(color: const Color(0xFFE2F1F8), borderRadius: BorderRadius.circular(18)), child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text('Layout aktif', style: TextStyle(fontWeight: FontWeight.w600)), Text('Row + Column', style: TextStyle(fontWeight: FontWeight.bold))])),
      ],
    )))
  );
}

class WeatherItem extends StatelessWidget {
  final String label, temperature;
  final IconData icon;
  final Color color;
  const WeatherItem({required this.label, required this.temperature, required this.icon, required this.color, super.key});
  @override
  Widget build(BuildContext context) => Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
    Icon(icon, size: 48, color: color), const SizedBox(height: 8), Text(label, style: const TextStyle(fontWeight: FontWeight.w600)), const SizedBox(height: 4), Text(temperature, style: TextStyle(color: color, fontWeight: FontWeight.bold)),
  ]);
}
