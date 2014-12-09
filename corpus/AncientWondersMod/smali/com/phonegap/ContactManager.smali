.class public Lcom/phonegap/ContactManager;
.super Lcom/phonegap/api/Plugin;
.source "ContactManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Contact Query"

.field private static contactAccessor:Lcom/phonegap/ContactAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 37
    sget-object v5, Lcom/phonegap/ContactManager;->contactAccessor:Lcom/phonegap/ContactAccessor;

    if-nez v5, :cond_0

    .line 38
    iget-object v5, p0, Lcom/phonegap/ContactManager;->webView:Landroid/webkit/WebView;

    iget-object v6, p0, Lcom/phonegap/ContactManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-static {v5, v6}, Lcom/phonegap/ContactAccessor;->getInstance(Landroid/webkit/WebView;Landroid/app/Activity;)Lcom/phonegap/ContactAccessor;

    move-result-object v5

    sput-object v5, Lcom/phonegap/ContactManager;->contactAccessor:Lcom/phonegap/ContactAccessor;

    .line 40
    :cond_0
    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 41
    .local v4, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v3, ""

    .line 44
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-string v5, "search"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 45
    sget-object v5, Lcom/phonegap/ContactManager;->contactAccessor:Lcom/phonegap/ContactAccessor;

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/phonegap/ContactAccessor;->search(Lorg/json/JSONArray;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    .line 46
    .local v2, res:Lorg/json/JSONArray;
    new-instance v5, Lcom/phonegap/api/PluginResult;

    const-string v6, "navigator.service.contacts.cast"

    invoke-direct {v5, v4, v2, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 64
    .end local v2           #res:Lorg/json/JSONArray;
    :goto_0
    return-object v5

    .line 48
    :cond_1
    const-string v5, "save"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/ContactManager;->contactAccessor:Lcom/phonegap/ContactAccessor;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/phonegap/ContactAccessor;->save(Lorg/json/JSONObject;)Z

    move-result v6

    invoke-direct {v5, v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "Contact Query"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 51
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v5, "remove"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 52
    sget-object v5, Lcom/phonegap/ContactManager;->contactAccessor:Lcom/phonegap/ContactAccessor;

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/phonegap/ContactAccessor;->remove(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 53
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .local v1, r:Lorg/json/JSONObject;
    const-string v5, "code"

    const/4 v6, 0x2

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    new-instance v5, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v5, v6, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 61
    .end local v1           #r:Lorg/json/JSONObject;
    :cond_4
    new-instance v5, Lcom/phonegap/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
