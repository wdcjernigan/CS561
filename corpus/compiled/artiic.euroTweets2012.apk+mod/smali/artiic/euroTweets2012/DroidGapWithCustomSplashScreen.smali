.class public abstract Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;
.super Lorg/apache/cordova/DroidGap;
.source "DroidGapWithCustomSplashScreen.java"


# instance fields
.field customSpashScreen:Landroid/widget/ImageView;

.field pgContainerView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public hideCustomSplashScreen()V
    .locals 3

    .prologue
    .line 43
    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->root:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->appView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DroidGapWithCustomSplashScreen"

    const-string v2, "hideCustomSplashScreen - do it in ui thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 19
    invoke-super {p0}, Lorg/apache/cordova/DroidGap;->init()V

    .line 21
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->pgContainerView:Landroid/view/ViewGroup;

    .line 24
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    .line 25
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    const-string v1, "C_CUSTOM_SPLASH_SCREEN"

    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lorg/apache/cordova/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 27
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->pgContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->showCustomSplashScreen()V

    .line 31
    return-void
.end method

.method public showCustomSplashScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 36
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->appView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 37
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    const-string v1, "C_CUSTOM_SPLASH_SCREEN"

    invoke-super {p0, v1, v2}, Lorg/apache/cordova/DroidGap;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    iget-object v0, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->customSpashScreen:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
