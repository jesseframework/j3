//package com.j3enterprisecloud.j3enterprise
//
//import android.app.Service
//import android.content.Intent
//import android.os.Build
//import android.os.IBinder
//import androidx.core.app.NotificationCompat
//
//class BackgroundJob : Service() {
//    override fun onCreate() {
//        super.onCreate()
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
//            val builder = NotificationCompat.Builder(this, "messages")
//                    .setContentText("This is running in Background")
//                    .setContentTitle("Flutter Background")
//                    .setSmallIcon(R.drawable.common_full_open_on_phone)
//            startForeground(101, builder.build())
//        }
//    }
//
//    override fun onBind(intent: Intent): IBinder? {
//        return null
//    }
//}