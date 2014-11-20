.class public Lcom/cywheel/IDoubtIt_en/IDoubtIt_enActivity;
.super Lorg/apache/cordova/DroidGap;
.source "IDoubtIt_enActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 24
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lcom/cywheel/IDoubtIt_en/IDoubtIt_enActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 35
    const/16 v2, 0xc00

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 38
    invoke-static {p0}, Lcom/apperhand/device/android/AndroidSDKProvider;->initSDK(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/airpush/android/Airpush;

    const-string v2, "65747"

    const-string v3, "1336709568104457191"

    const/4 v4, 0x0

    move-object v1, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 41
    return-void
.end method
