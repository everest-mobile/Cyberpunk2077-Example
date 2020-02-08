
import 'package:flutter/material.dart';
import 'package:prueba_flutter/shared/observer/observer.dart';
import 'package:prueba_flutter/shared/observer/observer_action.dart';
import 'package:prueba_flutter/shared/observer/observer_event.dart';
import 'package:prueba_flutter/shared/observer/observer_singlenton.dart';

import 'delegated.dart';


class DataDelegated implements Delegated {

  Observer _observer;

  DataDelegated() {
    _observer = SinglentonObserver.get();
  }

  @override
  void onHome(BuildContext context) {
    Navigator.of(context).pop();
    Navigator.of(context).pop();
    Navigator.of(context).pop();
  }

  @override
  void onCustomer(BuildContext context) {
    _observer.notify(new ObserverAction(ObserverEvent.EVENT_TAB_CUSTOMER, 0));
    Navigator.of(context).pop();
  }

  @override
  void onInvoiced(BuildContext context) {
    _observer.notify(new ObserverAction(ObserverEvent.EVENT_TAB_INVOICE, 1));
    Navigator.of(context).pop();
  }

  @override
  void onSettings(BuildContext context) {

    Navigator.of(context).pop();
  }

  @override
  void onAbout(BuildContext context) {

    Navigator.of(context).pop();
  }

}