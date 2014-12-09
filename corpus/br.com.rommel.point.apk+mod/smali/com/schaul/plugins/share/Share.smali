.class public Lcom/schaul/plugins/share/Share;
.super Lcom/phonegap/api/Plugin;
.source "Share.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    return-void
.end method

.method private doSendIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "subject"
    .parameter "text"

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v1, p0, Lcom/schaul/plugins/share/Share;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v0}, Lcom/phonegap/api/PhonegapActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 24
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    .local v1, jo:Lorg/json/JSONObject;
    const-string v2, "subject"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/schaul/plugins/share/Share;->doSendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1           #jo:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0
.end method
