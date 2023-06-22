import 'package:tik_go/models/drawer_option.dart';

class ItemList {
  final String titel;
  final DrawerOption itemstatus;
  ItemList(this.titel, this.itemstatus);
}

class DrawerListItem {
  final String titel;
  final String icon;
  final String selecticon;
  final List<ItemList> submenu;
  final DrawerOption status;
  DrawerListItem(
      this.icon, this.selecticon, this.titel, this.status, this.submenu);
}
