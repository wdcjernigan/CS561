.class public abstract Lcom/phonegap/api/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"

# interfaces
.implements Lcom/phonegap/api/IPlugin;


# instance fields
.field public ctx:Lcom/phonegap/api/PhonegapActivity;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V
    .locals 2
    .parameter "pluginResult"
    .parameter "callbackId"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/phonegap/api/Plugin;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {p1, p2}, Lcom/phonegap/api/PluginResult;->toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PhonegapActivity;->sendJavascript(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public abstract execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .parameter "statement"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/phonegap/api/Plugin;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v0, p1}, Lcom/phonegap/api/PhonegapActivity;->sendJavascript(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/phonegap/api/Plugin;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 53
    return-void
.end method

.method public setView(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/phonegap/api/Plugin;->webView:Landroid/webkit/WebView;

    .line 63
    return-void
.end method

.method public success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V
    .locals 2
    .parameter "pluginResult"
    .parameter "callbackId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/phonegap/api/Plugin;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {p1, p2}, Lcom/phonegap/api/PluginResult;->toSuccessCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PhonegapActivity;->sendJavascript(Ljava/lang/String;)V

    .line 117
    return-void
.end method
