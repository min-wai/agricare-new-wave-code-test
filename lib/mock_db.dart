import 'package:agri_care/models/app_notification.dart';
import 'package:agri_care/models/loan_source.dart';
import 'package:agri_care/models/pest.dart';
import 'package:weather_icons/weather_icons.dart';

import 'models/crop.dart';
import 'models/shop.dart';
import 'models/vegetable.dart';
import 'models/weather.dart';

class Database {
  static final weathers = <Weather>[
    Weather(dayName: "Today", date: "6/08", icon: WeatherIcons.day_cloudy),
    Weather(dayName: "Sun", date: "6/09", icon: WeatherIcons.cloud),
    Weather(dayName: "Mon", date: "6/10", icon: WeatherIcons.day_sunny),
    Weather(dayName: "Tue", date: "6/11", icon: WeatherIcons.rain),
    Weather(dayName: "Wed", date: "6/12", icon: WeatherIcons.cloud),
    Weather(dayName: "Thu", date: "6/13", icon: WeatherIcons.rain),
  ];

  static final loanSources = <LoanSource>[
    LoanSource(
      imageLocation: "images/dawn-microfinance.jpeg",
      name: "Dawn Microfinance",
    ),
    LoanSource(
      imageLocation: "images/mahar-bawga.png",
      name: "Mahar Bawga Finance",
    ),
    LoanSource(
      imageLocation: "images/maha-agriculture.png",
      name: "Maha Agriculture",
    ),
    LoanSource(
      imageLocation: "images/yoma-bank.png",
      name: "Yoma Bank",
    ),
    LoanSource(
      imageLocation: "images/madb.jpeg",
      name: "Myanmar Agricultural Development Bank",
    ),
  ];

  static final pests = <Pest>[
    Pest(
        name: "ငှက်ကြီးတောင်",
        amount: "၁၈ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest1.jpg"),
    Pest(
        name: "ပိုင်ဒီ",
        amount: "၇၀၀ WDG",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest2.jpg"),
    Pest(
        name: "တော်ပီဒို ",
        amount: "၅၀ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest3.jpg"),
    Pest(
        name: "ငှက်ကြီးတောင်",
        amount: "၁၈ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest1.jpg"),
    Pest(
        name: "ပိုင်ဒီ",
        amount: "၇၀၀ WDG",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest2.jpg"),
    Pest(
        name: "တော်ပီဒို ",
        amount: "၅၀ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest3.jpg"),
    Pest(
        name: "ငှက်ကြီးတောင်",
        amount: "၁၈ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest1.jpg"),
    Pest(
        name: "ပိုင်ဒီ",
        amount: "၇၀၀ WDG",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest2.jpg"),
    Pest(
        name: "တော်ပီဒို ",
        amount: "၅၀ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest3.jpg"),
    Pest(
        name: "ငှက်ကြီးတောင်",
        amount: "၁၈ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest1.jpg"),
    Pest(
        name: "ပိုင်ဒီ",
        amount: "၇၀၀ WDG",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest2.jpg"),
    Pest(
        name: "တော်ပီဒို ",
        amount: "၅၀ SC",
        price: "၂၀၀၀ကျပ်/PC",
        imageLocation: "images/pest3.jpg"),
  ];

  static final notifications = <AppNotification>[
    AppNotification(
        title: "ခူးဆွတ်ချိန်",
        date: "09:15 AM, 12 Jun 2",
        content:
            "စိုက်ပျိုးထားသောခရမ်းချဥ်ပင်များ ခူးဆွတ်ရန် သင့်လျော်သော အချိန်ရောက်ရှိပါပြီ"),
    AppNotification(
      title: "ဆေးဖြန်းချိန်",
      date: "09:15 AM, 12 Jun 2",
      content:
          "စိုက်ပျိုးထားသော ငရုပ်ပင်များ အာဟာရ ပြည့်ဝရန် Compound -15:15:15 ကို ဖြန်းပေးသင့်သော . . . .",
    ),
    AppNotification(
      title: "ပေါင်းရှင်းရန်",
      date: "09:15 AM, 12 Jun 2",
      content:
          "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန်။",
    ),
    AppNotification(
      title: "ပေါင်းရှင်းရန်",
      date: "09:15 AM, 12 Jun 2",
      content:
          "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန်။",
    ),
    AppNotification(
      title: "ပေါင်းရှင်းရန်",
      date: "09:15 AM, 12 Jun 2",
      content:
          "စိုက်ပျိုးထားသော ခရမ်းချဥ်ပင်များ အနီးတွင် ပေါင်းပင်များကြီးထွားနေပါက ဂရုပြုရှင်းလင်းပေးရန်။",
    ),
  ];

  static final vegetables = <Vegetable>[
    Vegetable(
      name: "ကြက်သွန်",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      cost: "150,000 Ks",
      imageLocation: "images/onion.jpeg",
    ),
    Vegetable(
      name: "ငရုပ်သီး",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      cost: "150,000 Ks",
      imageLocation: "images/chilly.jpg",
    ),
    Vegetable(
      name: "ခရမ်းချဥ်သီး",
      date: "12 Jun 2019",
      season: "မိုးရာသီ",
      cost: "150,000 Ks",
      imageLocation: "images/tomato.jpg",
    ),
  ];

  static final shops = <Shop>[
    Shop(
        name: "ဒီပါမင်း",
        itemPrice: "10,000 Ks / Kg",
        imageLocation: "images/store1.jpeg"),
    Shop(
        name: "မင်းတစ်ပါး",
        itemPrice: "12,000 Ks",
        imageLocation: "images/store2.jpg"),
    Shop(
        name: "ဖြိုး",
        itemPrice: "12,000 Ks / Kg",
        imageLocation: "images/store3.jpg"),
  ];

  static final crops = <Crop>[
    Crop(
      type: "Compound - 15:15:15",
      amount: 150,
      unit: "Kg",
      area: 10,
      cost: 100000,
    ),
    Crop(
      type: "Lime",
      amount: 150,
      unit: "viss",
      area: 10,
      cost: 100000,
    ),
    Crop(
      type: "Trichoderma",
      amount: 150,
      unit: "Kg",
      area: 10,
      cost: 100000,
    ),
    Crop(
      type: "Lime",
      amount: 150,
      unit: "viss",
      area: 10,
      cost: 100000,
    ),
    Crop(
      type: "Compound - 15:15:15",
      amount: 150,
      unit: "Kg",
      area: 10,
      cost: 100000,
    ),
  ];
}
