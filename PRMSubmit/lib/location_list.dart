import 'package:flutter/material.dart';
import 'location.dart';
import 'detail_location.dart';

class LocationListPage extends StatefulWidget {
  const LocationListPage({super.key});

  @override
  State<LocationListPage> createState() => _LocationListPageState();
}

class _LocationListPageState extends State<LocationListPage> {
  late List<Location> locations;

  @override
  void initState() {
    super.initState();
    locations = [
      Location(
        id: 1,
        name: "Ha Long Bay",
        address: "Quang Ninh, Viet Nam",
        description:
            "Ha Long Bay, located in northeast Vietnam, is a renowned UNESCO World Heritage Site famed for its stunning seascape of over 1,600 limestone karst islands and islets covered in lush vegetation, rising from emerald-green waters.",
        count: 0,
        star: 4,
        imageUrl:
            "https://www.vietnamvisa.org.vn/wp-content/uploads/2024/08/Halong-Bay-Vietnam-08.jpg",
      ),
      Location(
        id: 2,
        name: "Da Nang Beach",
        address: "Da Nang, Viet Nam",
        description:
        "Ha Long Bay, located in northeast Vietnam, is a renowned UNESCO World Heritage Site famed for its stunning seascape of over 1,600 limestone karst islands and islets covered in lush vegetation, rising from emerald-green waters.",
        count: 0,
        star: 4,
        imageUrl:
            "https://drt.danang.vn/content/images/2024/01/bai-bien-da-nang-1.jpg",
      ),
      Location(
        id: 3,
        name: "Hoi An Ancient Town",
        address: "Quang Nam, Viet Nam",
        description:
        "Ha Long Bay, located in northeast Vietnam, is a renowned UNESCO World Heritage Site famed for its stunning seascape of over 1,600 limestone karst islands and islets covered in lush vegetation, rising from emerald-green waters.",
        count: 0,
        star: 5,
        imageUrl:
            "https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/08/hoi-an-quang-nam-vntrip.jpg",
      ),
      Location(
        id: 4,
        name: "Sapa",
        address: "Lao Cai, Viet Nam",
        description:
        "Ha Long Bay, located in northeast Vietnam, is a renowned UNESCO World Heritage Site famed for its stunning seascape of over 1,600 limestone karst islands and islets covered in lush vegetation, rising from emerald-green waters.",
        count: 0,
        star: 4,
        imageUrl:
            "https://xesaoviet.com.vn/wp-content/uploads/2024/08/nui-ham-rong-acc-1.png",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Location List"), centerTitle: true),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final location = locations[index];

          return ListTile(
            leading: Image.network(
              location.imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            title: Text(location.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(location.address),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    const SizedBox(width: 4),
                    Text(location.star.toString()),
                    const SizedBox(width: 12),
                  ],
                ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => LocationDetailPage(location: location),
                ),
              );
              setState(() {});
            },
          );
        },
      ),
    );
  }
}
