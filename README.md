# 📦 Caribou Flutter Plugin

A Flutter plugin providing **native Android camera rendering**, **media processing tools**, and **platform-level video utilities** using MethodChannels and Platform Views.

---

# 🚀 Features

## 🎥 Native Camera View (PlatformView)
- Embeds native Android camera preview inside Flutter UI
- Uses `PlatformView` architecture
- Supports real-time rendering without blocking Flutter UI thread

## 🧱 Media Processing
- Apply filters to images and videos
- Add watermarks to videos
- Extract audio from video files
- Generate video from images with audio sync
- Combine audio + video streams
- Share content to Instagram

## ⚡ High Performance Pipeline
- Built on Android Media3 Transformer
- Uses MediaCodec / MediaMuxer for encoding
- Hardware acceleration when available

---

#  Architecture Overview

This plugin uses two rendering systems:

## 1. Platform View (Camera)

Used for live camera preview:


Registered via:

```kotlin
flutterPluginBinding.platformViewRegistry.registerViewFactory(
    "caribou_camera_view",
    NativeViewFactory(cameraChannel)
)```


## INSTALLATION
```
dependencies:
  caribou_flutter_plugin:
    git:
      url: https://github.com/your-org/caribou_flutter_plugin.git````