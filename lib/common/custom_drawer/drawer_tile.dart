import 'package:flutter/material.dart';
import 'package:loja_vendas/models/page_manager.dart';
import 'package:provider/provider.dart';


class DrawerTile extends StatelessWidget {

   const DrawerTile({ required this.iconData, required this.title, required this.page});

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;
    return InkWell(
      onTap: (){
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
                iconData,
                size: 32,
                color: curPage == page ? Colors.black : Colors.lightGreen[700],
              ),
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16,
                  color: curPage == page ? Colors.black : Colors.lightGreen[700]
              ),
            )
          ],
        ),
      ),
    );
  }
}