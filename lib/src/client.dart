import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'dart:convert';

class Client {
  static final dylib = DynamicLibrary.open('tdjson.dll');
  static final tdCreateClientId = dylib
      .lookupFunction<Int Function(), int Function()>('td_create_client_id');
  static final clientId = tdCreateClientId();
  static final tdSend = dylib
      .lookupFunction<
        Void Function(Int, Pointer<Utf8>),
        void Function(int, Pointer<Utf8>)
      >('td_send');
  static final tdReceive = dylib
      .lookupFunction<
        Pointer<Utf8> Function(Double),
        Pointer<Utf8> Function(double)
      >('td_receive');
  static void send(Map<String, dynamic> data) {
    tdSend(clientId, jsonEncode(data).toNativeUtf8());
  }

  static String receive(double timeout) {
    var s = tdReceive(timeout);
    while (true) {
      if (s == nullptr) continue;
      return s.toDartString();
    }
  }
}
