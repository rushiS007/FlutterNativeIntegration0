package com.example.nativeapp

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import io.flutter.embedding.android.FlutterFragment

class HelloFlutter : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_hello_flutter)
        val fragment=FlutterFragment.withCachedEngine("my_engine_id").build<FlutterFragment>()
//        supportFragmentManager.beginTransaction().add(R.id.button2,fragment).commit()
    }
}