import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/bloc/weather_bloc_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(3, -0.30),
                child: Container(
                  height: 200,
                  width: 600,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 96, 18, 231)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(3, -0.30),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color.fromARGB(255, 97, 5, 255)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, -1.1),
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 249, 134, 11)),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
                builder: (context, state) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "📍Oshawa",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w300,
                              fontSize: 18),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Good Morning",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Image.asset(
                          'assets/1.png',
                          height: 270,
                          width: 350,
                        ),
                        const Center(
                          child: Text("21°C",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 45)),
                        ),
                        const Center(
                          child: Text("THUNDERSTORM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 25)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Center(
                          child: Text("Friday 29.12.19am",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16)),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/11.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Sunrise",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "5.34am",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/12.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Sunset",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "6.34pm",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/13.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Temp Max",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "18°C",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/14.png',
                                  scale: 8,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Temp Min",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "18°C",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
