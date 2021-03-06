.class public Lcom/phonegap/CordovaWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "CordovaWebViewClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cordova"


# instance fields
.field ctx:Lcom/phonegap/DroidGap;

.field private doClearHistory:Z


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/CordovaWebViewClient;->doClearHistory:Z

    .line 52
    iput-object p1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    .line 53
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 201
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 209
    iget-boolean v1, p0, Lcom/phonegap/CordovaWebViewClient;->doClearHistory:Z

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/phonegap/CordovaWebViewClient;->doClearHistory:Z

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget v2, v1, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    .line 220
    const-string v1, "about:blank"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v2, "javascript:try{ PhoneGap.onNativeReady.fire();}catch(e){_nativeReady = true;}"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 226
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/phonegap/CordovaWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/phonegap/CordovaWebViewClient$1;-><init>(Lcom/phonegap/CordovaWebViewClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 245
    .end local v0           #t:Ljava/lang/Thread;
    :cond_2
    const-string v1, "about:blank"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    if-eqz v1, :cond_3

    .line 247
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v1}, Lcom/phonegap/CallbackServer;->destroy()V

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v1}, Lcom/phonegap/DroidGap;->endActivity()V

    .line 251
    :cond_4
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/CordovaWebViewClient;->doClearHistory:Z

    .line 191
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 264
    const-string v0, "Cordova"

    const-string v1, "DroidGap: GapViewClient.onReceivedError: Error code=%s Description=%s URL=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/phonegap/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget v1, v0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    .line 270
    iget-object v0, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->spinnerStop()V

    .line 273
    iget-object v0, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v0, p2, p3, p4}, Lcom/phonegap/DroidGap;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v1, p3, p4}, Lcom/phonegap/DroidGap;->getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lcom/phonegap/AuthenticationToken;

    move-result-object v0

    .line 178
    .local v0, token:Lcom/phonegap/AuthenticationToken;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/phonegap/AuthenticationToken;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/phonegap/AuthenticationToken;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 278
    iget-object v4, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v4}, Lcom/phonegap/DroidGap;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, packageName:Ljava/lang/String;
    iget-object v4, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v4}, Lcom/phonegap/DroidGap;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 282
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 283
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 295
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 289
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 293
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    .line 67
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v6, v6, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v6, p2}, Lcom/phonegap/api/PluginManager;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    :goto_0
    const/4 v6, 0x1

    return v6

    .line 71
    :cond_0
    const-string v6, "tel:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.DIAL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Cordova"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error dialing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v6, "geo:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 87
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 88
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Cordova"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error showing map "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string v6, "mailto:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    :try_start_2
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 98
    .end local v2           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v1

    .line 99
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Cordova"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sending email "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v6, "sms:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    :try_start_3
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 110
    .local v0, address:Ljava/lang/String;
    const/16 v6, 0x3f

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 111
    .local v3, parmIndex:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_5

    .line 112
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_4
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    const-string v6, "address"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v6, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 130
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #parmIndex:I
    :catch_3
    move-exception v1

    .line 131
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Cordova"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sending sms "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 115
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .restart local v0       #address:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #parmIndex:I
    :cond_5
    const/4 v6, 0x4

    :try_start_4
    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 119
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, query:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 121
    const-string v6, "body="

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 122
    const-string v6, "sms_body"

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 140
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #parmIndex:I
    .end local v4           #query:Ljava/lang/String;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_6
    const-string v6, "file://"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    iget-object v6, v6, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, p2}, Lcom/phonegap/DroidGap;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 141
    :cond_7
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, p2}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_8
    :try_start_5
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 149
    iget-object v6, p0, Lcom/phonegap/CordovaWebViewClient;->ctx:Lcom/phonegap/DroidGap;

    invoke-virtual {v6, v2}, Lcom/phonegap/DroidGap;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 150
    .end local v2           #intent:Landroid/content/Intent;
    :catch_4
    move-exception v1

    .line 151
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    const-string v6, "Cordova"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading url "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
