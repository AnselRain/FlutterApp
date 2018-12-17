import 'package:flutter/material.dart';
import 'swiper.dart';
import 'goods_item.dart';

import 'data.dart';

class HomePage extends StatefulWidget {
	@override
	State<HomePage> createState() => new __HomePageState();
}
class __HomePageState extends State<HomePage>{
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
            theme: new ThemeData(
                primarySwatch: Colors.red,
            ),
			home:new Scaffold(
				appBar: AppBar(
					title: Text('首页'),
				),
				body:new Column(
                    children: <Widget>[
                        // banner
                        new Container(
                            height:180.0,
                            child:new HomeSwiper(bannerList:bannerList),
                        ),
                        // list
                        new ItemList(),
                    ],
                ),
		    ),
        );
	}
}

// 商品列表
class ItemList extends StatefulWidget {
    @override
	State<ItemList> createState() => new __ItemListState();
}
class __ItemListState extends State<ItemList>{
    @override
	Widget build(BuildContext context) {
        List<Widget> list = [];
        int len = itemListDatas.length;
        for (var i = 0; i < len; i++) {
            itemListDatas[i]['isLastOne'] = i == len-1 ? true : false;
            list.add(new Item(item:itemListDatas[i]));
        }
        return new Container(
            height:500.0,
            child: ListView(
                shrinkWrap: true, 
                children: list,
            )
        ); 
        
    }
}