import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.15,
      width: MediaQuery.sizeOf(context).width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: PageView(
          scrollDirection: Axis.horizontal,
          allowImplicitScrolling: true,
          children: [
            Image.asset('assets/images/slide.png',fit: BoxFit.cover,),
            Image.asset('assets/images/slide.png',fit: BoxFit.cover,),
            Image.asset('assets/images/slide.png',fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}
