.class public Lartiic/euroTweets2012/GolesEnVivoActivity;
.super Lorg/apache/cordova/DroidGap;
.source "GolesEnVivoActivity.java"


# static fields
.field private static final MY_AD_UNIT_ID:Ljava/lang/String; = "a14fbb54008417d"


# instance fields
.field private adView:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xd

    if-lt v1, v2, :cond_0

    .line 33
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    .line 34
    const-string v1, "file:///android_asset/www/calendarioLive.html"

    invoke-super {p0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    .line 40
    :goto_0
    new-instance v1, Lcom/google/ads/AdView;

    sget-object v2, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v3, "a14fbb54008417d"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v1, p0, Lartiic/euroTweets2012/GolesEnVivoActivity;->adView:Lcom/google/ads/AdView;

    .line 41
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->root:Landroid/widget/LinearLayout;

    .line 42
    .local v0, layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lartiic/euroTweets2012/GolesEnVivoActivity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lartiic/euroTweets2012/GolesEnVivoActivity;->adView:Lcom/google/ads/AdView;

    new-instance v2, Lcom/google/ads/AdRequest;

    invoke-direct {v2}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 48
    return-void

    .line 37
    .end local v0           #layout:Landroid/widget/LinearLayout;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/www/partidoLive.html?idPartido="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lartiic/euroTweets2012/GolesEnVivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "partido"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&idLocal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lartiic/euroTweets2012/GolesEnVivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "local"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&idVisitante="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lartiic/euroTweets2012/GolesEnVivoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "visitante"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
