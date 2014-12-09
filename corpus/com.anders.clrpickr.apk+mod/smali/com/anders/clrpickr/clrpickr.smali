.class public Lcom/anders/clrpickr/clrpickr;
.super Lcom/phonegap/DroidGap;
.source "clrpickr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/phonegap/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/phonegap/DroidGap;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anders/clrpickr/clrpickr;->setRequestedOrientation(I)V

    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/phonegap/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 16
    return-void
.end method
