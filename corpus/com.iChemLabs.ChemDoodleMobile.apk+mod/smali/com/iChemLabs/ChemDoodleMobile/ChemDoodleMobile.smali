.class public Lcom/iChemLabs/ChemDoodleMobile/ChemDoodleMobile;
.super Lorg/apache/cordova/DroidGap;
.source "ChemDoodleMobile.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 11
    const-string v0, "splashscreen"

    const v1, 0x7f020001

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 12
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 14
    return-void
.end method

.method public onEulaAgreedTo()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lorg/apache/cordova/Config;->getStartUrl()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 20
    return-void
.end method
