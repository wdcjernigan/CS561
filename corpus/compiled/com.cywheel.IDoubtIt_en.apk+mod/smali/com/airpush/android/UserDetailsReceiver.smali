.class public Lcom/airpush/android/UserDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserDetailsReceiver.java"


# static fields
.field protected static ctx:Landroid/content/Context;

.field private static imei:Ljava/lang/String;


# instance fields
.field private apikey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private icon:I

.field private json:Lorg/json/JSONObject;

.field private jsonstr:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private testMode:Z

.field values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "invalid"

    sput-object v0, Lcom/airpush/android/UserDetailsReceiver;->imei:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-string v0, "Invalid"

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->values:Ljava/util/List;

    .line 22
    const-string v0, "airpush"

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->apikey:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private getApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 160
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->json:Lorg/json/JSONObject;

    .line 162
    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->json:Lorg/json/JSONObject;

    const-string v2, "authkey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid key"

    goto :goto_0
.end method

.method private getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 147
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->json:Lorg/json/JSONObject;

    .line 149
    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->json:Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid Id"

    goto :goto_0
.end method

.method private getDataSharedprefrences()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 97
    :try_start_0
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    const-string v1, "dataPrefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    const-string v1, "dataPrefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 99
    .local v7, dataPrefs:Landroid/content/SharedPreferences;
    const-string v0, "appId"

    const-string v1, "invalid"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    .line 100
    const-string v0, "apikey"

    const-string v1, "airpush"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->apikey:Ljava/lang/String;

    .line 101
    const-string v0, "imei"

    const-string v1, "invalid"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/UserDetailsReceiver;->imei:Ljava/lang/String;

    .line 102
    const-string v0, "testMode"

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airpush/android/UserDetailsReceiver;->testMode:Z

    .line 103
    const-string v0, "icon"

    const v1, 0x1080074

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airpush/android/UserDetailsReceiver;->icon:I

    .line 143
    .end local v7           #dataPrefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->packageName:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 109
    const-string v2, "default"

    sget-object v3, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    .line 107
    invoke-static {v0, v1, v2, v3}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/UserDetailsReceiver;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/UserDetailsReceiver;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->apikey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v8

    .line 117
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->packageName:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 120
    const-string v2, "default"

    sget-object v3, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    .line 118
    invoke-static {v0, v1, v2, v3}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/UserDetailsReceiver;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/UserDetailsReceiver;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/UserDetailsReceiver;->apikey:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 33
    sput-object p1, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    .line 34
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/airpush/android/SetPreferences;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    :try_start_0
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetUserInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/airpush/android/UserDetailsReceiver;->getDataSharedprefrences()V

    .line 44
    :cond_0
    const-string v0, "AirpushSDK"

    const-string v1, "Sending User Info...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "airpushAppid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/airpush/android/Constants;->doToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v8, userServiceIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.airpush.android.PushServiceStart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "appId"

    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "type"

    const-string v1, "userInfo"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "apikey"

    iget-object v1, p0, Lcom/airpush/android/UserDetailsReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    .end local v8           #userServiceIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 60
    .restart local v8       #userServiceIntent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/airpush/android/UserDetailsReceiver;->getDataSharedprefrences()V

    .line 61
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v8           #userServiceIntent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 68
    .local v7, e:Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/airpush/android/UserDetailsReceiver;->getDataSharedprefrences()V

    .line 69
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/airpush/android/UserDetailsReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    move v4, v10

    move v5, v9

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 71
    const-string v0, "AirpushSDK"

    const-string v1, "Sending User Info failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v0, Lcom/airpush/android/UserDetailsReceiver;->ctx:Landroid/content/Context;

    const-wide/32 v1, 0x1b7740

    invoke-static {v0, v1, v2}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :cond_3
    const-string v0, "AirpushSDK"

    const-string v1, "SDK is disabled, please enable to receive Ads !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
