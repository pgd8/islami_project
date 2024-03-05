import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/Data_Classes/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(420, 870));
    SuraModel sura = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (content.isEmpty) {
      loadFile(sura.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            sura.name,
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(bottom: 90, right: 20, left: 20).r,
          child: Card(
            color: const Color.fromRGBO(255, 255, 255, 0.7607843137254902),
            elevation: 30.r,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              child: ListView.separated(
                itemBuilder: (context, index) => Text(
                  "${content[index]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.sp),
                ),
                separatorBuilder: (context, index) => Divider(
                  thickness: 1.5.h,
                  color: Color(0xFFB7935F),
                  indent: 50.w,
                  endIndent: 50.w,
                ),
                itemCount: content.length,
              ),
            ),
          ),
        ),
      ),
    );
  }

  loadFile(int index) async {
    String suraContent =
        await rootBundle.loadString('assets/quran_files/${index + 1}.txt');
    List<String> lines = suraContent.split("\n");
    content = lines;
    setState(() {});
  }
}
