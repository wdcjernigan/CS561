.class public Lcom/phonegap/BatteryListener;
.super Lcom/phonegap/api/Plugin;
.source "BatteryListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BatteryManager"


# instance fields
.field private batteryCallbackId:Ljava/lang/String;

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/phonegap/BatteryListener;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/phonegap/BatteryListener;->updateBatteryInfo(Landroid/content/Intent;)V

    return-void
.end method

.method private getBatteryInfo(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 6
    .parameter "batteryIntent"

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v1, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "level"

    const-string v4, "level"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 127
    const-string v3, "isPlugged"

    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "BatteryManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeBatteryListener()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/phonegap/BatteryListener;->ctx:Lcom/phonegap/api/PhonegapActivity;

    iget-object v2, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BatteryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering battery receiver: "

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

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 2
    .parameter "info"
    .parameter "keepCallback"

    .prologue
    .line 150
    iget-object v1, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 151
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 152
    .local v0, result:Lcom/phonegap/api/PluginResult;
    invoke-virtual {v0, p2}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    .line 153
    iget-object v1, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/BatteryListener;->success(Lcom/phonegap/api/PluginResult;Ljava/lang/String;)V

    .line 155
    .end local v0           #result:Lcom/phonegap/api/PluginResult;
    :cond_0
    return-void
.end method

.method private updateBatteryInfo(Landroid/content/Intent;)V
    .locals 2
    .parameter "batteryIntent"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/phonegap/BatteryListener;->getBatteryInfo(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/phonegap/BatteryListener;->sendUpdate(Lorg/json/JSONObject;Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 58
    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->INVALID_ACTION:Lcom/phonegap/api/PluginResult$Status;

    .line 59
    .local v3, status:Lcom/phonegap/api/PluginResult$Status;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported Operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, result:Ljava/lang/String;
    const-string v4, "start"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    iget-object v4, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 63
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    const-string v5, "Battery listener already running."

    invoke-direct {v1, v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v1

    .line 65
    :cond_0
    iput-object p3, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v4, :cond_1

    .line 71
    new-instance v4, Lcom/phonegap/BatteryListener$1;

    invoke-direct {v4, p0}, Lcom/phonegap/BatteryListener$1;-><init>(Lcom/phonegap/BatteryListener;)V

    iput-object v4, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    .line 77
    iget-object v4, p0, Lcom/phonegap/BatteryListener;->ctx:Lcom/phonegap/api/PhonegapActivity;

    iget-object v5, p0, Lcom/phonegap/BatteryListener;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Lcom/phonegap/api/PhonegapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    :cond_1
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v1, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 82
    .local v1, pluginResult:Lcom/phonegap/api/PluginResult;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 86
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #pluginResult:Lcom/phonegap/api/PluginResult;
    :cond_2
    const-string v4, "stop"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    invoke-direct {p0}, Lcom/phonegap/BatteryListener;->removeBatteryListener()V

    .line 88
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/phonegap/BatteryListener;->sendUpdate(Lorg/json/JSONObject;Z)V

    .line 89
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/phonegap/BatteryListener;->batteryCallbackId:Ljava/lang/String;

    .line 90
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v1, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 93
    :cond_3
    new-instance v1, Lcom/phonegap/api/PluginResult;

    invoke-direct {v1, v3, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/phonegap/BatteryListener;->removeBatteryListener()V

    .line 101
    return-void
.end method
