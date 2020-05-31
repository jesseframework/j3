package com.j3enterprisecloud.j3enterprise

import android.app.NotificationChannel
import android.app.NotificationManager
import android.os.Build
import io.flutter.app.FlutterApplication
import io.flutter.plugin.common.PluginRegistry
import io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback
import io.flutter.plugins.firebasemessaging.FlutterFirebaseMessagingService


class Application:FlutterApplication(), PluginRegistrantCallback {
  override fun onCreate() {
    super.onCreate()
    FlutterFirebaseMessagingService.setPluginRegistrant(this)

//    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
//      val channel = NotificationChannel("messages", "Messages", NotificationManager.IMPORTANCE_LOW)
//      val manager = getSystemService(NotificationManager::class.java)
//      manager.createNotificationChannel(channel)
//    }
  }
  override fun registerWith(registry: PluginRegistry?) {
    io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin.registerWith(registry?.registrarFor("io.flutter.plugins.firebasemessaging.FirebaseMessagingPlugin"));
  }
}