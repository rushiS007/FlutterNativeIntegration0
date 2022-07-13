package com.example.nativeapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.os.Looper
import io.flutter.embedding.android.FlutterActivity;
import android.os.Handler
import android.content.Intent
import android.view.View
import android.widget.Toast
import androidx.annotation.NonNull
import androidx.fragment.app.FragmentActivity
import androidx.fragment.app.FragmentManager
import io.flutter.embedding.android.FlutterActivityLaunchConfigs
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import android.widget.Button;

class MainActivity : AppCompatActivity() {

    lateinit var flutterEngine: FlutterEngine
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
//        FlutterEngine(this).let {
//            it.navigationChannel.setInitialRoute("/flutter_fragment")
//            it.dartExecutor.executeDartEntrypoint(
//                DartExecutor.DartEntrypoint.createDefault()
//            )
//            FlutterEngineCache.getInstance().put("my_engine_id", it)
//        }

        flutterEngine= FlutterEngine(this)
        flutterEngine.navigationChannel.setInitialRoute("/")
        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint.createDefault()
        )
        FlutterEngineCache.getInstance().put("my_engine_id",flutterEngine)
    }

    fun flutterFragment(view:View){
        FlutterEngine(this).let {
            it.navigationChannel.setInitialRoute("/flutter_fragment")
            it.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )
            FlutterEngineCache
                .getInstance()
                .put("my_engine_id",it)
            val intent = Intent()
            intent.setClass(this,FlutterActivity::class.java)
            startActivity(intent)
        }
    }

    fun helloFlutter(view: View) {
        var intent = Intent(applicationContext,FlutterActivity::class.java)
        startActivity(intent)
    }
}