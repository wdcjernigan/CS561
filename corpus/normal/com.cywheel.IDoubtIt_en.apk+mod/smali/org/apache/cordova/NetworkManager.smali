.class public Lorg/apache/cordova/NetworkManager;
.super Lorg/apache/cordova/api/Plugin;
.source "NetworkManager.java"


# static fields
.field public static final CDMA:Ljava/lang/String; = "cdma"

.field public static final EDGE:Ljava/lang/String; = "edge"

.field public static final EHRPD:Ljava/lang/String; = "ehrpd"

.field public static final GPRS:Ljava/lang/String; = "gprs"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field public static final HSDPA:Ljava/lang/String; = "hsdpa"

.field public static final HSPA:Ljava/lang/String; = "hspa"

.field public static final HSPA_PLUS:Ljava/lang/String; = "hspa+"

.field public static final HSUPA:Ljava/lang/String; = "hsupa"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkManager"

.field public static final LTE:Ljava/lang/String; = "lte"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static NOT_REACHABLE:I = 0x0

.field public static final ONEXRTT:Ljava/lang/String; = "1xrtt"

.field public static REACHABLE_VIA_CARRIER_DATA_NETWORK:I = 0x0

.field public static REACHABLE_VIA_WIFI_NETWORK:I = 0x0

.field public static final TYPE_2G:Ljava/lang/String; = "2g"

.field public static final TYPE_3G:Ljava/lang/String; = "3g"

.field public static final TYPE_4G:Ljava/lang/String; = "4g"

.field public static final TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final UMB:Ljava/lang/String; = "umb"

.field public static final UMTS:Ljava/lang/String; = "umts"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIMAX:Ljava/lang/String; = "wimax"


# instance fields
.field private connectionCallbackId:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;

.field sockMan:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/NetworkManager;->NOT_REACHABLE:I

    .line 37
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/NetworkManager;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/cordova/NetworkManager;->updateConnectionInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2
    .parameter "info"

    .prologue
    .line 178
    const-string v0, "none"

    .line 179
    .local v0, type:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const-string v0, "none"

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/NetworkManager;->getType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    .line 212
    if-eqz p1, :cond_6

    .line 213
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, type:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string v1, "wifi"

    .line 244
    .end local v0           #type:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 218
    .restart local v0       #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 219
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gprs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :cond_1
    const-string v1, "2g"

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1xrtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ehrpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hsupa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hsdpa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hspa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    :cond_3
    const-string v1, "3g"

    goto/16 :goto_0

    .line 234
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hspa+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 237
    :cond_5
    const-string v1, "4g"

    goto/16 :goto_0

    .line 242
    .end local v0           #type:Ljava/lang/String;
    :cond_6
    const-string v1, "none"

    goto/16 :goto_0

    .line 244
    .restart local v0       #type:Ljava/lang/String;
    :cond_7
    const-string v1, "unknown"

    goto/16 :goto_0
.end method

.method private sendUpdate(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 197
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 198
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 199
    iget-object v1, p0, Lorg/apache/cordova/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/NetworkManager;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lorg/apache/cordova/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "networkconnection"

    invoke-virtual {v1, v2, p1}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method private updateConnectionInfo(Landroid/net/NetworkInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lorg/apache/cordova/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/NetworkManager;->sendUpdate(Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 119
    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    .line 120
    .local v3, status:Lorg/apache/cordova/api/PluginResult$Status;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, result:Ljava/lang/String;
    const-string v4, "getConnectionInfo"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    iput-object p3, p0, Lorg/apache/cordova/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    .line 124
    iget-object v4, p0, Lorg/apache/cordova/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 125
    .local v0, info:Landroid/net/NetworkInfo;
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, v0}, Lorg/apache/cordova/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 126
    .local v1, pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 130
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v1, v3, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 149
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/NetworkManager;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering network receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setContext(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 3
    .parameter "cordova"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->setContext(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 91
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lorg/apache/cordova/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    .line 92
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/NetworkManager;->connectionCallbackId:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lorg/apache/cordova/NetworkManager$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/NetworkManager$1;-><init>(Lorg/apache/cordova/NetworkManager;)V

    iput-object v1, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 105
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    :cond_0
    return-void
.end method
