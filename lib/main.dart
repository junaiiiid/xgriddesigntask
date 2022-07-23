import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:xgriddesigntask/services/state_service.dart';

void main() {
  runApp(const Start());
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, widget) => MultiProvider(
        providers: StateService.providers,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: StateService.initialRoute,
          routes: StateService.routes,
          navigatorKey: StateService.navigatorKey,
          theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
        ),
      ),
    );
  }
}
