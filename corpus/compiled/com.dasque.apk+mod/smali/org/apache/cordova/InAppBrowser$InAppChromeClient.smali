.class public Lorg/apache/cordova/InAppBrowser$InAppChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/InAppBrowser;

.field private webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/InAppBrowser;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .parameter
    .parameter "webView"

    .prologue
    .line 582
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    .line 583
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 584
    iput-object p2, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 585
    return-void
.end method


# virtual methods
.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 8
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 600
    const-string v3, "InAppBrowser"

    const-string v4, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->this$0:Lorg/apache/cordova/InAppBrowser;

    #getter for: Lorg/apache/cordova/InAppBrowser;->MAX_QUOTA:J
    invoke-static {v3}, Lorg/apache/cordova/InAppBrowser;->access$1000(Lorg/apache/cordova/InAppBrowser;)J

    move-result-wide v3

    cmp-long v3, p5, v3

    if-gez v3, :cond_0

    .line 605
    move-wide v1, p5

    .line 606
    .local v1, newQuota:J
    const-string v3, "InAppBrowser"

    const-string v4, "calling quotaUpdater.updateQuota newQuota: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    move-object/from16 v0, p9

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 615
    .end local v1           #newQuota:J
    :goto_0
    return-void

    .line 613
    :cond_0
    move-object/from16 v0, p9

    invoke-interface {v0, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 625
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 626
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 627
    return-void
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 5
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "result"

    .prologue
    .line 658
    if-eqz p4, :cond_2

    const-string v3, "gap-iab://"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 660
    const/16 v3, 0xa

    invoke-virtual {p4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, scriptCallbackId:Ljava/lang/String;
    const-string v3, "InAppBrowser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 663
    :cond_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V

    .line 671
    .local v2, scriptResult:Lorg/apache/cordova/api/PluginResult;
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser$InAppChromeClient;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3, v2, v1}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 672
    const-string v3, ""

    invoke-virtual {p5, v3}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 673
    const/4 v3, 0x1

    .line 676
    .end local v1           #scriptCallbackId:Ljava/lang/String;
    .end local v2           #scriptResult:Lorg/apache/cordova/api/PluginResult;
    :goto_1
    return v3

    .line 666
    .restart local v1       #scriptCallbackId:Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #scriptResult:Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 667
    .end local v2           #scriptResult:Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v0

    .line 668
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .restart local v2       #scriptResult:Lorg/apache/cordova/api/PluginResult;
    goto :goto_0

    .line 676
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #scriptCallbackId:Ljava/lang/String;
    .end local v2           #scriptResult:Lorg/apache/cordova/api/PluginResult;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
