.class public Lcom/airpush/android/Airpush;
.super Ljava/lang/Object;
.source "Airpush.java"


# static fields
.field private static a:Lcom/airpush/android/Airpush;

.field private static apikey:Ljava/lang/String;

.field protected static appId:Ljava/lang/String;

.field protected static ctx:Landroid/content/Context;

.field private static doPush:Z

.field private static doSearch:Z

.field private static encodedAppId:Ljava/lang/String;

.field private static encodedAsp:Ljava/lang/String;

.field private static entity:Lorg/apache/http/HttpEntity;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParameters:Lorg/apache/http/params/BasicHttpParams;

.field private static httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private static httpResponse:Lorg/apache/http/message/BasicHttpResponse;

.field private static icon:I

.field protected static imei:Ljava/lang/String;

.field private static imeiNumber:Ljava/lang/String;

.field private static searchIconTestMode:Z

.field private static showInterstitialtestAd:Z

.field private static showToast:Z

.field private static size:Ljava/lang/String;

.field private static testMode:Z

.field private static timeDiff:J

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static toastPrefs:Landroid/content/SharedPreferences;

.field private static toastText:Ljava/lang/String;

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
.field private addIntent:Landroid/content/Intent;

.field private addIntent1:Landroid/content/Intent;

.field private bmpicon:Landroid/graphics/Bitmap;

.field private campaignArr:[Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private campaignPostStr:[Ljava/lang/String;

.field private creativeArr:[Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private creativePostStr:[Ljava/lang/String;

.field private currentTime:J

.field private iconImage:Ljava/lang/String;

.field private iconImageArr:[Ljava/lang/String;

.field private iconNextMessageCheckTime:J

.field private iconStrream:Ljava/io/InputStream;

.field private iconText:Ljava/lang/String;

.field private iconTextArr:[Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private iconUrlArr:[Ljava/lang/String;

.field private imeinumber:Ljava/lang/String;

.field private json:Lorg/json/JSONArray;

.field private jsonArr:Lorg/json/JSONObject;

.field private len:I

.field private mCur:Landroid/database/Cursor;

.field private post:Lorg/json/JSONObject;

.field private response:Lorg/apache/http/HttpEntity;

.field private run_Task:Ljava/lang/Runnable;

.field private s:Ljava/lang/String;

.field private sendInstall:Z

.field private send_Task:Ljava/lang/Runnable;

.field private shortcutIntent:Landroid/content/Intent;

.field private showAd:Z

.field private showDialog:Z

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 63
    sput-object v0, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airpush/android/Airpush;->testMode:Z

    .line 66
    const v0, 0x1080074

    sput v0, Lcom/airpush/android/Airpush;->icon:I

    .line 71
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/airpush/android/Airpush;->timeDiff:J

    .line 115
    const-string v0, "This free app is ad supported and may contain ads in the notification tray and/or home screen. Opt-out at airpush.com/optout"

    sput-object v0, Lcom/airpush/android/Airpush;->toastText:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/airpush/android/Airpush;->showToast:Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide v1, p0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 70
    iput-wide v1, p0, Lcom/airpush/android/Airpush;->startTime:J

    .line 104
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignPostStr:[Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativePostStr:[Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 719
    new-instance v0, Lcom/airpush/android/Airpush$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    .line 725
    new-instance v0, Lcom/airpush/android/Airpush$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8
    .parameter "context"
    .parameter "appId"
    .parameter "apiKey"
    .parameter "test"
    .parameter "enablePush"
    .parameter "search"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-wide v2, p0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 70
    iput-wide v2, p0, Lcom/airpush/android/Airpush;->startTime:J

    .line 104
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/airpush/android/Airpush;->campaignPostStr:[Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/airpush/android/Airpush;->creativePostStr:[Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 719
    new-instance v0, Lcom/airpush/android/Airpush$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$1;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    .line 725
    new-instance v0, Lcom/airpush/android/Airpush$2;

    invoke-direct {v0, p0}, Lcom/airpush/android/Airpush$2;-><init>(Lcom/airpush/android/Airpush;)V

    iput-object v0, p0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    .line 155
    :try_start_0
    sput-boolean p4, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    .line 156
    sput-boolean p4, Lcom/airpush/android/Airpush;->testMode:Z

    .line 157
    sput-object p1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 158
    sput-boolean p6, Lcom/airpush/android/Airpush;->doSearch:Z

    .line 159
    sput-boolean p5, Lcom/airpush/android/Airpush;->doPush:Z

    .line 160
    invoke-static {}, Lcom/airpush/android/Airpush;->showToast()V

    .line 161
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service doPush...."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/airpush/android/Airpush;->doPush:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v0, "AirpushSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Push Service doSearch...."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/airpush/android/Airpush;->doSearch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v0, Lcom/airpush/android/SetPreferences;

    invoke-direct {v0}, Lcom/airpush/android/SetPreferences;-><init>()V

    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 166
    sget-boolean v5, Lcom/airpush/android/Airpush;->doSearch:Z

    sget-boolean v6, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    sget-boolean v7, Lcom/airpush/android/Airpush;->doPush:Z

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 165
    invoke-virtual/range {v0 .. v7}, Lcom/airpush/android/SetPreferences;->setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 167
    invoke-static {}, Lcom/airpush/android/Airpush;->getDataSharedprefrences()V

    .line 173
    sget-boolean v4, Lcom/airpush/android/Airpush;->testMode:Z

    const/4 v5, 0x0

    sget v6, Lcom/airpush/android/Airpush;->icon:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/airpush/android/Airpush;->startAirpush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/airpush/android/Airpush;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->send()V

    return-void
.end method

.method static synthetic access$1()J
    .locals 2

    .prologue
    .line 71
    sget-wide v0, Lcom/airpush/android/Airpush;->timeDiff:J

    return-wide v0
.end method

.method private deleteShortcut()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method public static disableSdk(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 711
    const-string v2, "sdkPrefs"

    .line 712
    const/4 v3, 0x2

    .line 711
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 714
    .local v1, SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 715
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    return-void
.end method

.method public static enableSdk(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 702
    const-string v2, "sdkPrefs"

    .line 703
    const/4 v3, 0x2

    .line 702
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 704
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 705
    .local v1, SDKPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SDKEnabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 706
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 708
    return-void
.end method

.method private getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 589
    :try_start_0
    const-string v1, "campaignid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->campaignId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    iget-object v1, p0, Lcom/airpush/android/Airpush;->campaignId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 599
    :try_start_0
    const-string v1, "creativeid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->creativeId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    iget-object v1, p0, Lcom/airpush/android/Airpush;->creativeId:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private static getDataSharedprefrences()V
    .locals 5

    .prologue
    .line 843
    :try_start_0
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v3, "dataPrefs"

    .line 844
    const/4 v4, 0x1

    .line 843
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 844
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 845
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 846
    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    .line 845
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 847
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v2, "appId"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 848
    const-string v2, "apikey"

    const-string v3, "airpush"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 849
    const-string v2, "imei"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    .line 850
    const-string v2, "testMode"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/airpush/android/Airpush;->testMode:Z

    .line 852
    const-string v2, "icon"

    const v3, 0x1080074

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/airpush/android/Airpush;->icon:I

    .line 853
    const-string v2, "asp"

    const-string v3, "invalid"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->encodedAsp:Ljava/lang/String;

    .line 855
    const-string v2, "imeinumber"

    const-string v3, "invalid"

    .line 854
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->imeiNumber:Ljava/lang/String;

    .line 856
    sget-object v2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/Airpush;->encodedAppId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v1

    .line 861
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 557
    :try_start_0
    const-string v1, "iconimage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconText(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 579
    :try_start_0
    const-string v1, "icontext"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method private getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "json"

    .prologue
    .line 609
    :try_start_0
    const-string v1, "iconurl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    :goto_0
    return-object v1

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "Not Found"

    goto :goto_0
.end method

.method protected static getImageFromWeb(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imglink"

    .prologue
    .line 356
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 357
    .local v4, imgURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 358
    .local v2, conn:Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 359
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 360
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 361
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 362
    .local v1, bmpImage:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 363
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v1           #bmpImage:Landroid/graphics/Bitmap;
    .end local v2           #conn:Ljava/net/URLConnection;
    .end local v4           #imgURL:Ljava/net/URL;
    .end local v5           #is:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 365
    :catch_0
    move-exception v3

    .line 367
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "AirpushSDK"

    .line 368
    const-string v7, "Error in Adimage fetching Please try again later."

    .line 367
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getNextMessageCheck(Lorg/json/JSONObject;)J
    .locals 3
    .parameter "json"

    .prologue
    .line 568
    :try_start_0
    const-string v1, "nextmessagecheck"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airpush/android/Airpush;->iconNextMessageCheckTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    iget-wide v1, p0, Lcom/airpush/android/Airpush;->iconNextMessageCheckTime:J

    :goto_0
    return-wide v1

    .line 569
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Lorg/json/JSONException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private getShortcutData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 410
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 411
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 410
    check-cast v5, Landroid/view/WindowManager;

    .line 411
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 412
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 413
    .local v4, width:I
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v5}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 414
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "width"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "model"

    const-string v8, "message"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "action"

    const-string v8, "geticon"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "APIKEY"

    sget-object v8, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    const-string v5, "SMSActManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SMSData...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-boolean v5, Lcom/airpush/android/Airpush;->testMode:Z

    if-eqz v5, :cond_1

    .line 420
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ShortIcon Test Mode...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-static {}, Lcom/airpush/android/Airpush;->postData()Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    .line 432
    :goto_0
    iget-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 433
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    .line 439
    sget-boolean v5, Lcom/airpush/android/Constants;->sendDBLog:Z

    if-eqz v5, :cond_0

    .line 440
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "IconReturnMessage"

    iget-object v8, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    sget-object v6, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/airpush/android/HttpPostData;->sendTestLogs(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    .line 443
    :cond_0
    const-string v5, "Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Icon Data returns: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v5, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/airpush/android/Airpush;->parseIconJson(Ljava/lang/String;)V

    .line 446
    return-void

    .line 423
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :cond_1
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ShortIcon Test Mode...."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v7, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    sget-object v5, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    const/4 v6, 0x0

    sget-object v7, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/airpush/android/HttpPostData;->postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    goto :goto_0

    .line 436
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_2
    int-to-char v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 685
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 686
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 689
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    const-string v2, "SDKEnabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 697
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method private makeShortcut()V
    .locals 3

    .prologue
    .line 302
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 304
    const-string v1, "com.android.launcher.permission.INSTALL_SHORTCUT"

    .line 305
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 302
    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    const-string v0, "AirpushSDK"

    .line 311
    const-string v1, "Installing shortcut permission not found in manifest, please add."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized parseIconJson(Ljava/lang/String;)V
    .locals 4
    .parameter "jsonString"

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    .line 451
    iget-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iput v1, p0, Lcom/airpush/android/Airpush;->len:I

    .line 453
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    .line 454
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    .line 455
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    .line 456
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    .line 457
    iget v1, p0, Lcom/airpush/android/Airpush;->len:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    .line 458
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    .line 459
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 487
    iget-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    if-eqz v1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->sendInstallData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0           #i:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 460
    .restart local v0       #i:I
    :cond_1
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->json:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    .line 463
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconImage(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 464
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconText(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 465
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getIconUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 466
    iget-object v1, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getCampaignId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 467
    iget-object v1, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->jsonArr:Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lcom/airpush/android/Airpush;->getCreativeId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 468
    iget-object v1, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->campaignArr:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/airpush/android/Airpush;->creativeArr:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 472
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "Not Found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 475
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airpush/android/Airpush;->sendInstall:Z

    .line 459
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 478
    :cond_3
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImageArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    .line 479
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconTextArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrlArr:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 483
    invoke-virtual {p0}, Lcom/airpush/android/Airpush;->createShortcut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 490
    .end local v0           #i:I
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected static postData()Lorg/apache/http/HttpEntity;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1004
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    :try_start_0
    const-string v1, "AirpushSDK"

    const-string v3, "Test Api for icons ads"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "http://api.airpush.com/testicon.php"

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 1011
    sget-object v1, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1013
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 1016
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/Airpush;->timeoutConnection:I

    .line 1017
    sget-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 1018
    sget v3, Lcom/airpush/android/Airpush;->timeoutConnection:I

    .line 1017
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1021
    const/16 v1, 0xbb8

    sput v1, Lcom/airpush/android/Airpush;->timeoutSocket:I

    .line 1023
    sget-object v1, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v3, Lcom/airpush/android/Airpush;->timeoutSocket:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1025
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/Airpush;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v1, Lcom/airpush/android/Airpush;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 1027
    sget-object v1, Lcom/airpush/android/Airpush;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v3, Lcom/airpush/android/Airpush;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v1, Lcom/airpush/android/Airpush;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 1029
    sget-object v1, Lcom/airpush/android/Airpush;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v1}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->entity:Lorg/apache/http/HttpEntity;

    .line 1031
    sget-object v1, Lcom/airpush/android/Airpush;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1040
    .local v0, iex:Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 1033
    .end local v0           #iex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1034
    .restart local v0       #iex:Ljava/lang/Exception;
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-wide/32 v3, 0x1b7740

    invoke-static {v1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1035
    goto :goto_0

    .line 1039
    .end local v0           #iex:Ljava/lang/Exception;
    :cond_0
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    sget-wide v3, Lcom/airpush/android/Airpush;->timeDiff:J

    invoke-static {v1, v3, v4}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v1, v2

    .line 1040
    goto :goto_0
.end method

.method protected static reStartSDK(Landroid/content/Context;J)V
    .locals 16
    .parameter "context"
    .parameter "timeDiff2"

    .prologue
    .line 885
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SDK will restart in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    sput-object p0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 887
    invoke-static {}, Lcom/airpush/android/Airpush;->getDataSharedprefrences()V

    .line 889
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    const-class v3, Lcom/airpush/android/UserDetailsReceiver;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 890
    .local v13, userIntent:Landroid/content/Intent;
    const-string v3, "SetUserInfo"

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v3, "appId"

    sget-object v4, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const-string v3, "imei"

    sget-object v4, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 893
    const-string v3, "apikey"

    sget-object v4, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v13, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 899
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 898
    move-object/from16 v0, p0

    invoke-static {v0, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 901
    .local v11, pendingUserIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 900
    check-cast v12, Landroid/app/AlarmManager;

    .line 902
    .local v12, userAlarmMgr:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v6, v6, p1

    const-wide/16 v14, 0x3c

    mul-long/2addr v6, v14

    add-long/2addr v4, v6

    .line 902
    invoke-virtual {v12, v3, v4, v5, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 908
    new-instance v10, Landroid/content/Intent;

    const-class v3, Lcom/airpush/android/MessageReceiver;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 909
    .local v10, messageIntent:Landroid/content/Intent;
    const-string v3, "SetMessageReceiver"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    const-string v3, "appId"

    sget-object v4, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v3, "imei"

    sget-object v4, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v3, "apikey"

    sget-object v4, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v3, "testMode"

    sget-boolean v4, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 914
    const-string v3, "icon"

    sget v4, Lcom/airpush/android/Airpush;->icon:I

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    const-string v3, "icontestmode"

    sget-boolean v4, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 917
    const-string v3, "doSearch"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    const-string v3, "doPush"

    const/4 v4, 0x1

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 932
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 931
    move-object/from16 v0, p0

    invoke-static {v0, v3, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 934
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 933
    check-cast v2, Landroid/app/AlarmManager;

    .line 935
    .local v2, msgAlarmMgr:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v4, v4, p1

    .line 937
    sget-object v6, Lcom/airpush/android/Constants;->IntervalFirstTime:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    .line 936
    add-long/2addr v4, v6

    .line 938
    sget-wide v6, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    .line 935
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v2           #msgAlarmMgr:Landroid/app/AlarmManager;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v10           #messageIntent:Landroid/content/Intent;
    .end local v11           #pendingUserIntent:Landroid/app/PendingIntent;
    .end local v12           #userAlarmMgr:Landroid/app/AlarmManager;
    .end local v13           #userIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 940
    :catch_0
    move-exception v9

    .line 941
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private send()V
    .locals 18

    .prologue
    .line 732
    const/4 v9, 0x1

    .line 734
    .local v9, flag:Z
    :try_start_0
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v3, "airpushTimePref"

    .line 735
    const/4 v4, 0x1

    .line 734
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->currentTime:J

    .line 737
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 738
    const-string v3, "airpushTimePref"

    const/4 v4, 0x1

    .line 737
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 740
    .local v14, timePrefs:Landroid/content/SharedPreferences;
    const-string v2, "startTime"

    invoke-interface {v14, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 741
    const-string v2, "startTime"

    const-wide/16 v3, 0x0

    invoke-interface {v14, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->startTime:J

    .line 742
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/airpush/android/Airpush;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/airpush/android/Airpush;->startTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    div-long/2addr v2, v4

    sput-wide v2, Lcom/airpush/android/Airpush;->timeDiff:J

    .line 743
    sget-wide v2, Lcom/airpush/android/Airpush;->timeDiff:J

    sget-object v4, Lcom/airpush/android/Constants;->IntervalSdkReexecute:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 744
    const/4 v9, 0x1

    .line 765
    .end local v14           #timePrefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 768
    new-instance v17, Landroid/content/Intent;

    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-class v3, Lcom/airpush/android/UserDetailsReceiver;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    .local v17, userIntent:Landroid/content/Intent;
    const-string v2, "SetUserInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    const-string v2, "appId"

    sget-object v3, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v2, "imei"

    sget-object v3, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const-string v2, "apikey"

    sget-object v3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 778
    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 780
    .local v13, pendingUserIntent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 781
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 780
    check-cast v16, Landroid/app/AlarmManager;

    .line 782
    .local v16, userAlarmMgr:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 782
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 788
    new-instance v11, Landroid/content/Intent;

    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-class v3, Lcom/airpush/android/MessageReceiver;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 789
    .local v11, messageIntent:Landroid/content/Intent;
    const-string v2, "SetMessageReceiver"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v2, "appId"

    sget-object v3, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string v2, "imei"

    sget-object v3, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string v2, "apikey"

    sget-object v3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v2, "testMode"

    sget-boolean v3, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    const-string v2, "icon"

    sget v3, Lcom/airpush/android/Airpush;->icon:I

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    const-string v2, "icontestmode"

    sget-boolean v3, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 797
    const-string v2, "doSearch"

    sget-boolean v3, Lcom/airpush/android/Airpush;->doSearch:Z

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 798
    const-string v2, "doPush"

    sget-boolean v3, Lcom/airpush/android/Airpush;->doPush:Z

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 801
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 802
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 801
    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 803
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 804
    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 803
    check-cast v1, Landroid/app/AlarmManager;

    .line 805
    .local v1, msgAlarmMgr:Landroid/app/AlarmManager;
    const/4 v2, 0x0

    .line 806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 807
    sget-object v5, Lcom/airpush/android/Constants;->IntervalFirstTime:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    .line 806
    add-long/2addr v3, v5

    .line 808
    sget-wide v5, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    .line 805
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 839
    .end local v1           #msgAlarmMgr:Landroid/app/AlarmManager;
    .end local v7           #pendingIntent:Landroid/app/PendingIntent;
    .end local v11           #messageIntent:Landroid/content/Intent;
    .end local v13           #pendingUserIntent:Landroid/app/PendingIntent;
    .end local v16           #userAlarmMgr:Landroid/app/AlarmManager;
    .end local v17           #userIntent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 747
    .restart local v14       #timePrefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v9, 0x0

    .line 750
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10}, Landroid/os/Handler;-><init>()V

    .line 751
    .local v10, handler2:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airpush/android/Airpush;->run_Task:Ljava/lang/Runnable;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 813
    .end local v10           #handler2:Landroid/os/Handler;
    .end local v14           #timePrefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 814
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 754
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v14       #timePrefs:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    sget-object v2, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 755
    const-string v3, "airpushTimePref"

    const/4 v4, 0x2

    .line 754
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 757
    .local v12, myTimePrefs:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 758
    .local v15, timePrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airpush/android/Airpush;->startTime:J

    .line 760
    const-string v2, "startTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/airpush/android/Airpush;->startTime:J

    invoke-interface {v15, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 761
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 762
    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method private sendInstallData()V
    .locals 8

    .prologue
    .line 513
    const-string v4, "AirpushSDK"

    const-string v5, "Sending Install Data...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :try_start_0
    sget-object v4, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 517
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "model"

    const-string v7, "log"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "action"

    .line 519
    const-string v7, "seticoninstalltracking"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "APIKEY"

    sget-object v7, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "event"

    const-string v7, "iInstall"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "campaigncreativedata"

    iget-object v7, p0, Lcom/airpush/android/Airpush;->post:Lorg/json/JSONObject;

    .line 523
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sending Install Data...."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-boolean v4, Lcom/airpush/android/Airpush;->testMode:Z

    if-nez v4, :cond_2

    .line 526
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Test Mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    sget-object v4, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/airpush/android/HttpPostData;->postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    .line 528
    iget-object v4, p0, Lcom/airpush/android/Airpush;->response:Lorg/apache/http/HttpEntity;

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 529
    .local v3, is:Ljava/io/InputStream;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v0, b:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 534
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    .line 535
    iget-object v4, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 536
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Icon Install returns:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :goto_1
    return-void

    .line 532
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 544
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 538
    .restart local v0       #b:Ljava/lang/StringBuffer;
    .restart local v1       #ch:I
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_1
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Icon Install returns: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/airpush/android/Airpush;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 547
    .end local v0           #b:Ljava/lang/StringBuffer;
    .end local v1           #ch:I
    .end local v3           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 550
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "AirpushSDK"

    const-string v5, "Icon Install Confirmation Error "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 542
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v4, "AirpushSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Test Mode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/airpush/android/Airpush;->testMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method

.method private static showToast()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 267
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v2, "toastPrefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 268
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const-string v2, "toastPrefs"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->toastPrefs:Landroid/content/SharedPreferences;

    .line 272
    sget-object v1, Lcom/airpush/android/Airpush;->toastPrefs:Landroid/content/SharedPreferences;

    const-string v2, "showToast"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    sget-object v1, Lcom/airpush/android/Airpush;->toastPrefs:Landroid/content/SharedPreferences;

    const-string v2, "showToast"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/airpush/android/Airpush;->showToast:Z

    .line 275
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push if showToast...."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/airpush/android/Airpush;->showToast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-boolean v1, Lcom/airpush/android/Airpush;->showToast:Z

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/airpush/android/Airpush;->toastText:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 292
    .local v0, toastEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 279
    .end local v0           #toastEditor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Push else showToast...."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/airpush/android/Airpush;->showToast:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-boolean v1, Lcom/airpush/android/Airpush;->showToast:Z

    if-eqz v1, :cond_2

    .line 281
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/airpush/android/Airpush;->toastText:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 282
    sput-boolean v5, Lcom/airpush/android/Airpush;->showToast:Z

    .line 284
    :cond_2
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 285
    const-string v2, "toastPrefs"

    const/4 v3, 0x2

    .line 284
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->toastPrefs:Landroid/content/SharedPreferences;

    .line 286
    sget-object v1, Lcom/airpush/android/Airpush;->toastPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .restart local v0       #toastEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "showToast"

    sget-boolean v2, Lcom/airpush/android/Airpush;->showToast:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    const-string v2, ""

    .line 381
    .local v2, query:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 382
    const-string v4, "utf-8"

    invoke-static {p2, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    :cond_0
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 387
    .local v3, u:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 386
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 389
    .local v1, httpConnection:Ljava/net/HttpURLConnection;
    const-string v4, "GET"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 390
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 391
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 392
    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 394
    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 395
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 396
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 397
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 399
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 400
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 405
    .end local v1           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v2           #query:Ljava/lang/String;
    .end local v3           #u:Ljava/net/URL;
    :goto_0
    return-object v4

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "AirpushSDK"

    const-string v5, "Network Error, please try again later"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected createSearch(Z)V
    .locals 1
    .parameter "iconTest"

    .prologue
    .line 200
    sput-boolean p1, Lcom/airpush/android/Airpush;->searchIconTestMode:Z

    .line 202
    :try_start_0
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->getShortcutData()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 213
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    goto :goto_0

    .line 206
    :catch_1
    move-exception v0

    goto :goto_0

    .line 209
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected createShortcut()V
    .locals 7

    .prologue
    const/high16 v6, 0x1000

    const/high16 v5, 0x400

    const/4 v4, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconImage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/airpush/android/Airpush;->submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconStrream:Ljava/io/InputStream;

    .line 219
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconStrream:Ljava/io/InputStream;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->bmpicon:Landroid/graphics/Bitmap;

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->iconText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->bmpicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 241
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->makeShortcut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/Airpush;->values:Ljava/util/List;

    .line 247
    sget-object v1, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&model=log&action=seticonclicktracking&APIKEY=airpushsearch&event=iClick&campaignid=0&creativeid=0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/airpush/android/Airpush;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 251
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    iget-object v3, p0, Lcom/airpush/android/Airpush;->shortcutIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.NAME"

    const-string v3, "Search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "duplicate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/airpush/android/Airpush;->addIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON"

    .line 259
    sget-object v3, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    const v4, 0x108004f

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 258
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    invoke-direct {p0}, Lcom/airpush/android/Airpush;->makeShortcut()V

    goto :goto_0
.end method

.method protected startAirpush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZ)V
    .locals 8
    .parameter "context"
    .parameter "appId"
    .parameter "apiKey"
    .parameter "test"
    .parameter "showDialog"
    .parameter "icon"
    .parameter "showAds"

    .prologue
    .line 623
    :try_start_0
    iput-boolean p7, p0, Lcom/airpush/android/Airpush;->showAd:Z

    .line 624
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 625
    const-string v6, "dialogPref"

    const/4 v7, 0x2

    .line 624
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 626
    .local v3, mydialogPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 628
    .local v0, dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "ShowDialog"

    invoke-interface {v0, v5, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 629
    const-string v5, "ShowAd"

    iget-boolean v6, p0, Lcom/airpush/android/Airpush;->showAd:Z

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 630
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    iget-boolean v5, p0, Lcom/airpush/android/Airpush;->showAd:Z

    if-eqz v5, :cond_0

    .line 633
    const-string v5, "AirpushSDK"

    const-string v6, "Initialising....."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    sput-boolean p4, Lcom/airpush/android/Airpush;->testMode:Z

    .line 636
    sput-object p2, Lcom/airpush/android/Airpush;->appId:Ljava/lang/String;

    .line 637
    sput-object p3, Lcom/airpush/android/Airpush;->apikey:Ljava/lang/String;

    .line 638
    sput p6, Lcom/airpush/android/Airpush;->icon:I

    .line 640
    sget-object v5, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    .line 641
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 640
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 642
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :try_start_1
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 648
    .local v2, mdEnc:Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/airpush/android/Airpush;->imeinumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 649
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/Airpush;->imei:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 657
    .end local v2           #mdEnc:Ljava/security/MessageDigest;
    :goto_0
    :try_start_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 658
    .local v1, handler:Landroid/os/Handler;
    iget-object v5, p0, Lcom/airpush/android/Airpush;->send_Task:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1770

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 682
    .end local v0           #dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #handler:Landroid/os/Handler;
    .end local v3           #mydialogPrefs:Landroid/content/SharedPreferences;
    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_1
    return-void

    .line 660
    :catch_0
    move-exception v5

    goto :goto_1

    .line 652
    .restart local v0       #dialogPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #mydialogPrefs:Landroid/content/SharedPreferences;
    .restart local v4       #telephony:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v5

    goto :goto_0
.end method
