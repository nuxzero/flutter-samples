import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_store/product_list_tab.dart';
import 'package:flutter_cupertino_store/search_tab.dart';
import 'package:flutter_cupertino_store/shopping_cart_tab.dart';

class CupertinoStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          CupertinoTabView returnValue;
          switch (index) {
            case 0:
              returnValue = CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: ProductListTab());
                },
              );
              break;
            case 1:
              returnValue = CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: SearchTab());
                },
              );
              break;
            case 2:
              returnValue = CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: ShoppingCartTab());
                },
              );
              break;
          }
          return returnValue;
        });
  }
}
