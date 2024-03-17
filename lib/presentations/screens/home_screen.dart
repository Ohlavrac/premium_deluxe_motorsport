import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:premium_deluxe_motorsport/presentations/providers/vehicle_provider.dart';
import 'package:premium_deluxe_motorsport/presentations/shared/colors/app_colors.dart';
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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Premium Deluxe Motorsport", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: Column(
            children: [
              const Text("PROCURE E COMPRE", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 18),),
              const Text("OS MELHORES CARROS DE LOS SANTOS COM OS MELHORES PREÇOS.", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 14),),
              const Divider(color: Colors.blue, indent: 10, endIndent: 10, thickness: 2,),
              const Divider(color: AppColors.primary, indent: 10, endIndent: 10, thickness: 2,),
              const Divider(color: Colors.red, indent: 10, endIndent: 10, thickness: 2,),
              Expanded(
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      color: AppColors.secondary,
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: double.infinity, child: Image.asset(vehicles[0].image!, fit: BoxFit.cover)),
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
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Assentos: ${vehicles[0].seats}"),
                                Text("Tração: ${vehicles[0].drivetrain}"),
                                Text("Transmissão: ${vehicles[0].transmition} de ${vehicles[0].gears} marchas"),
                                Text("Porta-malas: ${vehicles[0].storage}L")
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(context: context, builder: (builder) {
                                  return const AlertDialog(
                                    icon: Icon(Icons.call),
                                    title: Text("Entre em contato"),
                                    content: Text("Zaja: (XXX) XXX-XXXX\nAlexis: (XXX) XXX-XXXX\nOliver: (XXX) XXX-XXXX\nMaxine: (XXX) XXX-XXXX"),
                                  );
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.background,
                                elevation: 0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0))
                              ), 
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 100),
                                child: Text("${vehicles[0].sellprice}\$", style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),),
                              ),
                            )
                          ),
                        ],
                      )
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}