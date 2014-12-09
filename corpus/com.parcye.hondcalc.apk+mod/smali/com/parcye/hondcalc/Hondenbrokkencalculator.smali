.class public Lcom/parcye/hondcalc/Hondenbrokkencalculator;
.super Lorg/apache/cordova/DroidGap;
.source "Hondenbrokkencalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "splashscreen"

    const v1, 0x7f020001

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 13
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 14
    return-void
.end method
