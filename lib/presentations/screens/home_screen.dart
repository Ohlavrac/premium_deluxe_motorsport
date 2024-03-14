import 'package:flutter/material.dart';
import 'package:premium_deluxe_motorsport/presentations/providers/vehicle_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var vehicles = Provider.of<VehicleProvider>(context).getVehicles();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Premium Deluxe Motorsport"),
      ),
      body: Center(
        child: Column(
          children: [
            const Text("PROCURE E COMPRE"),
            const Text("OS MELHORES CARROS DE LOS SANTOS COM OS MELHORES PREÇOS."),
            const Divider(color: Colors.black, indent: 50, endIndent: 50, thickness: 2,),
            Expanded(
              child: GridView.builder(
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
                ),
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.asset(vehicles[0].image!, height: 170,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "${vehicles[0].manufactor} ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                  TextSpan(text: " ${vehicles[0].name}", style: TextStyle(color: Colors.black87)),
                                ]
                              ),
                            ),
                            Text("${vehicles[0].type}"),
                          ],
                        ),
                        Text("Assentos: ${vehicles[0].seats}"),
                        Text("Tração: ${vehicles[0].drivetrain}"),
                        Text("Transmissão: ${vehicles[0].transmition} de ${vehicles[0].gears} marchas"),
                        Text("Porta-malas: ${vehicles[0].storage}L")
                      ],
                    )
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}