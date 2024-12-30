import 'package:flutter/material.dart';
import 'package:sayohat/city/andijon/andijon.dart';
import 'package:sayohat/city/andijon/drawer/dam_olish_manzillari/diskateka.dart';
import 'package:sayohat/city/andijon/drawer/dam_olish_manzillari/hayvonot_bogi.dart';
import 'package:sayohat/city/andijon/drawer/dam_olish_manzillari/istirohat_bogi.dart';
import 'package:sayohat/city/andijon/drawer/dam_olish_manzillari/karaoki_bar.dart';
import 'package:sayohat/city/andijon/drawer/dam_olish_manzillari/teatr.dart';
import 'package:sayohat/city/andijon/drawer/qadimiy_obidalar/qadimiy_obidalar.dart';
import 'package:sayohat/city/andijon/drawer/qadimiy_obidalar/qadimiy_qadamjolar.dart';

class AndijonProvider with ChangeNotifier{
  List <Widget> sahifalar=[
    const Andijon(),
    const MyQadimiyObidalar(),
    const MyQadimiyQadamjolar(),
    const IstirohatBogi(),
    const HayvonotBogi(),
    const KaraokiBar(),
    const Diskateka(),
    const Teatr(),
  ];
  int index=0;
  void setIndex (int i){
    index=i;
    notifyListeners();
  }
}