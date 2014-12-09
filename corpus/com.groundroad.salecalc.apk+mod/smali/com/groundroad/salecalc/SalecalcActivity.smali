.class public Lcom/groundroad/salecalc/SalecalcActivity;
.super Lcom/phonegap/DroidGap;
.source "SalecalcActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/phonegap/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 11
    const-string v0, "loadUrlTimeoutValue"

    const/16 v1, 0x2710

    invoke-super {p0, v0, v1}, Lcom/phonegap/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 12
    invoke-super {p0, p1}, Lcom/phonegap/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-super {p0}, Lcom/phonegap/DroidGap;->clearCache()V

    .line 14
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 15
    return-void
.end method
