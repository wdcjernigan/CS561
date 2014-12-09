.class public Lcom/phonegap/App;
.super Lcom/phonegap/api/Plugin;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "className"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v0, p1, p2}, Lcom/phonegap/api/PhonegapActivity;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public cancelLoadUrl()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    check-cast v0, Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->cancelLoadUrl()V

    .line 117
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    check-cast v0, Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->clearCache()V

    .line 64
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    check-cast v0, Lcom/phonegap/DroidGap;

    invoke-virtual {v0}, Lcom/phonegap/DroidGap;->clearHistory()V

    .line 124
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 5
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 30
    sget-object v2, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 31
    .local v2, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v1, ""

    .line 34
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v3, "clearCache"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/phonegap/App;->clearCache()V

    .line 49
    :cond_0
    :goto_0
    new-instance v3, Lcom/phonegap/api/PluginResult;

    invoke-direct {v3, v2, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 51
    :goto_1
    return-object v3

    .line 37
    :cond_1
    const-string v3, "loadUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 38
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/phonegap/App;->loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 40
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v3, "cancelLoadUrl"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    invoke-virtual {p0}, Lcom/phonegap/App;->cancelLoadUrl()V

    goto :goto_0

    .line 43
    :cond_3
    const-string v3, "clearHistory"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/phonegap/App;->clearHistory()V

    goto :goto_0

    .line 46
    :cond_4
    const-string v3, "addService"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/phonegap/App;->addService(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "url"
    .parameter "props"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App.loadUrl("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x0

    .line 78
    .local v4, wait:I
    if-eqz p2, :cond_4

    .line 79
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 80
    .local v2, keys:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 81
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, key:Ljava/lang/String;
    const-string v5, "wait"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 80
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v5}, Lcom/phonegap/api/PhonegapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 93
    .restart local v3       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    iget-object v5, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v5}, Lcom/phonegap/api/PhonegapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 96
    .restart local v3       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    iget-object v5, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v5}, Lcom/phonegap/api/PhonegapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    check-cast v3, Ljava/lang/Integer;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 104
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Lorg/json/JSONArray;
    :cond_4
    if-lez v4, :cond_5

    .line 105
    iget-object v5, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    check-cast v5, Lcom/phonegap/DroidGap;

    invoke-virtual {v5, p1, v4}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 110
    :goto_2
    return-void

    .line 108
    :cond_5
    iget-object v5, p0, Lcom/phonegap/App;->ctx:Lcom/phonegap/api/PhonegapActivity;

    check-cast v5, Lcom/phonegap/DroidGap;

    invoke-virtual {v5, p1}, Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;)V

    goto :goto_2
.end method
