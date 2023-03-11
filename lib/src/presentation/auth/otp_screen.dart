import 'package:flutter/material.dart';
import 'package:feastly/src/common_widgets/buttons/button.dart';
import 'package:feastly/src/common_widgets/input.dart';
import 'package:feastly/src/constants/app_sizes.dart';
import 'package:feastly/src/constants/icons/feastly_icons.dart';
import 'package:feastly/src/constants/theme/custom_text_theme.dart';
import 'package:feastly/src/localization/string_hardcoded.dart';
import 'package:pinput/pinput.dart';



class OtpScreen extends StatefulWidget  {
  const OtpScreen({super.key});
  
  @override
  State<OtpScreen> createState() => _OtpScreenState();

}
class _OtpScreenState extends State<OtpScreen> {
  @override
  bool _isShow = true;
  bool _iswrong = false;
  
  Widget build(BuildContext context) {
     final theme = Theme.of(context);
     
     final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

   
    return Scaffold(
      
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Sizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                FeastlyIcon.arrow_back_green,
                size: 26.0,
                color: theme.primaryColor,
              ),
              
              gapH20,

//               Visibility(
//   visible: _isShow,
//   replacement: Text(
//                 'Something went wrong! '.hardcoded,
//                 style: theme.extension<CustomTextTheme>()!.h2!,
//               ),
//   child: Text(
//                 'Verification code'.hardcoded,
//                 style: theme.extension<CustomTextTheme>()!.h2!,
//               ),
// ),

              Visibility(
  visible: _isShow,
  child: Text(
                'Verification code'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
),
              
        

              Visibility(
  visible: _iswrong,
  child: Text(
                'Something went wrong! '.hardcoded,
                style: theme.extension<CustomTextTheme>()!.h2!,
              ),
),
              
               gapH12,
               Visibility(
  visible: _isShow,
  child:Text(
                'Enter the code we sent to you, if you do not find it check your spam folder too.'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!,
              ),
),
                Visibility(
  visible: _iswrong,
  child:Text(
                'Incorrrect code, try again or let us send you another one.'.hardcoded,
                style: theme.extension<CustomTextTheme>()!.body16Regular!.copyWith(color:Color.fromARGB(248, 201, 13, 13)),
                
              ),
),

              // Text(
              //   'Enter the code we sent to you, if you do not find it check your spam folder too.'.hardcoded,
              //   style: theme.extension<CustomTextTheme>()!.body16Regular!,
              // ),
              
              gapH48,
            Pinput(
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  
                    defaultPinTheme: PinTheme(
                      height: 60.0,
                      width: 60.0,
                      textStyle: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: BoxDecoration(
                        
                        color: Colors.white,
                        border: Border(
                      bottom: BorderSide(width: 1.5, color: Color.fromARGB(255, 74, 72, 72)),
                      ),
                      ),
                    ),
                    
                    validator: (s) {
                      if (s == '4444') {   
                        setState(() {
                        _isShow = true;
                        _iswrong = false;                  
                },
              ); 

               }else{
            // return  'Pin is incorrect';             
                setState(() {
                   _isShow = false;
                   _iswrong = true;
                   
                },
              );             
              }  
                 //return s == '2222' ? null : 'Pin is incorrect';
                  return null;
            },
                  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                  showCursor: true,
                  
                  onCompleted: (pin) => print(pin),
            
             ),
             
             gapH48,
             
              SizedBox(
                width: double.infinity,
                child: Text(
                  'I did not get a verification code.'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Regular!,
                  textAlign: TextAlign.center,
                ),
                
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Send again.'.hardcoded,
                  style: theme.extension<CustomTextTheme>()!.body16Bold,
                  textAlign: TextAlign.center,
                ),
              ),
              gapH24,
              Button(
                text: 'Continue'.hardcoded,
                onTap: () {
                  
                },
              ),
              gapH24,
              
              
            ],
          ),
        ),
      ),
    );
  }
}

