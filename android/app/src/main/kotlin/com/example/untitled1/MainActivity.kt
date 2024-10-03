package com.example.untitled1

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity()
{
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setLocale("RU_ru") // Your preferred language. Not required, defaults to system language
        MapKitFactory.setApiKey("e5c4508c-1c89-4584-ac17-52eb76c131ce") // Your generated API key
    }
}