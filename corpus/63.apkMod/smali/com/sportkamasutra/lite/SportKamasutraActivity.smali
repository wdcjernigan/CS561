.class public Lcom/sportkamasutra/lite/SportKamasutraActivity;
.super Lorg/apache/cordova/DroidGap;
.source "SportKamasutraActivity.java"


# static fields
.field public static assetManager:Landroid/content/res/AssetManager;


# instance fields
.field private language:Lcom/schaul/plugins/share/Language;

.field public player:Landroid/media/MediaPlayer;

.field public soundEnabled:Z

.field private tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->soundEnabled:Z

    .line 13
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x42c8

    const/4 v3, 0x1

    .line 24
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->init()V

    .line 26
    const-string v0, "splashscreen"

    const/high16 v1, 0x7f02

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 28
    invoke-static {}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->getInstance()Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    .line 31
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "UA-35907632-1"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->startNewSession(Ljava/lang/String;Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "AppName"

    const-string v2, "sportkamasutraLite"

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->setCustomVar(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 34
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    const-string v1, "/index.html"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->trackPageView(Ljava/lang/String;)V

    .line 36
    new-instance v0, Lcom/schaul/plugins/share/Language;

    invoke-direct {v0, p0}, Lcom/schaul/plugins/share/Language;-><init>(Lcom/sportkamasutra/lite/SportKamasutraActivity;)V

    iput-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->language:Lcom/schaul/plugins/share/Language;

    .line 37
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->language:Lcom/schaul/plugins/share/Language;

    const-string v2, "AndroidLanguage"

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/sportkamasutra/lite/SportKamasutraActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->assetManager:Landroid/content/res/AssetManager;

    .line 40
    const-string v0, "file:///android_asset/www/index.html"

    const/16 v1, 0xfa0

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 43
    const/high16 v0, 0x7f05

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    .line 44
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 46
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 48
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->tracker:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->stopSession()V

    .line 73
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 53
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 61
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->soundEnabled:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 64
    :cond_0
    return-void
.end method
