import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class DynamicAppIcon
{
  Future<bool>changeTo({String iconName}) async
  {
    if (Platform.isIOS)
    {
      try
      {
        var platform = MethodChannel('plugins.olavstoppen.no/dynamic_app_icon');
        bool result = await platform.invokeMethod('change',<String,String>{'iconName':iconName ?? ""});
        if (result != null && result)
        {
          return Future.value(true);
        }
      }
      on Exception catch (_)
      {

      }
    }
    return Future.value(false);
  }
}
