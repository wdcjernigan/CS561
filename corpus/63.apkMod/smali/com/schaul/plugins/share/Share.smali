.class public Lcom/schaul/plugins/share/Share;
.super Lorg/apache/cordova/api/Plugin;
.source "Share.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/schaul/plugins/share/Share$ImageGetter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method

.method private doSendIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "subject"
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    const-string v3, "mailto:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 46
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v0, Lcom/schaul/plugins/share/Share$ImageGetter;

    invoke-direct {v0, p0, v4}, Lcom/schaul/plugins/share/Share$ImageGetter;-><init>(Lcom/schaul/plugins/share/Share;Lcom/schaul/plugins/share/Share$ImageGetter;)V

    .line 49
    .local v0, ig:Lcom/schaul/plugins/share/Share$ImageGetter;
    const-string v2, "android.intent.extra.TEXT"

    .line 50
    invoke-static {p2, v0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 68
    iget-object v2, p0, Lcom/schaul/plugins/share/Share;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v1, v3}, Lorg/apache/cordova/api/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/api/IPlugin;Landroid/content/Intent;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 4
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 33
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    .local v1, jo:Lorg/json/JSONObject;
    const-string v2, "subject"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/schaul/plugins/share/Share;->doSendIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v1           #jo:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method
