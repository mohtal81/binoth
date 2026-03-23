class AppData {
  static const Map<String, Map<String, dynamic>> translations = {
    'ar': {
      'title': 'رسالة في سجود السهو',
      'author': 'للفضيلة الشيخ محمد بن صالح العثيمين',
      'sections': [
        {
          'title': 'الزيادة (Addition)',
          'rule': 'إذا زاد المصلي قياماً أو قعوداً أو ركوعاً أو سجوداً ناسياً سجد بعد السلام.',
          'timing': 'بعد السلام',
          'hadith': 'حديث ابن مسعود: "صلى النبي ﷺ الظهر خمساً... فسجد سجدتين بعد ما سلم".'
        },
        {
          'title': 'النقص (Omission)',
          'rule': 'إذا ترك المصلي واجباً كالتشهد الأول ناسياً، يجبره بسجود السهو.',
          'timing': 'قبل السلام',
          'hadith': 'حديث ابن بحينة: "أن النبي ﷺ قام في الركعتين الأوليين ولم يجلس... فسجد سجدتين قبل أن يسلم".'
        },
        {
          'title': 'الشك (Doubt)',
          'rule': 'التردد بين أمرين. إذا ترجح أحدهما فبعد السلام، وإن لم يترجح فقبل السلام.',
          'timing': 'حسب الترجيح',
          'hadith': 'قوله ﷺ: "إذا شك أحدكم في صلاته فليتحر الصواب فليتم عليه ثم ليسلم ثم يسجد سجدتين".'
        }
      ]
    },
    'fr': {
      'title': 'La Prosternation de l\'Oubli',
      'author': 'Cheikh Muhammad ibn Salih al-Uthaymin',
      'sections': [
        {
          'title': 'L\'Ajout (Az-Ziyada)',
          'rule': 'Si le prieur ajoute un acte par oubli, il se prosterne après le salut final.',
          'timing': 'Après le Salam',
          'hadith': 'Hadith d\'Ibn Mas\'ud : "Le Prophète ﷺ a prié le Dhuhr en cinq unités... il fit deux prosternations après avoir salué".'
        },
        {
          'title': 'L\'Omission (An-Naqs)',
          'rule': 'Si l\'on oublie une obligation (ex: 1er Tashahhud), on se prosterne avant le salut.',
          'timing': 'Avant le Salam',
          'hadith': 'Hadith d\'Ibn Buhaynah : "Le Prophète ﷺ s\'est levé sans s\'asseoir... il se prosterna deux fois avant de saluer".'
        },
        {
          'title': 'Le Doute (Ash-Shakk)',
          'rule': 'Si une option l\'emporte, après le Salam. Sinon, on bâtit sur la certitude avant le Salam.',
          'timing': 'Selon le cas',
          'hadith': 'Le Prophète ﷺ a dit : "Si l\'un de vous doute, qu\'il cherche ce qui est juste... puis se prosterne deux fois".'
        }
      ]
    },
    'en': {
      'title': 'Prostration of Forgetfulness',
      'author': 'Sheikh Muhammad ibn Salih al-Uthaymin',
      'sections': [
        {
          'title': 'Addition (Az-Ziyadah)',
          'rule': 'If a person adds a movement by mistake, they prostrate after the final salutation.',
          'timing': 'After Salam',
          'hadith': 'Hadith of Ibn Mas\'ud: "The Prophet ﷺ prayed five units... he prostrated twice after the Salam."'
        },
        {
          'title': 'Omission (An-Naqs)',
          'rule': 'If an obligatory act is forgotten, it is compensated before the salutation.',
          'timing': 'Before Salam',
          'hadith': 'Hadith of Ibn Buhaynah: "The Prophet ﷺ stood up without sitting... he prostrated twice before the Salam."'
        },
        {
          'title': 'Doubt (Ash-Shakk)',
          'rule': 'If one side is likely, prostrate after Salam. Otherwise, build on certainty before Salam.',
          'timing': 'Based on case',
          'hadith': 'The Prophet ﷺ said: "If one of you doubts, let him strive for what is correct... then prostrate twice."'
        }
      ]
    }
  };
}
