.class public Lartiic/plugins/ArtiicPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "ArtiicPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method

.method private getIdioma()Lcom/phonegap/api/PluginResult;
    .locals 5

    .prologue
    .line 155
    iget-object v1, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EURO_TWEETS_2012"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, settings:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    iget-object v3, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    return-object v1
.end method

.method private getMiEquipo()Lcom/phonegap/api/PluginResult;
    .locals 5

    .prologue
    .line 88
    iget-object v1, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EURO_TWEETS_2012"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, settings:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v3, "miequipo"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    return-object v1
.end method

.method private getNotification(Lorg/json/JSONArray;)Lcom/phonegap/api/PluginResult;
    .locals 6
    .parameter "data"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, channel:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v3, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "EURO_TWEETS_2012"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 146
    .local v2, settings:Landroid/content/SharedPreferences;
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const/4 v5, 0x1

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method private setMiEquipo(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 6
    .parameter "equipo"

    .prologue
    .line 79
    iget-object v2, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EURO_TWEETS_2012"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "miequipo"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v4, "miequipo"

    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    return-object v2
.end method

.method private subscribe(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 5
    .parameter "channel"

    .prologue
    .line 94
    iget-object v2, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EURO_TWEETS_2012"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {v2, p1, v3}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    return-object v2
.end method

.method private subscribeAll()Lcom/phonegap/api/PluginResult;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "EURO_TWEETS_2012"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 108
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lartiic/euroTweets2012/utils/Constantes;->CHANNELS:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 113
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    return-object v3

    .line 108
    :cond_0
    aget-object v0, v4, v3

    .line 109
    .local v0, channel:Ljava/lang/String;
    iget-object v6, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lartiic/euroTweets2012/GolesEnVivoActivity;

    invoke-static {v6, v0, v7}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 110
    const/4 v6, 0x1

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private unsubscribe(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 5
    .parameter "channel"

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-object v2, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "EURO_TWEETS_2012"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    return-object v2
.end method

.method private unsubscribeAll()Lcom/phonegap/api/PluginResult;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v4, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "EURO_TWEETS_2012"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 129
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 132
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lartiic/euroTweets2012/utils/Constantes;->CHANNELS:[Ljava/lang/String;

    array-length v5, v4

    :goto_0
    if-lt v3, v5, :cond_0

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    return-object v3

    .line 132
    :cond_0
    aget-object v0, v4, v3

    .line 133
    .local v0, channel:Ljava/lang/String;
    iget-object v6, p0, Lartiic/plugins/ArtiicPlugin;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/parse/PushService;->unsubscribe(Landroid/content/Context;Ljava/lang/String;)V

    .line 134
    const/4 v6, 0x1

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "callbackId"

    .prologue
    .line 27
    const-string v1, "ArtiicPlugin"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-direct {p0, p2}, Lartiic/plugins/ArtiicPlugin;->getNotification(Lorg/json/JSONArray;)Lcom/phonegap/api/PluginResult;

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "getIdioma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-direct {p0}, Lartiic/plugins/ArtiicPlugin;->getIdioma()Lcom/phonegap/api/PluginResult;

    move-result-object v1

    goto :goto_0

    .line 35
    :cond_1
    const-string v1, "suscript"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lartiic/plugins/ArtiicPlugin;->subscribe(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 44
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v1, "suscriptAll"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    invoke-direct {p0}, Lartiic/plugins/ArtiicPlugin;->subscribeAll()Lcom/phonegap/api/PluginResult;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_3
    const-string v1, "unsuscript"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lartiic/plugins/ArtiicPlugin;->unsubscribe(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    .line 51
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 52
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 57
    .end local v0           #e:Lorg/json/JSONException;
    :cond_4
    const-string v1, "unsuscriptAll"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    invoke-direct {p0}, Lartiic/plugins/ArtiicPlugin;->unsubscribeAll()Lcom/phonegap/api/PluginResult;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_5
    const-string v1, "setMyTeam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 62
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lartiic/plugins/ArtiicPlugin;->setMiEquipo(Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_2
    move-exception v0

    .line 65
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 66
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0

    .line 68
    .end local v0           #e:Lorg/json/JSONException;
    :cond_6
    const-string v1, "getMyTeam"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 69
    invoke-direct {p0}, Lartiic/plugins/ArtiicPlugin;->getMiEquipo()Lcom/phonegap/api/PluginResult;

    move-result-object v1

    goto/16 :goto_0

    .line 73
    :cond_7
    new-instance v1, Lcom/phonegap/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lartiic/plugins/ArtiicPlugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;

    move-result-object v0

    return-object v0
.end method
