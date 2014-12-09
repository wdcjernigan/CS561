.class public Lcom/phonegap/BrowserKey;
.super Ljava/lang/Object;
.source "BrowserKey.java"


# instance fields
.field bound:Z

.field mAction:Lcom/phonegap/DroidGap;

.field mView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Lcom/phonegap/DroidGap;)V
    .locals 1
    .parameter "view"
    .parameter "action"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/BrowserKey;->bound:Z

    .line 28
    iput-object p2, p0, Lcom/phonegap/BrowserKey;->mAction:Lcom/phonegap/DroidGap;

    .line 29
    return-void
.end method


# virtual methods
.method public exitApp()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/phonegap/BrowserKey;->mAction:Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->finish()V

    .line 50
    return-void
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/phonegap/BrowserKey;->bound:Z

    return v0
.end method

.method public override()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "PhoneGap"

    const-string v1, "WARNING: Back Button Default Behaviour will be overridden.  The backKeyDown event will be fired!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/BrowserKey;->bound:Z

    .line 35
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/BrowserKey;->bound:Z

    .line 45
    return-void
.end method
