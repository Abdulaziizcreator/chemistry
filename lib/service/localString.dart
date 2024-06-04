import 'package:chemistry/strings.dart';
import 'package:get/get.dart';

class Localstring extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "uz_UZB": {
          introduceTitle: "Kimyoni - biz bilan o'rganing",
          introduceSubtitleUzb: introduceSubtitleUzb,
          categoryUzb: "Bo'limlar",
          titleHomePageUzb: titleHomePageUzb,
          subtitleHomePageUzb: subtitleHomePageUzb,
          "Skip": "O'tkashish",
          "Done": "Tugatish",
        },
        "ru_RU": {
          introduceTitle: introduceTitleRus,
          introduceSubtitleUzb: introduceSubtitleRus,
          categoryUzb: categoryRus,
          titleHomePageUzb: titleHomePageRus,
          subtitleHomePageUzb: subtitleHomePageRus,
          "Skip": "Пропустить",
          "Done": "Сделанный",
        },
        "kril_KRIL": {
          introduceTitle: introduceTitleKril,
          introduceSubtitleUzb: introduceSubtitleKril,
          categoryUzb: categoryKril,
          titleHomePageUzb: titleHomePageKril,
          subtitleHomePageUzb: subtitleHomePageKril,
          "Skip": "Ўтказиш",
          "Done": "Кейингиси",
        }
      };
}
