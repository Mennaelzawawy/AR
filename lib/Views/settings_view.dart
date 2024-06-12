import 'package:ar_app/Views/help_view.dart';
import 'package:ar_app/Views/profile_view.dart';
import 'package:ar_app/widgets/switch_mode_button.dart';
import 'package:ar_app/widgets/toggle_switch_widget.dart';
import 'package:flutter/material.dart';
import '../generated/l10n.dart';
import '../widgets/settings_option_listtile.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/user.jpg',
                ),
                radius: 65,
              ),
              const SizedBox(height: 10,),
              const Text("Ali",style: TextStyle(fontSize: 18),),
              const SizedBox(height: 20,),
              GestureDetector(
                 
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProfileView()));
        },
                child: SettingsOptionsListTile(
                  optionName: S.of(context).Acc,
                  leadingIcon: Icons.person_outlined,
                  trailing:const Icon( Icons.arrow_forward_ios),
                ),
              ),
              SettingsOptionsListTile(
                optionName: S.of(context).Lang,
                leadingIcon: Icons.language,
                trailing:const ToggleSwitchWidget(), 
              ),
              SettingsOptionsListTile(
                optionName: S.of(context).Dark_Mode,
                leadingIcon: Icons.dark_mode_outlined,
                trailing: const SwitchModeButtonWidget(), 
              ),
              GestureDetector(
                  onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HelpView()));
        },
                child: SettingsOptionsListTile(
                  optionName: S.of(context).Help,
                  leadingIcon: Icons.question_mark,
                  trailing: const Icon( Icons.arrow_forward_ios),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
