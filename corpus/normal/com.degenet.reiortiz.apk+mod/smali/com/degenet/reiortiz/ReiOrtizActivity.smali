.class public Lcom/degenet/reiortiz/ReiOrtizActivity;
.super Lorg/apache/cordova/DroidGap;
.source "ReiOrtizActivity.java"


# static fields
.field public static _ReiOrtizActivityInstance:Lcom/degenet/reiortiz/ReiOrtizActivity;

.field public static _deviceToken:Ljava/lang/String;


# instance fields
.field _message:Ljava/lang/String;

.field public _pageFinishedLoading:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, ""

    sput-object v0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_pageFinishedLoading:Ljava/lang/Boolean;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public displayAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "msg"
    .parameter "title"

    .prologue
    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    const-string v1, "OK"

    new-instance v2, Lcom/degenet/reiortiz/ReiOrtizActivity$1;

    invoke-direct {v2, p0}, Lcom/degenet/reiortiz/ReiOrtizActivity$1;-><init>(Lcom/degenet/reiortiz/ReiOrtizActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->isTaskRoot()Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, intentAction:Ljava/lang/String;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->finish()V

    .line 61
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intentAction:Ljava/lang/String;
    :goto_0
    return-void

    .line 41
    :cond_0
    sput-object p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_ReiOrtizActivityInstance:Lcom/degenet/reiortiz/ReiOrtizActivity;

    .line 43
    const-string v3, "splashscreen"

    const v4, 0x7f020001

    invoke-super {p0, v3, v4}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 45
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, regId:Ljava/lang/String;
    sget-object v3, Lcom/degenet/reiortiz/ReiOrtizActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registration id =====  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1022967219209"

    aput-object v5, v3, v4

    invoke-static {p0, v3}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 58
    :goto_1
    const-string v3, "file:///android_asset/www/index.html"

    const/16 v4, 0xfa0

    invoke-super {p0, v3, v4}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 54
    :cond_1
    sput-object v2, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    .line 55
    sget-object v3, Lcom/degenet/reiortiz/ReiOrtizActivity;->TAG:Ljava/lang/String;

    const-string v4, "Already registered"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "id"
    .parameter "obj"

    .prologue
    .line 73
    const-string v0, "onPageFinished"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_pageFinishedLoading:Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->registerDeviceTokenOnAM()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/DroidGap;->onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onPause()V

    .line 84
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 88
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 92
    :cond_0
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_2

    .line 96
    iget-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    const-string v2, "Nuevo Mensaje:"

    invoke-virtual {p0, v1, v2}, Lcom/degenet/reiortiz/ReiOrtizActivity;->displayAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v1}, Lcom/degenet/reiortiz/ReiOrtizActivity;->setIntent(Landroid/content/Intent;)V

    .line 99
    const-string v1, ""

    iput-object v1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_message:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public registerDeviceTokenOnAM()V
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_pageFinishedLoading:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript: DataLoader.setDeviceToken(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->sendJavascript(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method
