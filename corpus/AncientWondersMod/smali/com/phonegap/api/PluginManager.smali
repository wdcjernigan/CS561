.class public final Lcom/phonegap/api/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# instance fields
.field private final app:Landroid/webkit/WebView;

.field private final ctx:Lcom/phonegap/api/PhonegapActivity;

.field private plugins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/phonegap/api/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .parameter "app"
    .parameter "ctx"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    .line 39
    iput-object p2, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 40
    iput-object p1, p0, Lcom/phonegap/api/PluginManager;->app:Landroid/webkit/WebView;

    .line 41
    return-void
.end method

.method private addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;
    .locals 5
    .parameter "className"
    .parameter "clazz"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/phonegap/api/PluginManager;->getPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 195
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phonegap/api/Plugin;

    .line 196
    .local v1, plugin:Lcom/phonegap/api/Plugin;
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 198
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->app:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/phonegap/api/Plugin;->setView(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    .end local v1           #plugin:Lcom/phonegap/api/Plugin;
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "clazz"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;
    .locals 2
    .parameter "className"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/api/Plugin;

    .line 216
    .local v0, plugin:Lcom/phonegap/api/Plugin;
    return-object v0
.end method

.method private isPhoneGapPlugin(Ljava/lang/Class;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 157
    if-eqz p1, :cond_1

    .line 158
    const-class v1, Lcom/phonegap/api/Plugin;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/phonegap/api/IPlugin;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 160
    :cond_1
    return v0
.end method


# virtual methods
.method public addPlugin(Ljava/lang/String;)Lcom/phonegap/api/Plugin;
    .locals 4
    .parameter "className"

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0, p1}, Lcom/phonegap/api/PluginManager;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/phonegap/api/PluginManager;->addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 177
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 175
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error adding plugin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "className"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    return-void
.end method

.method public exec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 15
    .parameter "service"
    .parameter "action"
    .parameter "callbackId"
    .parameter "jsonArgs"
    .parameter "async"

    .prologue
    .line 67
    const/4 v11, 0x0

    .line 68
    .local v11, cr:Lcom/phonegap/api/PluginResult;
    move/from16 v13, p5

    .line 70
    .local v13, runAsync:Z
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 71
    .local v6, args:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->services:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 72
    .local v10, clazz:Ljava/lang/String;
    const/4 v9, 0x0

    .line 73
    .local v9, c:Ljava/lang/Class;
    if-eqz v10, :cond_0

    .line 74
    invoke-direct {p0, v10}, Lcom/phonegap/api/PluginManager;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 76
    :cond_0
    invoke-direct {p0, v9}, Lcom/phonegap/api/PluginManager;->isPhoneGapPlugin(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    invoke-direct {p0, v10, v9}, Lcom/phonegap/api/PluginManager;->addPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/phonegap/api/Plugin;

    move-result-object v4

    .line 78
    .local v4, plugin:Lcom/phonegap/api/Plugin;
    iget-object v8, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    .line 79
    .local v8, ctx:Lcom/phonegap/api/PhonegapActivity;
    if-eqz p5, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/phonegap/api/Plugin;->isSynch(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v13, 0x1

    .line 80
    :goto_0
    if-eqz v13, :cond_2

    .line 82
    new-instance v14, Ljava/lang/Thread;

    new-instance v2, Lcom/phonegap/api/PluginManager$1;

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/phonegap/api/PluginManager$1;-><init>(Lcom/phonegap/api/PluginManager;Lcom/phonegap/api/Plugin;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lcom/phonegap/api/PhonegapActivity;)V

    invoke-direct {v14, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    .local v14, thread:Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    .line 109
    const-string v2, ""

    .line 133
    .end local v4           #plugin:Lcom/phonegap/api/Plugin;
    .end local v6           #args:Lorg/json/JSONArray;
    .end local v8           #ctx:Lcom/phonegap/api/PhonegapActivity;
    .end local v9           #c:Ljava/lang/Class;
    .end local v10           #clazz:Ljava/lang/String;
    .end local v14           #thread:Ljava/lang/Thread;
    :goto_1
    return-object v2

    .line 79
    .restart local v4       #plugin:Lcom/phonegap/api/Plugin;
    .restart local v6       #args:Lorg/json/JSONArray;
    .restart local v8       #ctx:Lcom/phonegap/api/PhonegapActivity;
    .restart local v9       #c:Ljava/lang/Class;
    .restart local v10       #clazz:Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 112
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v6, v1}, Lcom/phonegap/api/Plugin;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;

    move-result-object v11

    .line 115
    invoke-virtual {v11}, Lcom/phonegap/api/PluginResult;->getStatus()I

    move-result v2

    sget-object v3, Lcom/phonegap/api/PluginResult$Status;->NO_RESULT:Lcom/phonegap/api/PluginResult$Status;

    invoke-virtual {v3}, Lcom/phonegap/api/PluginResult$Status;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v11}, Lcom/phonegap/api/PluginResult;->getKeepCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 120
    .end local v4           #plugin:Lcom/phonegap/api/Plugin;
    .end local v6           #args:Lorg/json/JSONArray;
    .end local v8           #ctx:Lcom/phonegap/api/PhonegapActivity;
    .end local v9           #c:Ljava/lang/Class;
    .end local v10           #clazz:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 121
    .local v12, e:Ljava/lang/ClassNotFoundException;
    new-instance v11, Lcom/phonegap/api/PluginResult;

    .end local v11           #cr:Lcom/phonegap/api/PluginResult;
    sget-object v2, Lcom/phonegap/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v11, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 127
    .end local v12           #e:Ljava/lang/ClassNotFoundException;
    .restart local v11       #cr:Lcom/phonegap/api/PluginResult;
    :cond_3
    :goto_2
    if-eqz v13, :cond_5

    .line 128
    if-nez v11, :cond_4

    .line 129
    new-instance v11, Lcom/phonegap/api/PluginResult;

    .end local v11           #cr:Lcom/phonegap/api/PluginResult;
    sget-object v2, Lcom/phonegap/api/PluginResult$Status;->CLASS_NOT_FOUND_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v11, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 131
    .restart local v11       #cr:Lcom/phonegap/api/PluginResult;
    :cond_4
    iget-object v2, p0, Lcom/phonegap/api/PluginManager;->ctx:Lcom/phonegap/api/PhonegapActivity;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/phonegap/api/PluginResult;->toErrorCallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phonegap/api/PhonegapActivity;->sendJavascript(Ljava/lang/String;)V

    .line 133
    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/phonegap/api/PluginResult;->getJSONString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 122
    :catch_1
    move-exception v12

    .line 123
    .local v12, e:Lorg/json/JSONException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    new-instance v11, Lcom/phonegap/api/PluginResult;

    .end local v11           #cr:Lcom/phonegap/api/PluginResult;
    sget-object v2, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v11, v2}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .restart local v11       #cr:Lcom/phonegap/api/PluginResult;
    goto :goto_2

    .line 133
    .end local v12           #e:Lorg/json/JSONException;
    :cond_6
    const-string v2, "{ status: 0, message: \'all good\' }"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 260
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 261
    .local v3, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 265
    .local v2, plugin:Lcom/phonegap/api/Plugin;
    invoke-virtual {v2}, Lcom/phonegap/api/Plugin;->onDestroy()V

    goto :goto_0

    .line 267
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2           #plugin:Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 234
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 235
    .local v3, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 236
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 238
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 239
    .local v2, plugin:Lcom/phonegap/api/Plugin;
    invoke-virtual {v2}, Lcom/phonegap/api/Plugin;->onPause()V

    goto :goto_0

    .line 241
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2           #plugin:Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 247
    iget-object v4, p0, Lcom/phonegap/api/PluginManager;->plugins:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 248
    .local v3, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 249
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/phonegap/api/Plugin;

    .line 252
    .local v2, plugin:Lcom/phonegap/api/Plugin;
    invoke-virtual {v2}, Lcom/phonegap/api/Plugin;->onResume()V

    goto :goto_0

    .line 254
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/api/Plugin;>;"
    .end local v2           #plugin:Lcom/phonegap/api/Plugin;
    :cond_0
    return-void
.end method
