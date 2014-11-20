.class public Lcom/airpush/android/PushAds;
.super Landroid/app/Activity;
.source "PushAds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static context:Landroid/content/Context;

.field private static entity:Lorg/apache/http/HttpEntity;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParameters:Lorg/apache/http/params/BasicHttpParams;

.field private static httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private static httpResponse:Lorg/apache/http/message/BasicHttpResponse;

.field private static size:Ljava/lang/String;

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static url:Ljava/lang/String;

.field private static values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/String;

.field private adOnClickListener:Landroid/view/View$OnClickListener;

.field private adSize:Ljava/lang/String;

.field private adType:Ljava/lang/String;

.field private apikey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private bd:Landroid/graphics/drawable/BitmapDrawable;

.field private btn1Height:I

.field private btn1Padding:F

.field private btn2Height:I

.field private btn2Padding:F

.field private buttonMargin:I

.field private campId:Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private h:I

.field private header:Ljava/lang/String;

.field private icon:I

.field private imagePadding:F

.field private imageUrl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private more:Z

.field private moreButtonColor:Ljava/lang/String;

.field private moreButtonText:Ljava/lang/String;

.field private moreButtonTextColor:Ljava/lang/String;

.field private moreInfoClickUrl:Ljava/lang/String;

.field private moreOnClickListener:Landroid/view/View$OnClickListener;

.field private phoneNumber:Ljava/lang/String;

.field private postData:Ljava/lang/Runnable;

.field private response:Lorg/apache/http/HttpEntity;

.field private sendAdValues_Task:Ljava/lang/Runnable;

.field private sendImpression_Task:Ljava/lang/Runnable;

.field private showAd:Z

.field private showDialog:Z

.field private showInterstitialtestAd:Z

.field private skipButtonColor:Ljava/lang/String;

.field private skipButtonText:Ljava/lang/String;

.field private skipButtonTextColor:Ljava/lang/String;

.field private skipOnClickListener:Landroid/view/View$OnClickListener;

.field private smsText:Ljava/lang/String;

.field private smsToNumber:Ljava/lang/String;

.field private test:Z

.field private textSize:I

.field url2:Ljava/lang/String;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/airpush/android/PushAds;->url:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    .line 86
    const-string v0, "1"

    sput-object v0, Lcom/airpush/android/PushAds;->size:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 60
    const-string v0, "http://api.airpush.com/api.php"

    iput-object v0, p0, Lcom/airpush/android/PushAds;->url2:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/airpush/android/PushAds;->showDialog:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airpush/android/PushAds;->test:Z

    .line 71
    const v0, 0x1080074

    iput v0, p0, Lcom/airpush/android/PushAds;->icon:I

    .line 72
    iput-boolean v2, p0, Lcom/airpush/android/PushAds;->showAd:Z

    .line 80
    iput-boolean v2, p0, Lcom/airpush/android/PushAds;->more:Z

    .line 81
    const-string v0, "#000000"

    iput-object v0, p0, Lcom/airpush/android/PushAds;->moreButtonColor:Ljava/lang/String;

    .line 82
    const-string v0, "#000000"

    iput-object v0, p0, Lcom/airpush/android/PushAds;->skipButtonColor:Ljava/lang/String;

    .line 98
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/airpush/android/PushAds;->skipButtonTextColor:Ljava/lang/String;

    .line 99
    const-string v0, "#FFFFFF"

    iput-object v0, p0, Lcom/airpush/android/PushAds;->moreButtonTextColor:Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/airpush/android/PushAds$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$1;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->postData:Ljava/lang/Runnable;

    .line 603
    new-instance v0, Lcom/airpush/android/PushAds$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$2;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->moreOnClickListener:Landroid/view/View$OnClickListener;

    .line 627
    new-instance v0, Lcom/airpush/android/PushAds$3;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$3;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->adOnClickListener:Landroid/view/View$OnClickListener;

    .line 651
    new-instance v0, Lcom/airpush/android/PushAds$4;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$4;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->sendImpression_Task:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/airpush/android/PushAds$5;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$5;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->sendAdValues_Task:Ljava/lang/Runnable;

    .line 725
    new-instance v0, Lcom/airpush/android/PushAds$6;

    invoke-direct {v0, p0}, Lcom/airpush/android/PushAds$6;-><init>(Lcom/airpush/android/PushAds;)V

    iput-object v0, p0, Lcom/airpush/android/PushAds;->skipOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/PushAds;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->postValues()V

    return-void
.end method

.method static synthetic access$1(Lcom/airpush/android/PushAds;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airpush/android/PushAds;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/airpush/android/PushAds;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->sendImpressionData()V

    return-void
.end method

.method static synthetic access$11(Lcom/airpush/android/PushAds;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->sendClickData()V

    return-void
.end method

.method static synthetic access$12(Lcom/airpush/android/PushAds;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/airpush/android/PushAds;->showDialog:Z

    return-void
.end method

.method static synthetic access$13(Lcom/airpush/android/PushAds;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/airpush/android/PushAds;->showAd:Z

    return-void
.end method

.method static synthetic access$14(Lcom/airpush/android/PushAds;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->startAirpush()V

    return-void
.end method

.method static synthetic access$2(Lcom/airpush/android/PushAds;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/airpush/android/PushAds;->displayAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    sput-object p0, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4()Ljava/util/List;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/airpush/android/PushAds;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/airpush/android/PushAds;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airpush/android/PushAds;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/airpush/android/PushAds;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/airpush/android/PushAds;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 664
    iget-object v0, p0, Lcom/airpush/android/PushAds;->sendAdValues_Task:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/airpush/android/PushAds;)Z
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/airpush/android/PushAds;->showInterstitialtestAd:Z

    return v0
.end method

.method private callNumber()V
    .locals 4

    .prologue
    .line 315
    const-string v2, "AirpushSDK"

    const-string v3, "Pushing CC Ads....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/PushAds;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 317
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 318
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/airpush/android/PushAds;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method private display(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 330
    const-string v1, "AirpushSDK"

    const-string v2, "Pushing Web and App Ads....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v0, Lcom/airpush/android/CustomWebView;

    invoke-direct {v0, p0}, Lcom/airpush/android/CustomWebView;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, webView:Lcom/airpush/android/CustomWebView;
    invoke-virtual {v0, p1}, Lcom/airpush/android/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, v0}, Lcom/airpush/android/PushAds;->setContentView(Landroid/view/View;)V

    .line 338
    return-void
.end method

.method private displayAd(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 734
    const-string v1, "AirpushSDK"

    const-string v2, "Displaying Ad."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v0, Lcom/airpush/android/CustomWebView;

    invoke-direct {v0, p0}, Lcom/airpush/android/CustomWebView;-><init>(Landroid/content/Context;)V

    .line 736
    .local v0, wv:Lcom/airpush/android/CustomWebView;
    invoke-virtual {v0, p1}, Lcom/airpush/android/CustomWebView;->loadUrl(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0, v0}, Lcom/airpush/android/PushAds;->setContentView(Landroid/view/View;)V

    .line 738
    return-void
.end method

.method private displayAds()V
    .locals 14

    .prologue
    .line 429
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/airpush/android/PushAds;->requestWindowFeature(I)Z

    .line 430
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    .line 431
    const/16 v13, 0x400

    .line 430
    invoke-virtual {v11, v12, v13}, Landroid/view/Window;->setFlags(II)V

    .line 432
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 433
    .local v9, sendImpressionValues:Landroid/os/Handler;
    iget-object v11, p0, Lcom/airpush/android/PushAds;->sendImpression_Task:Ljava/lang/Runnable;

    const-wide/16 v12, 0x1388

    invoke-virtual {v9, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    :try_start_0
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v8, v11, Landroid/util/DisplayMetrics;->density:F

    .line 440
    .local v8, scale:F
    iget-boolean v11, p0, Lcom/airpush/android/PushAds;->more:Z

    if-eqz v11, :cond_1

    .line 441
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    .local v7, rl:Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 443
    new-instance v11, Landroid/widget/RelativeLayout;

    invoke-direct {v11, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 445
    iget v11, p0, Lcom/airpush/android/PushAds;->h:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->h:I

    .line 446
    iget v11, p0, Lcom/airpush/android/PushAds;->w:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->w:I

    .line 447
    const/high16 v11, 0x4120

    mul-float/2addr v11, v8

    iput v11, p0, Lcom/airpush/android/PushAds;->imagePadding:F

    .line 448
    const/high16 v11, 0x4120

    mul-float/2addr v11, v8

    iput v11, p0, Lcom/airpush/android/PushAds;->btn1Padding:F

    .line 449
    const/high16 v11, 0x40a0

    mul-float/2addr v11, v8

    iput v11, p0, Lcom/airpush/android/PushAds;->btn2Padding:F

    .line 450
    const/high16 v11, 0x4248

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->btn1Height:I

    .line 451
    const/high16 v11, 0x4248

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->btn2Height:I

    .line 454
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 456
    .local v3, iv:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x46

    const/16 v12, 0x46

    invoke-direct {v4, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 457
    .local v4, lp0:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x43a0

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 458
    const/4 v11, 0x1

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 459
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x46

    const/16 v12, 0x46

    invoke-direct {v5, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 460
    .local v5, lp1:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v11, 0x11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 461
    const/high16 v11, 0x40a0

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 463
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x46

    const/16 v12, 0x46

    invoke-direct {v0, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    .local v0, btn1LP:Landroid/widget/LinearLayout$LayoutParams;
    iget v11, p0, Lcom/airpush/android/PushAds;->btn1Padding:F

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 465
    const/high16 v11, 0x43a0

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 466
    const/4 v11, 0x1

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 468
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x46

    const/16 v12, 0x46

    invoke-direct {v1, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 469
    .local v1, btn2LP:Landroid/widget/LinearLayout$LayoutParams;
    iget v11, p0, Lcom/airpush/android/PushAds;->btn2Padding:F

    float-to-int v11, v11

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 470
    const/high16 v11, 0x43a0

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 471
    const/4 v11, 0x1

    iput v11, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 474
    iget v11, p0, Lcom/airpush/android/PushAds;->h:I

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 475
    iget v11, p0, Lcom/airpush/android/PushAds;->w:I

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 477
    iget-object v11, p0, Lcom/airpush/android/PushAds;->adSize:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 478
    const-string v11, "AirpushSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "height : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v11, p0, Lcom/airpush/android/PushAds;->bd:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_0

    .line 499
    iget-object v11, p0, Lcom/airpush/android/PushAds;->bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 510
    .local v10, skip:Landroid/widget/Button;
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget v11, p0, Lcom/airpush/android/PushAds;->btn1Height:I

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setHeight(I)V

    .line 512
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 513
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonTextColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 514
    iget v11, p0, Lcom/airpush/android/PushAds;->textSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 515
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 516
    iget v11, p0, Lcom/airpush/android/PushAds;->buttonMargin:I

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 517
    new-instance v6, Landroid/widget/Button;

    invoke-direct {v6, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 519
    .local v6, moreInfo:Landroid/widget/Button;
    iget-object v11, p0, Lcom/airpush/android/PushAds;->moreButtonColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 520
    iget-object v11, p0, Lcom/airpush/android/PushAds;->moreButtonTextColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 521
    iget v11, p0, Lcom/airpush/android/PushAds;->textSize:I

    int-to-float v11, v11

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 522
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 523
    iget-object v11, p0, Lcom/airpush/android/PushAds;->moreButtonText:Ljava/lang/String;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget v11, p0, Lcom/airpush/android/PushAds;->btn2Height:I

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setHeight(I)V

    .line 526
    invoke-virtual {v7, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    invoke-virtual {v7, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v11, p0, Lcom/airpush/android/PushAds;->moreOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    invoke-virtual {v7, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v11, p0, Lcom/airpush/android/PushAds;->adOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    invoke-virtual {p0, v7}, Lcom/airpush/android/PushAds;->setContentView(Landroid/view/View;)V

    .line 601
    .end local v0           #btn1LP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #btn2LP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #lp0:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #lp1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #moreInfo:Landroid/widget/Button;
    .end local v7           #rl:Landroid/widget/LinearLayout;
    .end local v8           #scale:F
    .end local v10           #skip:Landroid/widget/Button;
    :goto_0
    return-void

    .line 502
    .restart local v0       #btn1LP:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #btn2LP:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3       #iv:Landroid/widget/ImageView;
    .restart local v4       #lp0:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #lp1:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #rl:Landroid/widget/LinearLayout;
    .restart local v8       #scale:F
    :cond_0
    const-string v11, "AirpushSDK"

    const-string v12, "Image Fetching error, please try again later."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    .end local v0           #btn1LP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #btn2LP:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #lp0:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #lp1:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #rl:Landroid/widget/LinearLayout;
    .end local v8           #scale:F
    :catch_0
    move-exception v2

    .line 598
    .local v2, e1:Ljava/lang/Exception;
    const-string v11, "AirpushSDK"

    const-string v12, "Network Error, please try again later."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 535
    .end local v2           #e1:Ljava/lang/Exception;
    .restart local v8       #scale:F
    :cond_1
    :try_start_1
    new-instance v7, Landroid/widget/RelativeLayout;

    invoke-direct {v7, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 536
    .local v7, rl:Landroid/widget/RelativeLayout;
    new-instance v11, Landroid/widget/RelativeLayout;

    invoke-direct {v11, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 538
    iget v11, p0, Lcom/airpush/android/PushAds;->h:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->h:I

    .line 539
    iget v11, p0, Lcom/airpush/android/PushAds;->w:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, p0, Lcom/airpush/android/PushAds;->w:I

    .line 542
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 544
    .restart local v3       #iv:Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0x46

    const/16 v12, 0x46

    invoke-direct {v4, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 545
    .local v4, lp0:Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v11, 0x43a0

    mul-float/2addr v11, v8

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 561
    const/16 v11, 0xc

    invoke-virtual {v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 565
    iget-object v11, p0, Lcom/airpush/android/PushAds;->bd:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_2

    .line 566
    iget-object v11, p0, Lcom/airpush/android/PushAds;->bd:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    new-instance v10, Landroid/widget/Button;

    invoke-direct {v10, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 575
    .restart local v10       #skip:Landroid/widget/Button;
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 577
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipButtonTextColor:Ljava/lang/String;

    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextColor(I)V

    .line 578
    iget v11, p0, Lcom/airpush/android/PushAds;->textSize:I

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTextSize(F)V

    .line 579
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 584
    iget-object v11, p0, Lcom/airpush/android/PushAds;->adOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget v11, p0, Lcom/airpush/android/PushAds;->w:I

    iget v12, p0, Lcom/airpush/android/PushAds;->h:I

    invoke-virtual {v7, v3, v11, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 587
    invoke-virtual {v7, v10, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    iget-object v11, p0, Lcom/airpush/android/PushAds;->skipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    invoke-virtual {p0, v7}, Lcom/airpush/android/PushAds;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 570
    .end local v10           #skip:Landroid/widget/Button;
    :cond_2
    const-string v11, "AirpushSDK"

    const-string v12, "Image Fetching error, please try again later."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected static postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;
    .locals 5
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 748
    invoke-static {p1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.airpush.com/v2/api.php"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/PushAds;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 755
    sget-object v1, Lcom/airpush/android/PushAds;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v3, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 757
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v1, Lcom/airpush/android/PushAds;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 759
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/PushAds;->timeoutConnection:I

    .line 760
    sget-object v1, Lcom/airpush/android/PushAds;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v3, Lcom/airpush/android/PushAds;->timeoutConnection:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 763
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/PushAds;->timeoutSocket:I

    .line 764
    sget-object v1, Lcom/airpush/android/PushAds;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v3, Lcom/airpush/android/PushAds;->timeoutSocket:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 766
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/PushAds;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/airpush/android/PushAds;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 768
    sget-object v1, Lcom/airpush/android/PushAds;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/PushAds;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v1, Lcom/airpush/android/PushAds;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 770
    sget-object v1, Lcom/airpush/android/PushAds;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v1}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/PushAds;->entity:Lorg/apache/http/HttpEntity;

    .line 773
    sget-object v1, Lcom/airpush/android/PushAds;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-object v1

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, iex:Ljava/lang/Exception;
    const-wide/32 v3, 0x1b7740

    invoke-static {p1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 778
    goto :goto_0

    .line 784
    .end local v0           #iex:Ljava/lang/Exception;
    :cond_0
    const-wide/32 v3, 0x36ee80

    invoke-static {p1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 785
    goto :goto_0
.end method

.method private postValues()V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/PushAds;->response:Lorg/apache/http/HttpEntity;

    .line 407
    return-void
.end method

.method private sendClickData()V
    .locals 6

    .prologue
    .line 705
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/PushAds;->response:Lorg/apache/http/HttpEntity;

    .line 706
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v0, b:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 709
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/airpush/android/PushAds;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 714
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ch:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 721
    .end local v1           #ch:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    .local v3, s:Ljava/lang/String;
    return-void

    .line 715
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #ch:I
    :cond_0
    int-to-char v4, v1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 717
    .end local v1           #ch:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private sendImpressionData()V
    .locals 8

    .prologue
    .line 677
    sget-object v4, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    .line 678
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    const-string v7, "log"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "action"

    const-string v7, "settexttracking"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "APIKEY"

    iget-object v7, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "event"

    const-string v7, "trayDelivered"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "campId"

    iget-object v7, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "creativeId"

    iget-object v7, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v4, Lcom/airpush/android/PushAds;->values:Ljava/util/List;

    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/airpush/android/PushAds;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/PushAds;->response:Lorg/apache/http/HttpEntity;

    .line 685
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 686
    .local v0, b:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 688
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/airpush/android/PushAds;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 693
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, ch:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 700
    .end local v1           #ch:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, s:Ljava/lang/String;
    return-void

    .line 694
    .end local v3           #s:Ljava/lang/String;
    .restart local v1       #ch:I
    :cond_0
    int-to-char v4, v1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 696
    .end local v1           #ch:I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private sendSms()V
    .locals 4

    .prologue
    .line 322
    const-string v2, "AirpushSDK"

    const-string v3, "Pushing CM Ads....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airpush/android/PushAds;->smsToNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 324
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 325
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->smsText:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v0}, Lcom/airpush/android/PushAds;->startActivity(Landroid/content/Intent;)V

    .line 327
    return-void
.end method

.method private startAirpush()V
    .locals 8

    .prologue
    .line 386
    new-instance v0, Lcom/airpush/android/Airpush;

    invoke-direct {v0}, Lcom/airpush/android/Airpush;-><init>()V

    sget-object v1, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/airpush/android/PushAds;->test:Z

    iget-boolean v5, p0, Lcom/airpush/android/PushAds;->showDialog:Z

    iget v6, p0, Lcom/airpush/android/PushAds;->icon:I

    iget-boolean v7, p0, Lcom/airpush/android/PushAds;->showAd:Z

    invoke-virtual/range {v0 .. v7}, Lcom/airpush/android/Airpush;->startAirpush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZ)V

    .line 387
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 744
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->action:Ljava/lang/String;

    .line 120
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 121
    const/16 v2, 0x140

    iput v2, p0, Lcom/airpush/android/PushAds;->h:I

    .line 122
    const/16 v2, 0x15e

    iput v2, p0, Lcom/airpush/android/PushAds;->w:I

    .line 128
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "adType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "searchad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    const-string v2, "AirpushSDK"

    const-string v3, "Search Clicked"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "ShoWDialog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "apikey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "test"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airpush/android/PushAds;->test:Z

    .line 188
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "icon"

    const v4, 0x1080074

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/airpush/android/PushAds;->icon:I

    .line 189
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->showDialog()V

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/airpush/android/PushAds;->action:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "CC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "AirpushSDK"

    const-string v3, "Pushing Ads....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 197
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 198
    .local v0, NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "appId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 199
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "apikey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 200
    const-string v2, "number"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->phoneNumber:Ljava/lang/String;

    .line 201
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "campId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 202
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "creativeId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 213
    .end local v0           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v1, postAdValuesIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    iget-object v3, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "type"

    const-string v3, "PostAdValues"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v1}, Lcom/airpush/android/PushAds;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 221
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->callNumber()V

    goto/16 :goto_0

    .line 205
    .end local v1           #postAdValuesIntent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "apikey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "campId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "creativeId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 224
    :cond_4
    iget-object v2, p0, Lcom/airpush/android/PushAds;->action:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 225
    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "CM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "AirpushSDK"

    const-string v3, "Pushing Ads....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 229
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .restart local v0       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "appId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 231
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "apikey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 232
    const-string v2, "sms"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "sms"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->smsText:Ljava/lang/String;

    .line 233
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "campId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 234
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "creativeId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 235
    const-string v2, "number"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "number"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->smsToNumber:Ljava/lang/String;

    .line 253
    .end local v0           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 255
    .restart local v1       #postAdValuesIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "type"

    const-string v3, "PostAdValues"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v1}, Lcom/airpush/android/PushAds;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 261
    invoke-direct {p0}, Lcom/airpush/android/PushAds;->sendSms()V

    goto/16 :goto_0

    .line 239
    .end local v1           #postAdValuesIntent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "apikey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "campId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "creativeId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->smsText:Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "number"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->smsToNumber:Ljava/lang/String;

    goto :goto_2

    .line 264
    :cond_6
    iget-object v2, p0, Lcom/airpush/android/PushAds;->action:Ljava/lang/String;

    const-string v3, "Web And App"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/airpush/android/PushAds;->adType:Ljava/lang/String;

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    :cond_7
    const-string v2, "AirpushSDK"

    const-string v3, "Pushing Ads....."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 270
    sget-object v2, Lcom/airpush/android/PushAds;->context:Landroid/content/Context;

    const-string v3, "airpushNotificationPref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    .restart local v0       #NotificationPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "appId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 272
    const-string v2, "apikey"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "apikey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 273
    const-string v2, "url"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushAds;->url:Ljava/lang/String;

    .line 274
    const-string v2, "campId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "campId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 275
    const-string v2, "creativeId"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "creativeId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 276
    const-string v2, "header"

    iget-object v3, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v4, "header"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->header:Ljava/lang/String;

    .line 288
    .end local v0           #NotificationPrefs:Landroid/content/SharedPreferences;
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 290
    .restart local v1       #postAdValuesIntent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.airpush.android.PushServiceStart"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "type"

    const-string v3, "PostAdValues"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v1}, Lcom/airpush/android/PushAds;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 296
    iget-object v2, p0, Lcom/airpush/android/PushAds;->header:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/airpush/android/PushAds;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    sget-object v2, Lcom/airpush/android/PushAds;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/airpush/android/PushAds;->display(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v1           #postAdValuesIntent:Landroid/content/Intent;
    :cond_8
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "appId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->appId:Ljava/lang/String;

    .line 281
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "apikey"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;

    .line 282
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "campId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->campId:Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "creativeId"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/PushAds;->url:Ljava/lang/String;

    .line 285
    iget-object v2, p0, Lcom/airpush/android/PushAds;->intent:Landroid/content/Intent;

    const-string v3, "header"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airpush/android/PushAds;->header:Ljava/lang/String;

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 420
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->finish()V

    .line 421
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 306
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->finish()V

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 413
    invoke-virtual {p0}, Lcom/airpush/android/PushAds;->finish()V

    .line 414
    return-void
.end method

.method public show(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "webView"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/airpush/android/PushAds;->setContentView(Landroid/view/View;)V

    .line 342
    return-void
.end method

.method protected showDialog()V
    .locals 3

    .prologue
    .line 346
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 348
    const-string v1, "Support the App developer by enabling ads in the notification tray, limited to 1 per day."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 351
    const-string v1, "I Agree"

    new-instance v2, Lcom/airpush/android/PushAds$7;

    invoke-direct {v2, p0}, Lcom/airpush/android/PushAds$7;-><init>(Lcom/airpush/android/PushAds;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 364
    const-string v1, "No"

    new-instance v2, Lcom/airpush/android/PushAds$8;

    invoke-direct {v2, p0}, Lcom/airpush/android/PushAds$8;-><init>(Lcom/airpush/android/PushAds;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v1

    goto :goto_0
.end method
