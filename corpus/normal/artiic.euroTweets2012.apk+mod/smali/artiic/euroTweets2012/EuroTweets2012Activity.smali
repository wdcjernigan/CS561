.class public Lartiic/euroTweets2012/EuroTweets2012Activity;
.super Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;
.source "EuroTweets2012Activity.java"


# instance fields
.field private adView:Lcom/google/ads/AdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 25
    invoke-super {p0, p1}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const-string v3, "loadUrlTimeoutValue"

    const v4, 0xea60

    invoke-super {p0, v3, v4}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->setIntegerProperty(Ljava/lang/String;I)V

    .line 27
    const-string v3, "C_CUSTOM_SPLASH_SCREEN"

    const v4, 0x7f020001

    invoke-super {p0, v3, v4}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->setIntegerProperty(Ljava/lang/String;I)V

    .line 28
    const-string v3, "file:///android_asset/www/index.html"

    const/16 v4, 0x3e8

    invoke-super {p0, v3, v4}, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->loadUrl(Ljava/lang/String;I)V

    .line 30
    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    const-string v5, "a14fbb54008417d"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v3, p0, Lartiic/euroTweets2012/EuroTweets2012Activity;->adView:Lcom/google/ads/AdView;

    .line 31
    iget-object v1, p0, Lartiic/euroTweets2012/DroidGapWithCustomSplashScreen;->root:Landroid/widget/LinearLayout;

    .line 32
    .local v1, layout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lartiic/euroTweets2012/EuroTweets2012Activity;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 33
    iget-object v3, p0, Lartiic/euroTweets2012/EuroTweets2012Activity;->adView:Lcom/google/ads/AdView;

    new-instance v4, Lcom/google/ads/AdRequest;

    invoke-direct {v4}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v3, v4}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 36
    const-string v3, "V7e0TArduEgccDCmsgw8faqJXGNEaz56VCc0o1Hl"

    const-string v4, "FjjREUsIeyzRHW2Mn8cvHYuwzn6Ksbp2rJW7V1Cj"

    invoke-static {p0, v3, v4}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v3, "versio_1_6_eurotweets_2012"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 40
    const-string v3, "versio_1_5_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const-string v3, "versio_1_4_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    const-string v3, "versio_1_3_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const-string v3, "versio_1_2_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const-string v3, "versio_1_1_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-string v3, "versio_1_eurotweets_2012"

    invoke-static {p0, v3}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    const-string v3, "EURO_TWEETS_2012"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lartiic/euroTweets2012/EuroTweets2012Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "PRUEBA"

    const-string v4, "alemania"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v3, "alemania"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const-string v3, "PRUEBA"

    const-string v4, "PASO"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v3, "alemania"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    const-string v3, "croacia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 55
    const-string v3, "dinamarca"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 56
    const-string v3, "espana"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v3, "francia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 58
    const-string v3, "grecia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 59
    const-string v3, "holanda"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 60
    const-string v3, "inglaterra"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 61
    const-string v3, "italia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 62
    const-string v3, "irlanda"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 63
    const-string v3, "polonia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-string v3, "portugal"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 65
    const-string v3, "republicaCheca"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 66
    const-string v3, "rusia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 67
    const-string v3, "suecia"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 68
    const-string v3, "ucrania"

    const-class v4, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {p0, v3, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 70
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "alemania"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v3, "croacia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v3, "dinamarca"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v3, "espana"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v3, "francia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v3, "grecia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-string v3, "holanda"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v3, "inglaterra"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    const-string v3, "italia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    const-string v3, "irlanda"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v3, "polonia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string v3, "portugal"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v3, "republicaCheca"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    const-string v3, "rusia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v3, "suecia"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string v3, "ucrania"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
