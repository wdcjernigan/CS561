.class public Lcom/phonegap/api/PluginManager;
.super Lorg/apache/cordova/api/PluginManager;
.source "PluginManager.java"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 0
    .parameter "app"
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Lorg/apache/cordova/CordovaWebView;

    .end local p1
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/api/PluginManager;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)V

    .line 36
    return-void
.end method
