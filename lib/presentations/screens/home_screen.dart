import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:premium_deluxe_motorsport/presentations/providers/vehicle_provider.dart';
import 'package:premium_deluxe_motorsport/presentations/shared/colors/app_colors.dart';
import 'package:premium_deluxe_motorsport/presentations/widgets/custom_icon_card_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/custom_alert_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    var vehicles = Provider.of<VehicleProvider>(context).getVehicles();
    var contactsProvider = Provider.of<VehicleProvider>(context);
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Premium Deluxe Motorsport", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (builder) {
                  return CustomAlertWidget(
                    icon: Icons.call,
                    title: "Anuncie aqui :D",
                    content: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(text: "Deseja anuncia algum serviço ou seu carro ?", style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal)),
                          TextSpan(text: " Entre em contato com Oliver: (550) 359-6357", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                        ]
                      ),
                    ),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
              ),
              child: const Text("Anuncie Aqui!", style: TextStyle(color: AppColors.background),), 
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 870,
                  child: Image.asset("./assets/vehicles/bikes-home.png",fit: BoxFit.fill,),
                ),
                const SizedBox(height: 40,),
                const Text("PROCURE E COMPRE", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: 18),),
                const Text("OS MELHORES CARROS & BICICLETAS DE LOS SANTOS COM OS MELHORES PREÇOS.", style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 14),),
                const Divider(color: Colors.blue, indent: 10, endIndent: 10, thickness: 2,),
                const Divider(color: AppColors.primary, indent: 10, endIndent: 10, thickness: 2,),
                const Divider(color: Colors.red, indent: 10, endIndent: 10, thickness: 2,),
                Flexible(
                  fit: FlexFit.loose,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: vehicles.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: screenSize.width > 1480 ? 400 : 500,
                      childAspectRatio: 2/2,
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
                            SizedBox(width: double.infinity, height: 197, child: Image.asset(vehicles[index].image!, fit: BoxFit.cover)),
                            const SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: "${vehicles[index].manufactor} ", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                            TextSpan(text: " ${vehicles[index].name}", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                          ]
                                        ),
                                      ),
                                      Text("${vehicles[index].type}", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      CustomIconCardWidget(asseticon: "./assets/icons/seat.png", text: "${vehicles[index].seats}"),
                                      CustomIconCardWidget(asseticon: "./assets/icons/gear.png", text: "${vehicles[index].gears}[${vehicles[index].transmition![0]}]"),
                                      CustomIconCardWidget(asseticon: "./assets/icons/wheel.png", text: "${vehicles[index].drivetrain}"),
                                      CustomIconCardWidget(asseticon: "./assets/icons/boot.png", text: "${vehicles[index].storage}L"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10,),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    var contacts = contactsProvider.getContactsById(0);
                                    showDialog(context: context, builder: (builder) {
                                      return CustomAlertWidget(
                                        icon: Icons.call,
                                        title: "Entre em contato",
                                        content: SizedBox(
                                          height: 100,
                                          width: 300,
                                          child: ListView.builder(
                                            itemCount: contacts!.length,
                                            itemBuilder: (context, index) {
                                              return Text("${contacts[index].name}: ${contacts[index].number}");
                                            }
                                          ),
                                        ),
                                      );
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.background,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))
                                  ), 
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 100),
                                    child: Text("${vehicles[index].sellprice}\$", style: const TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold),),
                                  ),
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
      ),
    );
  }
}