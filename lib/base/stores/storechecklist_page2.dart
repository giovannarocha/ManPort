import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
part 'storechecklist_page2.g.dart';

class StoreChecklistPage2 = StoreChecklistPage2Base with _$StoreChecklistPage2;

abstract class  StoreChecklistPage2Base with Store {
  
  @observable
  Color macacoIndicadorLike = Colors.white;
  Color macacoIndicadorDislike = Colors.white;

  @action 
  mudarmacacoindicador(value) { 
    switch (value) { 
      case 1:
        macacoIndicadorLike = Colors.green;
        macacoIndicadorDislike = Colors.white;
        break;
      case 2:
        macacoIndicadorLike = Colors.white;
        macacoIndicadorDislike = Colors.red;   
        break;
      default:
        macacoIndicadorLike = Colors.white;
        macacoIndicadorDislike = Colors.white;   
        break;
    }
  }

}