import 'package:flutter/material.dart';
import 'package:slicing_ui_5/core.dart';
import '../view/more_details_view.dart';

class MoreDetailsController extends State<MoreDetailsView> {
  static late MoreDetailsController instance;
  late MoreDetailsView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
