.class public Lcom/airpush/android/MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageReceiver.java"


# static fields
.field protected static appId:Ljava/lang/String;

.field protected static ctx:Landroid/content/Context;

.field protected static imei:Ljava/lang/String;


# instance fields
.field private apikey:Ljava/lang/String;

.field private doPush:Z

.field private doSearch:Z

.field private getData_Task:Ljava/lang/Runnable;

.field private icon:I

.field private json:Lorg/json/JSONObject;

.field private jsonstr:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private searchIconTestMode:Z

.field private testMode:Z

.field private values:Ljava/util/List;
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
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/airpush/android/MessageReceiver;->imei:Ljava/lang/String;

    .line 21
    const-string v0, "Invalid"

    sput-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->values:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->apikey:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/airpush/android/MessageReceiver$1;

    invoke-direct {v0, p0}, Lcom/airpush/android/MessageReceiver$1;-><init>(Lcom/airpush/android/MessageReceiver;)V

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->getData_Task:Ljava/lang/Runnable;

    .line 17
    return-void
.end method

.method static synthetic access$0(Lcom/airpush/android/MessageReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/airpush/android/MessageReceiver;->getDataSharedprefrences()V

    return-void
.end method

.method private getApiKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 179
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/MessageReceiver;->json:Lorg/json/JSONObject;

    .line 181
    iget-object v1, p0, Lcom/airpush/android/MessageReceiver;->json:Lorg/json/JSONObject;

    const-string v2, "authkey"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 183
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid key"

    goto :goto_0
.end method

.method private getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "jsonstr"

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airpush/android/MessageReceiver;->json:Lorg/json/JSONObject;

    .line 168
    iget-object v1, p0, Lcom/airpush/android/MessageReceiver;->json:Lorg/json/JSONObject;

    const-string v2, "appid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    .line 170
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Lorg/json/JSONException;
    const-string v1, "invalid Id"

    goto :goto_0
.end method

.method private getDataSharedprefrences()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 112
    :try_start_0
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    const-string v1, "dataPrefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    const-string v1, "dataPrefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 114
    .local v7, dataPrefs:Landroid/content/SharedPreferences;
    const-string v0, "appId"

    const-string v1, "invalid"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    .line 115
    const-string v0, "apikey"

    const-string v1, "airpush"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->apikey:Ljava/lang/String;

    .line 116
    const-string v0, "imei"

    const-string v1, "invalid"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/MessageReceiver;->imei:Ljava/lang/String;

    .line 117
    const-string v0, "testMode"

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airpush/android/MessageReceiver;->testMode:Z

    .line 118
    const-string v0, "doPush"

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airpush/android/MessageReceiver;->doPush:Z

    .line 119
    const-string v0, "doSearch"

    const/4 v1, 0x1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airpush/android/MessageReceiver;->doSearch:Z

    .line 120
    const-string v0, "searchIconTestMode"

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airpush/android/MessageReceiver;->searchIconTestMode:Z

    .line 122
    const-string v0, "icon"

    const v1, 0x1080074

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/airpush/android/MessageReceiver;->icon:I

    .line 162
    .end local v7           #dataPrefs:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 125
    :cond_0
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->packageName:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/MessageReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 128
    const-string v2, "default"

    sget-object v3, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/MessageReceiver;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/MessageReceiver;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->apikey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v8

    .line 136
    .local v8, e:Ljava/lang/Exception;
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->packageName:Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api.airpush.com/model/user/getappinfo.php?packageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airpush/android/MessageReceiver;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    .line 139
    const-string v2, "default"

    sget-object v3, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/airpush/android/HttpPostData;->postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/MessageReceiver;->getAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver;->jsonstr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/airpush/android/MessageReceiver;->getApiKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airpush/android/MessageReceiver;->apikey:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 31
    sput-object p1, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    .line 33
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/airpush/android/SetPreferences;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35
    :try_start_0
    sget-object v0, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "AirpushSDK"

    const-string v1, "Receiving Message....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SetMessageReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/airpush/android/MessageReceiver;->getDataSharedprefrences()V

    .line 45
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v9, messageServiceIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.airpush.android.PushServiceStart"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v0, "appId"

    sget-object v1, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v0, "type"

    const-string v1, "message"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v0, "apikey"

    iget-object v1, p0, Lcom/airpush/android/MessageReceiver;->apikey:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v0, "testMode"

    iget-boolean v1, p0, Lcom/airpush/android/MessageReceiver;->testMode:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    const-string v0, "icon"

    iget v1, p0, Lcom/airpush/android/MessageReceiver;->icon:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string v0, "icontestmode"

    iget-boolean v1, p0, Lcom/airpush/android/MessageReceiver;->searchIconTestMode:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string v0, "doSearch"

    iget-boolean v1, p0, Lcom/airpush/android/MessageReceiver;->doSearch:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    const-string v0, "doPush"

    iget-boolean v1, p0, Lcom/airpush/android/MessageReceiver;->doPush:Z

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-virtual {p1, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    .end local v9           #messageServiceIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 66
    .restart local v9       #messageServiceIntent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0}, Lcom/airpush/android/MessageReceiver;->getDataSharedprefrences()V

    .line 67
    sget-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    const-string v1, "invalid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    :cond_3
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    .line 69
    .local v8, handler:Landroid/os/Handler;
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver;->getData_Task:Ljava/lang/Runnable;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    .end local v8           #handler:Landroid/os/Handler;
    :cond_4
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v9           #messageServiceIntent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 76
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "AirpushSDK"

    const-string v1, "Receving Message.....Failed : "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/airpush/android/MessageReceiver;->getDataSharedprefrences()V

    .line 78
    new-instance v0, Lcom/airpush/android/Airpush;

    sget-object v1, Lcom/airpush/android/MessageReceiver;->ctx:Landroid/content/Context;

    sget-object v2, Lcom/airpush/android/MessageReceiver;->appId:Ljava/lang/String;

    const-string v3, "airpush"

    move v4, v11

    move v5, v10

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0

    .line 98
    .end local v7           #e:Ljava/lang/Exception;
    :cond_5
    const-string v0, "AirpushSDK"

    const-string v1, "SDK is disabled, please enable to receive Ads !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
