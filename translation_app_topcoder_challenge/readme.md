# English-Indonesian Text Translation Android App

This is a simple Android App, built using Flutter (Dart programming language), with the sole purpose of translating text **from English to Indonesian** using Google's translation API through Dart package Translator.

## How to use/deploy?

Install the apk on a physical android device or in an emulator. Apk file can be found here:

> app.apk

## Testing

For testing purpose, please refer to the content of the provided texts in:

> source.txt
for the source language (English), and

> target.txt
for the target language (Indonesian) which have been verified that the translation is grammatically correct in Indonesian (app developer is a native Indonesian).

## Why don't call the API directly?

This app, initially, was built with HTTP Post request using the API in mind. However, due to persistently concuring issue with the request token, the [Transalator Package](https://pub.dev/packages/translator) was used instead. The error massage from calling the API can be found here:

> error_msg.html

Due to the nature of the package which is developed for educational purposes only and that it was based on crawling the Google Translate website, this package may break anytime and renders this app useless.

