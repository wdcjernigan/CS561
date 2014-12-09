.class public Lorg/meshtek/wonders7/DefaultActivity;
.super Lcom/phonegap/DroidGap;
.source "DefaultActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/phonegap/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/phonegap/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const-string v0, "splashscreen"

    const v1, 0x7f020001

    invoke-super {p0, v0, v1}, Lcom/phonegap/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 15
    const-string v0, "file:///android_asset/www/index.html"

    const/16 v1, 0x3e8

    invoke-super {p0, v0, v1}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 16
    return-void
.end method
