.class public Lartiic/plugins/CustomSplashScreenPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "CustomSplashScreenPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "callbackId"

    .prologue
    .line 17
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 19
    .local v0, result:Lcom/phonegap/api/PluginResult;
    const-string v1, "hide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lartiic/plugins/CustomSplashScreenPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    instance-of v1, v1, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;

    if-eqz v1, :cond_0

    .line 21
    iget-object v1, p0, Lartiic/plugins/CustomSplashScreenPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    new-instance v2, Lartiic/plugins/CustomSplashScreenPlugin$1;

    invoke-direct {v2, p0}, Lartiic/plugins/CustomSplashScreenPlugin$1;-><init>(Lartiic/plugins/CustomSplashScreenPlugin;)V

    invoke-interface {v1, v2}, Lorg/apache/cordova/api/CordovaInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    :cond_0
    return-object v0
.end method

.method public bridge synthetic execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lartiic/plugins/CustomSplashScreenPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;

    move-result-object v0

    return-object v0
.end method
