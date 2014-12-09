.class public Lcom/phonegap/NetworkManager;
.super Lcom/phonegap/api/Plugin;
.source "NetworkManager.java"


# static fields
.field public static NOT_REACHABLE:I

.field public static REACHABLE_VIA_CARRIER_DATA_NETWORK:I

.field public static REACHABLE_VIA_WIFI_NETWORK:I


# instance fields
.field sockMan:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 7
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 56
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 57
    .local v4, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v3, ""

    .line 59
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-string v5, "isAvailable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isAvailable()Z

    move-result v0

    .line 61
    .local v0, b:Z
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    .line 73
    .end local v0           #b:Z
    :goto_0
    return-object v5

    .line 63
    :cond_0
    const-string v5, "isWifiActive"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isWifiActive()Z

    move-result v0

    .line 65
    .restart local v0       #b:Z
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0           #b:Z
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 67
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v5, "isReachable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/NetworkManager;->isReachable(Ljava/lang/String;Z)I

    move-result v2

    .line 69
    .local v2, i:I
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto :goto_0

    .line 71
    .end local v2           #i:I
    :cond_2
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 99
    .local v1, info:Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 100
    .local v0, conn:Z
    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 103
    :cond_0
    return v0
.end method

.method public isReachable(Ljava/lang/String;Z)I
    .locals 6
    .parameter "uri"
    .parameter "isIpAddress"

    .prologue
    .line 128
    sget v3, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    .line 130
    .local v3, reachable:I
    const-string v4, "http://"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 137
    .local v1, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, httpget:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    .line 140
    invoke-virtual {p0}, Lcom/phonegap/NetworkManager;->isWifiActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    sget v3, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    .line 151
    .end local v1           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    :goto_0
    return v3

    .line 144
    .restart local v1       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v2       #httpget:Lorg/apache/http/client/methods/HttpGet;
    :cond_2
    sget v3, Lcom/phonegap/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v1           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpget:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    sget v3, Lcom/phonegap/NetworkManager;->NOT_REACHABLE:I

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiActive()Z
    .locals 3

    .prologue
    .line 112
    iget-object v2, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, type:Ljava/lang/String;
    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 117
    .end local v1           #type:Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 44
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/phonegap/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    .line 45
    return-void
.end method
