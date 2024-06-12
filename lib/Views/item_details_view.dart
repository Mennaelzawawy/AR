import 'package:ar_app/Models/item_model.dart';
import 'package:ar_app/main.dart';
import 'package:ar_app/widgets/elevated_button_widget.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../generated/l10n.dart';
import '../widgets/awesome_snackbar.dart';
import '../widgets/expansion_tile_widget.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: isLight(context) ? Colors.black : Colors.white,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Image.asset(item.image),
          const Divider(
            thickness: 1,
            height: 0,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ElevatedButtonWidget(
                    whatToDo: S.of(context).Show_in_3D,
                    onTapAction: () async {
                      final channel = MethodChannel('ar_flutter_channel');
                      try {
                        final result = await channel.invokeMethod('showItem',
                            {'itemId': 6}); // Replace with your data
                        print(
                            result); // Handle any response from Unity (optional)
                      } on PlatformException catch (error) {
                        print(error.message); // Handle errors
                      }
                    }),
              ),
              const Spacer(
                flex: 1,
              ),
              // const Padding(
              //   padding: EdgeInsets.all(10),
              //   child: LikeButtonWidget(),
              // ),
            ],
          ),

          // Text("Description:",style: TextStyle(fontWeight: FontWeight.bold),),
          // Text(item.description),
          ExpansionTileWidget(
            item: item.description,
            name: S.of(context).Description,
          ),
          ExpansionTileWidget(
            item: item.seller,
            name: S.of(context).Seller,
          ),
          ExpansionTileWidget(
            item: item.price.toString(),
            name: S.of(context).Price_name,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: ElevatedButtonWidget(
              whatToDo: S.of(context).Add_to_cart,
              size: 18,
              onTapAction: () {
                final snackBar = SnackBar(
                  elevation: 0,
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  content: AwesomeSnackBarWidget(
                    title: S.of(context).success_tit,
                    message: S.of(context).success_mes,
                    type: ContentType.success,
                  ),
                );
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
              },
            ),
          )

          // Text("Seller:",style: TextStyle(fontWeight: FontWeight.bold),),
          // Text(item.seller)
        ],
      ),
    );
  }
}
