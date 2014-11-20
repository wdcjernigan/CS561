.class public Lcom/airpush/android/SetPreferences;
.super Ljava/lang/Object;
.source "SetPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/SetPreferences$MyLocationListener;
    }
.end annotation


# static fields
.field private static android_id:Ljava/lang/String;

.field private static apikey:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static carrier:Ljava/lang/String;

.field private static city:Ljava/lang/String;

.field private static connectionType:Ljava/lang/String;

.field private static country:Ljava/lang/String;

.field private static ctx:Landroid/content/Context;

.field private static dte:Ljava/lang/String;

.field private static icon:I

.field protected static imei:Ljava/lang/String;

.field private static ip:Ljava/lang/String;

.field private static ipPrefs:Landroid/content/SharedPreferences;

.field protected static json:Lorg/json/JSONObject;

.field private static jsonstr:Ljava/lang/String;

.field private static lat:Ljava/lang/String;

.field private static lon:Ljava/lang/String;

.field private static manufacturer:Ljava/lang/String;

.field private static networkOperator:Ljava/lang/String;

.field private static packageName:Ljava/lang/String;

.field private static phonemodel:Ljava/lang/String;

.field protected static postValues:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static sdkversion:Ljava/lang/String;

.field private static state:Ljava/lang/String;

.field private static testMode:Z

.field private static token:Ljava/lang/String;

.field private static user_agent:Ljava/lang/String;

.field protected static values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static version:Ljava/lang/String;


# instance fields
.field private doPush:Z

.field private doSearch:Z

.field private encodedAsp:Ljava/lang/String;

.field private imeinumber:Ljava/lang/String;

.field private jsonString:Ljava/lang/String;

.field private loc:Landroid/location/Location;

.field private searchIconTestMode:Z

.field private showAd:Z

.field private showDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 49
    const-string v0, "4.02"

    sput-object v0, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    .line 50
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->country:Ljava/lang/String;

    .line 51
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->city:Ljava/lang/String;

    .line 52
    const-string v0, "unknown"

    sput-object v0, Lcom/airpush/android/SetPreferences;->state:Ljava/lang/String;

    .line 53
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 54
    const-string v0, "00"

    sput-object v0, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 55
    const-string v0, "invalid"

    sput-object v0, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 56
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 57
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 58
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 59
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 60
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 61
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 62
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 63
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->ip:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 65
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 66
    const-string v0, "0"

    sput-object v0, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "0"

    iput-object v0, p0, Lcom/airpush/android/SetPreferences;->jsonString:Ljava/lang/String;

    .line 36
    const-string v0, "0"

    iput-object v0, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    sput-object p0, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    sput-object p0, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    return-void
.end method

.method private static getApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 289
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 291
    sget-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    const-string v2, "authkey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 296
    :goto_0
    return-object v1

    .line 293
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid key"

    goto :goto_0
.end method

.method private static getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    .line 278
    sget-object v1, Lcom/airpush/android/SetPreferences;->json:Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 283
    :goto_0
    return-object v1

    .line 280
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid Id"

    goto :goto_0
.end method

.method private getConnectionType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    sget-object v2, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 394
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 393
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 396
    .local v1, ni:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const-string v2, "1"

    .line 399
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method private static getDataSharedprefrences(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 216
    :try_start_0
    const-string v3, "dataPrefs"

    .line 217
    const/4 v4, 0x1

    .line 216
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 217
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const-string v3, "dataPrefs"

    const/4 v4, 0x1

    .line 218
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 220
    .local v0, dataPrefs:Landroid/content/SharedPreferences;
    const-string v3, "appId"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 221
    const-string v3, "apikey"

    const-string v4, "airpush"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 222
    const-string v3, "imei"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 223
    const-string v3, "token"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 224
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 225
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 226
    const-string v3, "packageName"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 227
    const-string v3, "version"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 228
    const-string v3, "carrier"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 229
    const-string v3, "networkOperator"

    .line 230
    const-string v4, "invalid"

    .line 229
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 231
    const-string v3, "phoneModel"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 232
    const-string v3, "manufacturer"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 233
    const-string v3, "longitude"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 234
    const-string v3, "latitude"

    const-string v4, "invalid"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    .line 235
    const-string v3, "sdkversion"

    const-string v4, "4.02"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    .line 236
    const-string v3, "connectionType"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    .line 237
    const-string v3, "testMode"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/airpush/android/SetPreferences;->testMode:Z

    .line 238
    const-string v3, "useragent"

    const-string v4, "Default"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    .line 239
    const-string v3, "icon"

    const v4, 0x108000a

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/airpush/android/SetPreferences;->icon:I

    .line 240
    const-string v3, "android_id"

    const-string v4, "Android_id"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    .line 272
    .end local v0           #dataPrefs:Landroid/content/SharedPreferences;
    .end local v1           #date:Ljava/util/Date;
    :goto_0
    return-void

    .line 243
    :cond_0
    sget-object v3, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    sget-object v4, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v4, "default"

    const-string v5, "default"

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 244
    invoke-static {v3, v4, v5, v6}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    .line 247
    sget-object v3, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 248
    sget-object v3, Lcom/airpush/android/SetPreferences;->jsonstr:Ljava/lang/String;

    invoke-static {v3}, Lcom/airpush/android/SetPreferences;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fetching Local Data Error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static getIpPrefrences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 380
    const-string v0, "ipPrefs"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string v0, "ipPrefs"

    .line 382
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/SetPreferences;->ipPrefs:Landroid/content/SharedPreferences;

    .line 385
    sget-object v0, Lcom/airpush/android/SetPreferences;->ipPrefs:Landroid/content/SharedPreferences;

    const-string v1, "not Found"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not Found"

    goto :goto_0
.end method

.method private getLocation(Landroid/content/Context;)V
    .locals 10
    .parameter "ctx"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 422
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 423
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    .line 424
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 423
    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 422
    if-nez v1, :cond_0

    .line 425
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 427
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 426
    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 425
    if-nez v1, :cond_0

    .line 431
    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    check-cast v0, Landroid/location/LocationManager;

    .line 432
    .local v0, mlocManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 435
    .local v6, ct:Landroid/location/Criteria;
    invoke-virtual {v6, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 437
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 436
    iput-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    .line 438
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 440
    new-instance v5, Lcom/airpush/android/SetPreferences$MyLocationListener;

    invoke-direct {v5, p0}, Lcom/airpush/android/SetPreferences$MyLocationListener;-><init>(Lcom/airpush/android/SetPreferences;)V

    .line 442
    .local v5, mlocListener:Landroid/location/LocationListener;
    const-string v1, "gps"

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 471
    .end local v0           #mlocManager:Landroid/location/LocationManager;
    .end local v5           #mlocListener:Landroid/location/LocationListener;
    .end local v6           #ct:Landroid/location/Criteria;
    :cond_0
    :goto_0
    return-void

    .line 445
    .restart local v0       #mlocManager:Landroid/location/LocationManager;
    .restart local v6       #ct:Landroid/location/Criteria;
    :cond_1
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    goto :goto_0

    .line 451
    .end local v6           #ct:Landroid/location/Criteria;
    :cond_2
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 452
    .restart local v6       #ct:Landroid/location/Criteria;
    invoke-virtual {v6, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 454
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 453
    iput-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    .line 455
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    if-nez v1, :cond_3

    .line 457
    new-instance v5, Lcom/airpush/android/SetPreferences$MyLocationListener;

    invoke-direct {v5, p0}, Lcom/airpush/android/SetPreferences$MyLocationListener;-><init>(Lcom/airpush/android/SetPreferences;)V

    .line 459
    .restart local v5       #mlocListener:Landroid/location/LocationListener;
    const-string v1, "network"

    .line 458
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 462
    .end local v5           #mlocListener:Landroid/location/LocationListener;
    :cond_3
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    .line 463
    iget-object v1, p0, Lcom/airpush/android/SetPreferences;->loc:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x1

    .line 403
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 404
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 405
    const-string v2, "sdkPrefs"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    .local v0, SDKPrefs:Landroid/content/SharedPreferences;
    const-string v2, "SDKEnabled"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const-string v2, "SDKEnabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 415
    .end local v0           #SDKPrefs:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method protected static setIpPrefrences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ctx"
    .parameter "ip"
    .parameter "name"

    .prologue
    .line 372
    .line 373
    const-string v1, "ipPrefs"

    const/4 v2, 0x2

    .line 372
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->ipPrefs:Landroid/content/SharedPreferences;

    .line 374
    sget-object v1, Lcom/airpush/android/SetPreferences;->ipPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, ipPrefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 377
    return-void
.end method

.method protected static setValues(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    :try_start_0
    invoke-static {p0}, Lcom/airpush/android/SetPreferences;->getDataSharedprefrences(Landroid/content/Context;)V

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    .line 306
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apikey"

    sget-object v4, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "appId"

    sget-object v4, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imei"

    sget-object v4, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "token"

    sget-object v4, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "request_timestamp"

    sget-object v4, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "packageName"

    sget-object v4, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "version"

    sget-object v4, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "carrier"

    sget-object v4, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "networkOperator"

    .line 315
    sget-object v4, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phoneModel"

    sget-object v4, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "manufacturer"

    sget-object v4, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "longitude"

    sget-object v4, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "latitude"

    sget-object v4, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "sdkversion"

    sget-object v4, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "wifi"

    sget-object v4, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "useragent"

    sget-object v4, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "android_id"

    sget-object v4, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "longitude"

    sget-object v4, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "latitude"

    sget-object v4, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.airpush.com/v2/api.php?apikey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imei="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 330
    sget-object v2, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&request_timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    const-string v2, "&packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    const-string v2, "&carrier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&networkOperator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 333
    sget-object v2, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&phoneModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    const-string v2, "&manufacturer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    const-string v2, "&latitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&sdkversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->sdkversion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 336
    const-string v2, "&wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&useragent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airpush/android/SetPreferences;->postValues:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    sget-object v1, Lcom/airpush/android/SetPreferences;->values:Ljava/util/List;

    return-object v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AirpushSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SetValues Error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 8
    .parameter "context"
    .parameter "appid"
    .parameter "apikey"
    .parameter "testMode"
    .parameter "doSearch"
    .parameter "searchIconTestMode"
    .parameter "doPush"

    .prologue
    .line 78
    sput-object p1, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 79
    sput-object p2, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    .line 80
    sput-object p3, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    .line 81
    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    iput-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    .line 82
    iput-boolean p7, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    .line 83
    iput-boolean p5, p0, Lcom/airpush/android/SetPreferences;->doSearch:Z

    .line 84
    iput-boolean p6, p0, Lcom/airpush/android/SetPreferences;->searchIconTestMode:Z

    .line 86
    sput-boolean p4, Lcom/airpush/android/SetPreferences;->testMode:Z

    .line 88
    :try_start_0
    new-instance v5, Landroid/webkit/WebView;

    sget-object v6, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    .line 89
    const-string v5, "User Agent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "User Agent : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0}, Lcom/airpush/android/SetPreferences;->getConnectionType()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    .line 97
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/airpush/android/SetPreferences;->getLocation(Landroid/content/Context;)V

    .line 99
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 100
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 99
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 101
    .local v4, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    .line 106
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 108
    .local v2, mdEnc:Ljava/security/MessageDigest;
    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 109
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 114
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 115
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    .line 116
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    .line 117
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    .line 118
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    .line 119
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    .line 120
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    .line 122
    sget-object v5, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 124
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 125
    .local v3, mdEnc2:Ljava/security/MessageDigest;
    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 126
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/airpush/android/SetPreferences;->setSharedPreferences()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #mdEnc:Ljava/security/MessageDigest;
    .end local v3           #mdEnc2:Ljava/security/MessageDigest;
    .end local v4           #telephony:Landroid/telephony/TelephonyManager;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SetPrefrences Error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setSharedPreferences()V
    .locals 7

    .prologue
    .line 156
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 157
    .local v2, date:Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    .line 158
    sget-object v4, Lcom/airpush/android/SetPreferences;->ctx:Landroid/content/Context;

    .line 159
    const-string v5, "dataPrefs"

    const/4 v6, 0x2

    .line 158
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 160
    .local v3, myDataPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 161
    .local v1, dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "apikey"

    sget-object v5, Lcom/airpush/android/SetPreferences;->apikey:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v4, "appId"

    sget-object v5, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v4, "imei"

    sget-object v5, Lcom/airpush/android/SetPreferences;->imei:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v4, "connectionType"

    sget-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    const-string v4, "token"

    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    const-string v4, "request_timestamp"

    sget-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v4, "packageName"

    sget-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v4, "version"

    sget-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v4, "carrier"

    sget-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v4, "networkOperator"

    sget-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v4, "phoneModel"

    sget-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v4, "manufacturer"

    sget-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    const-string v4, "longitude"

    sget-object v5, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    const-string v4, "latitude"

    sget-object v5, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 175
    const-string v4, "sdkversion"

    const-string v5, "4.02"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v4, "android_id"

    sget-object v5, Lcom/airpush/android/SetPreferences;->android_id:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v4, "showDialog"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showDialog:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v4, "showAd"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->showAd:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v4, "testMode"

    sget-boolean v5, Lcom/airpush/android/SetPreferences;->testMode:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v4, "doPush"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->doPush:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v4, "doSearch"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->doSearch:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v4, "searchIconTestMode"

    iget-boolean v5, p0, Lcom/airpush/android/SetPreferences;->searchIconTestMode:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v4, "icon"

    sget v5, Lcom/airpush/android/SetPreferences;->icon:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    const-string v4, "useragent"

    sget-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/airpush/android/SetPreferences;->appId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->connectionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->dte:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 186
    sget-object v5, Lcom/airpush/android/SetPreferences;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->carrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->networkOperator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 187
    sget-object v5, Lcom/airpush/android/SetPreferences;->phonemodel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->manufacturer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->lon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->lat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/airpush/android/SetPreferences;->user_agent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, asp:Ljava/lang/String;
    invoke-static {v0}, Lcom/airpush/android/Base64;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    .line 189
    const-string v4, "asp"

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->encodedAsp:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v4, "imeinumber"

    iget-object v5, p0, Lcom/airpush/android/SetPreferences;->imeinumber:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v0           #asp:Ljava/lang/String;
    .end local v1           #dataPrefsEditor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #myDataPrefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v4

    goto :goto_0
.end method
