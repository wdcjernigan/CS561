.class public interface abstract Lcom/phonegap/api/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# virtual methods
.method public abstract execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
.end method

.method public abstract isSynch(Ljava/lang/String;)Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setContext(Lcom/phonegap/api/PhonegapActivity;)V
.end method

.method public abstract setView(Landroid/webkit/WebView;)V
.end method
