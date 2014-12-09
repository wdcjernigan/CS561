.class public Lcom/cobaltsign/readysetholiday/MainActivity;
.super Lorg/apache/cordova/DroidGap;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method protected fixJellyBeanIssues()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/apache/cordova/DroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaWebView;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/DroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, e:Ljava/lang/NullPointerException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "splashscreen"

    const v1, 0x7f020002

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 15
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->init()V

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/cobaltsign/readysetholiday/MainActivity;->fixJellyBeanIssues()V

    .line 22
    :cond_0
    const-string v0, "file:///android_asset/www/index.html"

    const/16 v1, 0xbb8

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 23
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method
