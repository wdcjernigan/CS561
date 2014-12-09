.class public Lbr/com/rommel/point/PointActivity;
.super Lcom/phonegap/DroidGap;
.source "PointActivity.java"


# instance fields
.field private adView:Lcom/google/ads/AdView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/phonegap/DroidGap;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbr/com/rommel/point/PointActivity;->mHandler:Landroid/os/Handler;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lbr/com/rommel/point/PointActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lbr/com/rommel/point/PointActivity;->doAdMob()V

    return-void
.end method

.method private doAdMob()V
    .locals 5

    .prologue
    .line 33
    new-instance v2, Lcom/google/ads/AdView;

    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v4, "a14f859d3db23f1"

    invoke-direct {v2, p0, v3, v4}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v2, p0, Lbr/com/rommel/point/PointActivity;->adView:Lcom/google/ads/AdView;

    .line 36
    iget-object v0, p0, Lcom/phonegap/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 38
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v2, p0, Lbr/com/rommel/point/PointActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 42
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    .line 44
    .local v1, request:Lcom/google/ads/AdRequest;
    iget-object v2, p0, Lbr/com/rommel/point/PointActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 18
    invoke-super {p0, p1}, Lcom/phonegap/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v0, "loadInWebView"

    invoke-super {p0, v0, v2}, Lcom/phonegap/DroidGap;->setBooleanProperty(Ljava/lang/String;Z)V

    .line 20
    const-string v0, "loadUrlTimeoutValue"

    const v1, 0xea60

    invoke-super {p0, v0, v1}, Lcom/phonegap/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 21
    const-string v0, "keepRunning"

    invoke-super {p0, v0, v2}, Lcom/phonegap/DroidGap;->setBooleanProperty(Ljava/lang/String;Z)V

    .line 22
    const-string v0, "file:///android_asset/www/index.html"

    invoke-super {p0, v0}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lbr/com/rommel/point/PointActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lbr/com/rommel/point/PointActivity$1;

    invoke-direct {v1, p0}, Lbr/com/rommel/point/PointActivity$1;-><init>(Lbr/com/rommel/point/PointActivity;)V

    .line 28
    const-wide/16 v2, 0x3a98

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/phonegap/DroidGap;->onStart()V

    .line 50
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 51
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/phonegap/DroidGap;->onStop()V

    .line 56
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 57
    return-void
.end method
