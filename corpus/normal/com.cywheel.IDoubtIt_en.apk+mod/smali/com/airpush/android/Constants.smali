.class public final Lcom/airpush/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
#the value of this static final field might be set in the static constructor
.field protected static final ALARM_TRIGGER_AT_TIME:J = 0x0L

.field protected static final DebugMode:Z = false

.field protected static final IntervalFirstTime:Ljava/lang/Integer; = null

.field protected static IntervalGetMessage:J = 0x0L

.field protected static final IntervalSdkReexecute:Ljava/lang/Integer; = null

.field protected static final IntervalUserInfo:Ljava/lang/Integer; = null

.field protected static final VibrateMode:Z = false

.field protected static altIp:Ljava/lang/String; = null

.field protected static apiMessageUrl:Ljava/lang/String; = null

.field protected static final apiUrl:Ljava/lang/String; = "http://api.airpush.com/v2/api.php"

.field protected static icons:[I

.field protected static searchIconNextMessageCheckTime:J

.field protected static sendDBLog:Z

.field protected static final sendLog:Z

.field private static testMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0xdbba00

    .line 12
    const-string v0, "http://api.airpush.com/v2/api.php"

    sput-object v0, Lcom/airpush/android/Constants;->apiMessageUrl:Ljava/lang/String;

    .line 15
    const/16 v0, 0x4e20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/Constants;->IntervalUserInfo:Ljava/lang/Integer;

    .line 16
    sput-wide v4, Lcom/airpush/android/Constants;->IntervalGetMessage:J

    .line 17
    const/16 v0, 0x1770

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/Constants;->IntervalFirstTime:Ljava/lang/Integer;

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    sput-wide v0, Lcom/airpush/android/Constants;->ALARM_TRIGGER_AT_TIME:J

    .line 19
    const/16 v0, 0xf0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/Constants;->IntervalSdkReexecute:Ljava/lang/Integer;

    .line 23
    sput-wide v4, Lcom/airpush/android/Constants;->searchIconNextMessageCheckTime:J

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airpush/android/Constants;->sendDBLog:Z

    .line 25
    const-string v0, "api.airpush.com"

    sput-object v0, Lcom/airpush/android/Constants;->altIp:Ljava/lang/String;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/airpush/android/Constants;->icons:[I

    .line 10
    return-void

    .line 27
    :array_0
    .array-data 0x4
        0x74t 0x0t 0x8t 0x1t
        0x2bt 0x0t 0x8t 0x1t
        0x6bt 0x0t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkInternetConnection(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 54
    new-instance v0, Ljava/lang/String;

    const-string v5, "ABC"

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, a:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, b:Ljava/lang/String;
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 59
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 62
    const/4 v4, 0x1

    .line 70
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :goto_0
    return v4

    .line 64
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    const-string v5, "AirpushSDK"

    const-string v6, "Internet Connection Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v5, "AirpushSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Internet Error: SDK will retry after "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v7, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v2           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v3

    .line 70
    .local v3, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected static doToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "message"

    .prologue
    .line 40
    return-void
.end method

.method protected static setUrl(Z)V
    .locals 1
    .parameter "test"

    .prologue
    .line 43
    sput-boolean p0, Lcom/airpush/android/Constants;->testMode:Z

    .line 45
    sget-boolean v0, Lcom/airpush/android/Constants;->testMode:Z

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "http://api.airpush.com/testmsg2.php"

    sput-object v0, Lcom/airpush/android/Constants;->apiMessageUrl:Ljava/lang/String;

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    const-string v0, "http://api.airpush.com/v2/api.php"

    sput-object v0, Lcom/airpush/android/Constants;->apiMessageUrl:Ljava/lang/String;

    goto :goto_0
.end method
