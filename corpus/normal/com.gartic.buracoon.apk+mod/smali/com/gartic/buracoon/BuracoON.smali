.class public Lcom/gartic/buracoon/BuracoON;
.super Lorg/apache/cordova/DroidGap;
.source "BuracoON.java"


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/gartic/buracoon/BuracoON;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/gartic/buracoon/BuracoON;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/gartic/buracoon/BuracoON;->doAdMob()V

    return-void
.end method

.method private doAdMob()V
    .locals 5

    .prologue
    .line 76
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14f8cc90e3149c"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/gartic/buracoon/BuracoON;->adView:Lcom/google/ads/AdView;

    .line 78
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 80
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/gartic/buracoon/BuracoON;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 84
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    .line 86
    .local v1, request:Lcom/google/ads/AdRequest;
    iget-object v2, p0, Lcom/gartic/buracoon/BuracoON;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x2710

    .line 45
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/gartic/buracoon/BuracoON;->setRequestedOrientation(I)V

    .line 50
    invoke-virtual {p0}, Lcom/gartic/buracoon/BuracoON;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 51
    const/16 v2, 0xc00

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 53
    invoke-virtual {p0}, Lcom/gartic/buracoon/BuracoON;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 56
    const-string v0, "splashscreen"

    const v1, 0x7f020002

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "file:///android_asset/www/index_it.html"

    invoke-super {p0, v0, v3}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/gartic/buracoon/BuracoON;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gartic/buracoon/BuracoON$1;

    invoke-direct {v1, p0}, Lcom/gartic/buracoon/BuracoON$1;-><init>(Lcom/gartic/buracoon/BuracoON;)V

    .line 71
    const-wide/16 v2, 0x1388

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    return-void

    .line 62
    :cond_0
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0, v3}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/gartic/buracoon/BuracoON;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/gartic/buracoon/BuracoON;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 96
    :cond_0
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->onDestroy()V

    .line 97
    return-void
.end method
