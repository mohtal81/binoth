import 'package:flutter/material.dart';
import 'data.dart';

void main() => runApp(SahwApp());

class SahwApp extends StatefulWidget {
  @override
  _SahwAppState createState() => _SahwAppState();
}

class _SahwAppState extends State<SahwApp> {
  String _currentLang = 'ar';

  @override
  Widget build(BuildContext context) {
    var langData = AppData.translations[_currentLang]!;
    bool isRtl = _currentLang == 'ar';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Directionality(
        textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: Text(langData['title']),
            actions: [
              PopupMenuButton<String>(
                onSelected: (lang) => setState(() => _currentLang = lang),
                itemBuilder: (context) => [
                  PopupMenuItem(value: 'ar', child: Text('العربية')),
                  PopupMenuItem(value: 'fr', child: Text('Français')),
                  PopupMenuItem(value: 'en', child: Text('English')),
                ],
              )
            ],
          ),
          body: ListView.builder(
            itemCount: langData['sections'].length,
            itemBuilder: (context, index) {
              var item = langData['sections'][index];
              return Card(
                margin: EdgeInsets.all(10),
                child: ExpansionTile(
                  title: Text(item['title'], style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(item['timing'], style: TextStyle(color: Colors.red)),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item['rule'], style: TextStyle(fontSize: 16)),
                          Divider(),
                          Text(item['hadith'], style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[700])),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
