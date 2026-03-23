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
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: isRtl ? 'Traditional Arabic' : 'Roboto',
      ),
      home: Directionality(
        textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            title: Text(langData['title']),
            centerTitle: true,
            actions: [
              PopupMenuButton<String>(
                icon: Icon(Icons.translate),
                onSelected: (lang) => setState(() => _currentLang = lang),
                itemBuilder: (context) => [
                  PopupMenuItem(value: 'ar', child: Text('العربية')),
                  PopupMenuItem(value: 'fr', child: Text('Français')),
                  PopupMenuItem(value: 'en', child: Text('English')),
                ],
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  color: Colors.blueGrey[50],
                  child: Text(langData['author'], textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: langData['sections'].length,
                  itemBuilder: (context, index) {
                    var item = langData['sections'][index];
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: ExpansionTile(
                        title: Text(item['title'], style: TextStyle(color: Colors.blueGrey[900], fontWeight: FontWeight.bold)),
                        subtitle: Text(item['timing'], style: TextStyle(color: Colors.red[700])),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item['rule'], style: TextStyle(fontSize: 16)),
                                Divider(height: 30),
                                Text("Hadith / الدليل:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                SizedBox(height: 5),
                                Text(item['hadith'], style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey[800])),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
