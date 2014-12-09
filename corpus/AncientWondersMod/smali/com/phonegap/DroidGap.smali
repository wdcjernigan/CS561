.class public Lcom/phonegap/DroidGap;
.super Lcom/phonegap/api/PhonegapActivity;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/DroidGap$GapViewClient;,
        Lcom/phonegap/DroidGap$EclairClient;,
        Lcom/phonegap/DroidGap$GapClient;
    }
.end annotation


# instance fields
.field private activityResultCallback:Lcom/phonegap/api/Plugin;

.field private activityResultKeepRunning:Z

.field protected appView:Landroid/webkit/WebView;

.field private baseUrl:Ljava/lang/String;

.field public callbackServer:Lcom/phonegap/CallbackServer;

.field protected cancelLoadUrl:Z

.field protected clearHistory:Z

.field protected hideLoadingDialogOnPageLoad:Z

.field protected keepRunning:Z

.field protected loadInWebView:Z

.field private loadUrlTimeout:I

.field protected loadUrlTimeoutValue:I

.field private mKey:Lcom/phonegap/BrowserKey;

.field protected pluginManager:Lcom/phonegap/api/PluginManager;

.field private root:Landroid/widget/LinearLayout;

.field protected splashscreen:I

.field private url:Ljava/lang/String;

.field protected webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/phonegap/api/PhonegapActivity;-><init>()V

    .line 113
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 114
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 127
    iput v1, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    .line 135
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 139
    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->loadInWebView:Z

    .line 143
    iput v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    .line 146
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeoutValue:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 831
    return-void
.end method

.method static synthetic access$000(Lcom/phonegap/DroidGap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/phonegap/DroidGap;->handleActivityParameters()V

    return-void
.end method

.method static synthetic access$100(Lcom/phonegap/DroidGap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$108(Lcom/phonegap/DroidGap;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    return v0
.end method

.method static synthetic access$200(Lcom/phonegap/DroidGap;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method private bindBrowser(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "appView"

    .prologue
    .line 263
    new-instance v0, Lcom/phonegap/CallbackServer;

    invoke-direct {v0}, Lcom/phonegap/CallbackServer;-><init>()V

    iput-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    .line 264
    new-instance v0, Lcom/phonegap/api/PluginManager;

    invoke-direct {v0, p1, p0}, Lcom/phonegap/api/PluginManager;-><init>(Landroid/webkit/WebView;Lcom/phonegap/api/PhonegapActivity;)V

    iput-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    .line 265
    new-instance v0, Lcom/phonegap/BrowserKey;

    invoke-direct {v0, p1, p0}, Lcom/phonegap/BrowserKey;-><init>(Landroid/webkit/WebView;Lcom/phonegap/DroidGap;)V

    iput-object v0, p0, Lcom/phonegap/DroidGap;->mKey:Lcom/phonegap/BrowserKey;

    .line 268
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    const-string v1, "PluginManager"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/phonegap/DroidGap;->mKey:Lcom/phonegap/BrowserKey;

    const-string v1, "BackButton"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    const-string v1, "CallbackServer"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    const-string v0, "App"

    const-string v1, "com.phonegap.App"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "Geolocation"

    const-string v1, "com.phonegap.GeoBroker"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "Device"

    const-string v1, "com.phonegap.Device"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "Accelerometer"

    const-string v1, "com.phonegap.AccelListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "Compass"

    const-string v1, "com.phonegap.CompassListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "Media"

    const-string v1, "com.phonegap.AudioHandler"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "Camera"

    const-string v1, "com.phonegap.CameraLauncher"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v0, "Contacts"

    const-string v1, "com.phonegap.ContactManager"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "Crypto"

    const-string v1, "com.phonegap.CryptoHandler"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "File"

    const-string v1, "com.phonegap.FileUtils"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "Location"

    const-string v1, "com.phonegap.GeoBroker"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "Network Status"

    const-string v1, "com.phonegap.NetworkManager"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v0, "Notification"

    const-string v1, "com.phonegap.Notification"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "Storage"

    const-string v1, "com.phonegap.Storage"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v0, "Temperature"

    const-string v1, "com.phonegap.TempListener"

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/DroidGap;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private handleActivityParameters()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 296
    iget-object v1, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 301
    :cond_0
    const-string v1, "splashscreen"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    .line 302
    iget v1, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 304
    iget-object v1, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    iget v2, p0, Lcom/phonegap/DroidGap;->splashscreen:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 308
    :cond_1
    const-string v1, "hideLoadingDialogOnPageLoad"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->hideLoadingDialogOnPageLoad:Z

    .line 311
    const-string v1, "loadInWebView"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->loadInWebView:Z

    .line 314
    const-string v1, "loadUrlTimeoutValue"

    invoke-virtual {p0, v1, v3}, Lcom/phonegap/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    .line 315
    .local v0, timeout:I
    if-lez v0, :cond_2

    .line 316
    iput v0, p0, Lcom/phonegap/DroidGap;->loadUrlTimeoutValue:I

    .line 320
    :cond_2
    const-string v1, "keepRunning"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/phonegap/DroidGap;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 321
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "className"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lcom/phonegap/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method public cancelLoadUrl()V
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 446
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 456
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->clearHistory:Z

    .line 463
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 466
    :cond_0
    return-void
.end method

.method public displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "title"
    .parameter "message"
    .parameter "button"
    .parameter "exit"

    .prologue
    .line 1140
    move-object v2, p0

    .line 1141
    .local v2, me:Lcom/phonegap/DroidGap;
    new-instance v0, Lcom/phonegap/DroidGap$5;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/phonegap/DroidGap$5;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1160
    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 488
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 495
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 491
    .restart local p2
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 492
    .local v1, p:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 495
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getDoubleProperty(Ljava/lang/String;D)D
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 545
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 552
    .end local p2
    :cond_0
    :goto_0
    return-wide p2

    .line 548
    .restart local p2
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 549
    .local v1, p:Ljava/lang/Double;
    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getIntegerProperty(Ljava/lang/String;I)I
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 507
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 514
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 510
    .restart local p2
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 511
    .local v1, p:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 514
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 526
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 533
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 529
    .restart local p2
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 530
    .local v1, p:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 533
    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 188
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    .line 189
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setId(I)V

    .line 191
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f80

    invoke-direct {v5, v8, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    invoke-static {}, Lcom/phonegap/WebViewReflect;->checkCompatibility()V

    .line 198
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "2."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$EclairClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$EclairClient;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 205
    :goto_0
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$GapViewClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$GapViewClient;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/DroidGap;->setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V

    .line 207
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v10}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 208
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 209
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 212
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 213
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 214
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 215
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 219
    .local v1, pack:Ljava/lang/Package;
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, appPackage:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/app_database/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v7, v4}, Lcom/phonegap/WebViewReflect;->setStorage(Landroid/webkit/WebSettings;ZLjava/lang/String;)V

    .line 223
    invoke-static {v2}, Lcom/phonegap/WebViewReflect;->setDomStorage(Landroid/webkit/WebSettings;)V

    .line 226
    invoke-static {v2, v7}, Lcom/phonegap/WebViewReflect;->setGeolocationEnabled(Landroid/webkit/WebSettings;Z)V

    .line 229
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-direct {p0, v4}, Lcom/phonegap/DroidGap;->bindBrowser(Landroid/webkit/WebView;)V

    .line 232
    iget-object v4, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 233
    iget-object v4, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Lcom/phonegap/DroidGap;->setContentView(Landroid/view/View;)V

    .line 236
    iput-boolean v9, p0, Lcom/phonegap/DroidGap;->cancelLoadUrl:Z

    .line 239
    const-string v4, "url"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/phonegap/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 241
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading initial URL="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0, v3}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 244
    :cond_0
    return-void

    .line 202
    .end local v0           #appPackage:Ljava/lang/String;
    .end local v1           #pack:Ljava/lang/Package;
    .end local v2           #settings:Landroid/webkit/WebSettings;
    .end local v3           #url:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    new-instance v5, Lcom/phonegap/DroidGap$GapClient;

    invoke-direct {v5, p0, p0}, Lcom/phonegap/DroidGap$GapClient;-><init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 329
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadUrl("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 330
    iput-object p1, p0, Lcom/phonegap/DroidGap;->url:Ljava/lang/String;

    .line 331
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 332
    .local v0, i:I
    if-lez v0, :cond_0

    .line 333
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    .line 338
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " baseUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 341
    move-object v1, p0

    .line 342
    .local v1, me:Lcom/phonegap/DroidGap;
    new-instance v2, Lcom/phonegap/DroidGap$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/phonegap/DroidGap$1;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
    return-void

    .line 336
    .end local v1           #me:Lcom/phonegap/DroidGap;
    :cond_0
    iget-object v2, p0, Lcom/phonegap/DroidGap;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/phonegap/DroidGap;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 6
    .parameter "url"
    .parameter "time"

    .prologue
    .line 409
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadUrl("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    move-object v0, p0

    .line 413
    .local v0, me:Lcom/phonegap/DroidGap;
    new-instance v3, Lcom/phonegap/DroidGap$2;

    invoke-direct {v3, p0, v0}, Lcom/phonegap/DroidGap$2;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V

    invoke-virtual {p0, v3}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 419
    new-instance v1, Lcom/phonegap/DroidGap$3;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/phonegap/DroidGap$3;-><init>(Lcom/phonegap/DroidGap;ILcom/phonegap/DroidGap;Ljava/lang/String;)V

    .line 437
    .local v1, runnable:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 438
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 439
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1094
    invoke-super {p0, p1, p2, p3}, Lcom/phonegap/api/PhonegapActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1095
    iget-object v0, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 1096
    .local v0, callback:Lcom/phonegap/api/Plugin;
    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {v0, p1, p2, p3}, Lcom/phonegap/api/Plugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 476
    invoke-super {p0, p1}, Lcom/phonegap/api/PhonegapActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 477
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x800

    const/4 v3, 0x1

    const/4 v5, -0x1

    .line 160
    invoke-super {p0, p1}, Lcom/phonegap/api/PhonegapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 162
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 166
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 167
    iget-object v2, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    iget-object v2, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 169
    iget-object v2, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 174
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 175
    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->init()V

    .line 180
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 648
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onDestroy()V

    .line 651
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onPause.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/phonegap/DroidGap;->mKey:Lcom/phonegap/BrowserKey;

    if-eqz v0, :cond_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0}, Lcom/phonegap/api/PluginManager;->onDestroy()V

    .line 663
    iget-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v0}, Lcom/phonegap/CallbackServer;->destroy()V

    .line 666
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1005
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1008
    iget-object v0, p0, Lcom/phonegap/DroidGap;->mKey:Lcom/phonegap/BrowserKey;

    invoke-virtual {v0}, Lcom/phonegap/BrowserKey;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:document.keyEvent.backTrigger()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1037
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1016
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 1022
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 1028
    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_4

    .line 1029
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:keyEvent.menuTrigger()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_4
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:keyEvent.searchTrigger()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 600
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onPause()V

    .line 603
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0}, Lcom/phonegap/api/PluginManager;->onPause()V

    .line 609
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onPause.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    .line 614
    :cond_0
    return-void
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1110
    move-object v1, p0

    .line 1113
    .local v1, me:Lcom/phonegap/DroidGap;
    const-string v2, "errorUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/phonegap/DroidGap;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, errorUrl:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1117
    new-instance v2, Lcom/phonegap/DroidGap$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/phonegap/DroidGap$4;-><init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/phonegap/DroidGap;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1129
    :goto_0
    return-void

    .line 1126
    :cond_0
    iget-object v2, v1, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1127
    const-string v2, "Application Error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OK"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/phonegap/DroidGap;->displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 621
    invoke-super {p0}, Lcom/phonegap/api/PhonegapActivity;->onResume()V

    .line 624
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_2

    .line 627
    :cond_0
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    if-eqz v0, :cond_1

    .line 628
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 629
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/phonegap/DroidGap;->pluginManager:Lcom/phonegap/api/PluginManager;

    invoke-virtual {v0}, Lcom/phonegap/api/PluginManager;->onResume()V

    .line 636
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const-string v1, "javascript:try{PhoneGap.onResume.fire();}catch(e){};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    .line 641
    :cond_2
    return-void
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .parameter "statement"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/phonegap/DroidGap;->callbackServer:Lcom/phonegap/CallbackServer;

    invoke-virtual {v0, p1}, Lcom/phonegap/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 563
    return-void
.end method

.method public setDoubleProperty(Ljava/lang/String;D)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 593
    return-void
.end method

.method public setIntegerProperty(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 573
    return-void
.end method

.method public setStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/phonegap/DroidGap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    return-void
.end method

.method protected setWebViewClient(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "appView"
    .parameter "client"

    .prologue
    .line 253
    iput-object p2, p0, Lcom/phonegap/DroidGap;->webViewClient:Landroid/webkit/WebViewClient;

    .line 254
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 255
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1053
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityForResult(intent,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1054
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1055
    invoke-super {p0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1060
    return-void

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneGap Exception: Call startActivityForResult(Command, Intent) instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Lcom/phonegap/api/Plugin;Landroid/content/Intent;I)V
    .locals 1
    .parameter "command"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1071
    iput-object p1, p0, Lcom/phonegap/DroidGap;->activityResultCallback:Lcom/phonegap/api/Plugin;

    .line 1072
    iget-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->activityResultKeepRunning:Z

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/DroidGap;->keepRunning:Z

    .line 1080
    :cond_0
    invoke-super {p0, p2, p3}, Lcom/phonegap/api/PhonegapActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1081
    return-void
.end method
