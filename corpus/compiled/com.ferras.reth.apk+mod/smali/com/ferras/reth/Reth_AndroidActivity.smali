.class public Lcom/ferras/reth/Reth_AndroidActivity;
.super Lorg/apache/cordova/DroidGap;
.source "Reth_AndroidActivity.java"


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
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 11
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/ferras/reth/Reth_AndroidActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 14
    const/16 v2, 0xc00

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 16
    return-void
.end method
