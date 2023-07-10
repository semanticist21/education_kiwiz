import 'package:flutter/material.dart';

import 'const.dart';

abstract class TextStyles {
  static const TextStyle LoginMainHeader = TextStyle(
    color: PRIMARY_TXT_COLOR, // 글자 색상은 흰색을 사용합니다.
    fontSize: 36, // 글자 크기는 36로 설정합니다.
    fontWeight: FontWeight.w900, // 글자 굵기는 볼드로 설정합니다.
  );

  static const TextStyle LoginSub = TextStyle(
    color: PRIMARY_TXT_COLOR, // 글자 색상은 흰색을 사용합니다.
    fontSize: 13, // 글자 크기는 32로 설정합니다.
    fontWeight: FontWeight.bold, // 글자 굵기는 볼드로 설정합니다.
  );

  static const TextStyle LoginTxtButton = TextStyle(
    color: HIGHLIGHT_TXT_COLOR, // 글자 색상은 흰색을 사용합니다.
    fontSize: 13, // 글자 크기는 32로 설정합니다.
    fontWeight: FontWeight.bold, // 글자 굵기는 볼드로 설정합니다.
  );
}
