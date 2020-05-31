package com.j3enterprisecloud.j3enterprise

import android.content.Intent
import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {

    //private var forService: Intent? = null

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);


        //forService = Intent(this@MainActivity, BackgroundJob::class.java)
    }

//    override fun onDestroy() {
//        super.onDestroy()
//        stopService(forService)
//    }
//
//    private fun startService() {
//        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
//            startForegroundService(forService)
//        } else {
//            startService(forService)
//        }
//    }


}
