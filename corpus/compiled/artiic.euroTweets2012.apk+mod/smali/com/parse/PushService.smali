.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# static fields
.field private static final CHANNEL_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field static consecutiveFailures:I

.field private static defaultPushPort:I

.field private static delaySeconds:I

.field static lastTime:Ljava/lang/String;

.field static persistentCallbacks:Lorg/json/JSONObject;

.field private static pushServer:Ljava/lang/String;

.field static sleepSemaphore:Ljava/util/concurrent/Semaphore;

.field static socket:Ljava/net/Socket;

.field static transientCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/PushCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private destroyed:Z

.field private keepAliveTimer:Ljava/util/Timer;

.field private pushPort:I

.field private task:Lcom/parse/os/ParseAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/os/ParseAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "^$|^[a-zA-Z][A-Za-z0-9_-]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/PushService;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "push.parse.com"

    sput-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 81
    const/16 v0, 0x203d

    sput v0, Lcom/parse/PushService;->defaultPushPort:I

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/PushService;->destroyed:Z

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 134
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/parse/PushService;->handlePushData(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parse/PushService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/parse/PushService;->sendKeepAlive()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    return v0
.end method

.method static synthetic access$400(Lcom/parse/PushService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/parse/PushService;->destroyed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parse/PushService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/parse/PushService;->increaseDelay()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/PushService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/parse/PushService;->pushPort:I

    return v0
.end method

.method static synthetic access$800(Lcom/parse/PushService;Ljava/io/BufferedReader;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/parse/PushService;->saveLastTime(Landroid/content/Context;)V

    return-void
.end method

.method static addPersistentPushCallback(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)V
    .locals 8
    .parameter "context"
    .parameter "channel"
    .parameter "localData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/PushCallback;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p3, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/parse/PushCallback;>;"
    const-class v5, Lcom/parse/PushService;

    monitor-enter v5

    .line 251
    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, callbackName:Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .local v0, callbackData:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "data"

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v4, "name"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, callbackDataCopy:Lorg/json/JSONObject;
    sget-object v4, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :try_start_2
    invoke-static {p0}, Lcom/parse/PushService;->savePersistentCallbacks(Landroid/content/Context;)V

    .line 265
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    invoke-static {p0}, Lcom/parse/PushService;->callbacksChanged(Landroid/content/Context;)V

    .line 268
    .end local v1           #callbackDataCopy:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, e:Lorg/json/JSONException;
    :try_start_3
    const-string v4, "com.parse.PushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "json exception subscribing to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    monitor-exit v5

    goto :goto_0

    .line 265
    .end local v0           #callbackData:Lorg/json/JSONObject;
    .end local v2           #callbackName:Ljava/lang/String;
    .end local v3           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method static addTransientPushCallback(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 2
    .parameter "context"
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 235
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 236
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    .line 239
    :cond_0
    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-static {p0}, Lcom/parse/PushService;->callbacksChanged(Landroid/content/Context;)V

    .line 242
    return-void

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static callbacksChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 161
    move-object v0, p0

    .line 162
    .local v0, finalContext:Landroid/content/Context;
    new-instance v1, Lcom/parse/PushService$1;

    invoke-direct {v1, v0}, Lcom/parse/PushService$1;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, job:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 170
    return-void
.end method

.method private static declared-synchronized getApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 521
    const-class v5, Lcom/parse/PushService;

    monitor-enter v5

    :try_start_0
    const-string v4, "oauth"

    invoke-static {p0, v4}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 522
    .local v3, oauth:Lorg/json/JSONObject;
    if-nez v3, :cond_0

    .line 523
    new-instance v3, Lorg/json/JSONObject;

    .end local v3           #oauth:Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 525
    .restart local v3       #oauth:Lorg/json/JSONObject;
    :cond_0
    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, cached:Ljava/lang/String;
    const-string v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_1

    .line 536
    .end local v1           #cached:Ljava/lang/String;
    :goto_0
    monitor-exit v5

    return-object v1

    .line 529
    .restart local v1       #cached:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/parse/ParseObject;->getApplicationId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 531
    .local v0, applicationId:Ljava/lang/String;
    :try_start_2
    const-string v4, "key"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 535
    :goto_1
    :try_start_3
    const-string v4, "oauth"

    invoke-static {p0, v4, v3}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    move-object v1, v0

    .line 536
    goto :goto_0

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, e:Lorg/json/JSONException;
    const-string v4, "com.parse.PushService"

    const-string v6, "JSONException in getApplicationId()"

    invoke-static {v4, v6, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 521
    .end local v0           #applicationId:Ljava/lang/String;
    .end local v1           #cached:Ljava/lang/String;
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #oauth:Lorg/json/JSONObject;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    const-class v3, Lcom/parse/PushService;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 422
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 423
    .local v0, answer:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 424
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    .end local v0           #answer:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 427
    .restart local v0       #answer:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2
.end method

.method private handlePushData(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 13
    .parameter "channel"
    .parameter "pushData"

    .prologue
    .line 435
    const/4 v2, 0x0

    .line 436
    .local v2, callback:Lcom/parse/PushCallback;
    const-class v10, Lcom/parse/PushService;

    monitor-enter v10

    .line 437
    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 438
    sget-object v9, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 439
    .local v3, callbackData:Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 441
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 443
    .local v4, callbackName:Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 450
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/parse/PushCallback;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 459
    :try_start_3
    const-string v9, "data"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 460
    .local v6, localData:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 461
    .local v7, localDataCopy:Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 463
    :try_start_4
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v7           #localDataCopy:Lorg/json/JSONObject;
    .local v8, localDataCopy:Lorg/json/JSONObject;
    move-object v7, v8

    .line 467
    .end local v8           #localDataCopy:Lorg/json/JSONObject;
    .restart local v7       #localDataCopy:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 468
    :try_start_5
    new-instance v7, Lorg/json/JSONObject;

    .end local v7           #localDataCopy:Lorg/json/JSONObject;
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 470
    .restart local v7       #localDataCopy:Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v2, v7}, Lcom/parse/PushCallback;->setLocalData(Lorg/json/JSONObject;)V

    .line 474
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #callbackName:Ljava/lang/String;
    .end local v6           #localData:Lorg/json/JSONObject;
    .end local v7           #localDataCopy:Lorg/json/JSONObject;
    :cond_2
    if-nez v2, :cond_3

    sget-object v9, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    if-eqz v9, :cond_3

    .line 475
    sget-object v9, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/parse/PushCallback;

    move-object v2, v0

    .line 478
    :cond_3
    if-nez v2, :cond_4

    .line 479
    const-string v9, "com.parse.PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring push on channel "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    monitor-exit v10

    .line 490
    :goto_1
    return-void

    .line 444
    .restart local v4       #callbackName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 445
    .local v5, e:Ljava/lang/ClassNotFoundException;
    const-string v9, "com.parse.PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "class not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    monitor-exit v10

    goto :goto_1

    .line 482
    .end local v3           #callbackData:Lorg/json/JSONObject;
    .end local v4           #callbackName:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v9

    .line 451
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v3       #callbackData:Lorg/json/JSONObject;
    .restart local v4       #callbackName:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 452
    .local v5, e:Ljava/lang/IllegalAccessException;
    :try_start_6
    const-string v9, "com.parse.PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal access to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    monitor-exit v10

    goto :goto_1

    .line 454
    .end local v5           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v5

    .line 455
    .local v5, e:Ljava/lang/InstantiationException;
    const-string v9, "com.parse.PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "could not instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v5}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    monitor-exit v10

    goto :goto_1

    .line 482
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #callbackName:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/InstantiationException;
    :cond_4
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 485
    const-string v9, "com.parse.PushService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received push on channel "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v2, p0}, Lcom/parse/PushCallback;->setService(Landroid/app/Service;)V

    .line 487
    invoke-virtual {v2, p2}, Lcom/parse/PushCallback;->setPushData(Lorg/json/JSONObject;)V

    .line 488
    invoke-virtual {v2, p1}, Lcom/parse/PushCallback;->setChannel(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2}, Lcom/parse/PushCallback;->run()V

    goto :goto_1

    .line 464
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #callbackName:Ljava/lang/String;
    .restart local v6       #localData:Lorg/json/JSONObject;
    .restart local v7       #localDataCopy:Lorg/json/JSONObject;
    :catch_3
    move-exception v9

    goto/16 :goto_0
.end method

.method private increaseDelay()V
    .locals 2

    .prologue
    .line 541
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 542
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 543
    const/4 v0, 0x1

    sget v1, Lcom/parse/PushService;->delaySeconds:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 544
    sget v0, Lcom/parse/PushService;->delaySeconds:I

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 545
    return-void
.end method

.method private static declared-synchronized loadLastTime(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 193
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 194
    const-string v1, "pushState"

    invoke-static {p0, v1}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    .local v0, lastTimeObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 196
    const-string v1, "lastTime"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/parse/PushService;->lastTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0           #lastTimeObject:Lorg/json/JSONObject;
    :cond_0
    monitor-exit v2

    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static declared-synchronized loadPersistentCallbacks(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 174
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 175
    const-string v0, "persistentCallbacks"

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    .line 176
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    :cond_0
    monitor-exit v1

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readInBackground(Ljava/io/BufferedReader;)V
    .locals 3
    .parameter "initialReader"

    .prologue
    .line 669
    move-object v0, p0

    .line 670
    .local v0, finalService:Landroid/app/Service;
    iget-boolean v1, p0, Lcom/parse/PushService;->destroyed:Z

    if-eqz v1, :cond_0

    .line 811
    :goto_0
    return-void

    .line 673
    :cond_0
    new-instance v1, Lcom/parse/PushService$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/PushService$3;-><init>(Lcom/parse/PushService;Ljava/io/BufferedReader;Landroid/app/Service;)V

    iput-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    .line 810
    iget-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/parse/os/ParseAsyncTask;->execute([Ljava/lang/Object;)Lcom/parse/os/ParseAsyncTask;

    goto :goto_0
.end method

.method static resetDelay()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 515
    sput v0, Lcom/parse/PushService;->delaySeconds:I

    .line 516
    sput v0, Lcom/parse/PushService;->consecutiveFailures:I

    .line 517
    return-void
.end method

.method private static declared-synchronized saveLastTime(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 206
    const-class v3, Lcom/parse/PushService;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/parse/PushService;->lastTime:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 208
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v1, lastTimeObject:Lorg/json/JSONObject;
    const-string v2, "lastTime"

    sget-object v4, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v2, "pushState"

    invoke-static {p0, v2, v1}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .end local v1           #lastTimeObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Lorg/json/JSONException;
    :try_start_2
    const-string v2, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "json exception saving last time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 206
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized savePersistentCallbacks(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 183
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "persistentCallbacks"

    sget-object v2, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-static {p0, v0, v2}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit v1

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendKeepAlive()V
    .locals 5

    .prologue
    .line 638
    sget-object v2, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    if-nez v2, :cond_0

    .line 653
    :goto_0
    return-void

    .line 642
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 644
    .local v1, writer:Ljava/io/BufferedWriter;
    const-string v2, "{}\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 646
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 647
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "com.parse.PushService"

    const-string v3, "unsupported encoding in keepalive"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 649
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 650
    .local v0, e:Ljava/io/IOException;
    const-string v2, "com.parse.PushService"

    const-string v3, "could not construct writer in keepalive"

    invoke-static {v2, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static sendSubscriptionInformation(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 573
    sget-object v10, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    if-nez v10, :cond_0

    .line 631
    :goto_0
    return v9

    .line 578
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 579
    .local v1, channelSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-class v10, Lcom/parse/PushService;

    monitor-enter v10

    .line 580
    :try_start_0
    sget-object v11, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    if-eqz v11, :cond_1

    .line 581
    sget-object v11, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    .local v0, channel:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 591
    .end local v0           #channel:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 585
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 586
    sget-object v11, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 587
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 588
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 589
    .restart local v0       #channel:Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 591
    .end local v0           #channel:Ljava/lang/String;
    :cond_2
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 594
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 595
    .local v2, channels:Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .restart local v0       #channel:Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 600
    .end local v0           #channel:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/parse/PushService;->loadLastTime(Landroid/content/Context;)V

    .line 602
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 604
    .local v7, subscription:Lorg/json/JSONObject;
    :try_start_2
    const-string v10, "installation_id"

    invoke-static {p0}, Lcom/parse/Parse;->getInstallationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 605
    const-string v10, "oauth_key"

    invoke-static {p0}, Lcom/parse/PushService;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    const-string v10, "subscribe"

    invoke-virtual {v7, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 607
    const-string v10, "v"

    const-string v11, "a1.0.17"

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 608
    sget-object v10, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    if-nez v10, :cond_4

    .line 609
    const-string v10, "last"

    sget-object v11, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    :goto_4
    :try_start_3
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    sget-object v11, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v11, 0x2000

    invoke-direct {v8, v10, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 620
    .local v8, writer:Ljava/io/BufferedWriter;
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 621
    .local v6, message:Ljava/lang/String;
    const-string v10, "com.parse.PushService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "subscribing with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @ "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->getPort()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 631
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 611
    .end local v6           #message:Ljava/lang/String;
    .end local v8           #writer:Ljava/io/BufferedWriter;
    :cond_4
    :try_start_4
    const-string v10, "last"

    sget-object v11, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 613
    :catch_0
    move-exception v3

    .line 614
    .local v3, e:Lorg/json/JSONException;
    const-string v10, "com.parse.PushService"

    const-string v11, "unexpected JSONException"

    invoke-static {v10, v11, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 624
    .end local v3           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 625
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "com.parse.PushService"

    const-string v11, "unsupported encoding"

    invoke-static {v10, v11, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 627
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v3

    .line 628
    .local v3, e:Ljava/io/IOException;
    const-string v10, "com.parse.PushService"

    const-string v11, "could not construct writer"

    invoke-static {v10, v11, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method static sleep(I)V
    .locals 3
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x64

    .line 493
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 494
    .local v0, semaphore:Ljava/util/concurrent/Semaphore;
    if-nez v0, :cond_0

    .line 495
    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 504
    :goto_0
    return-void

    .line 498
    :cond_0
    :goto_1
    if-le p0, v1, :cond_1

    .line 499
    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    .line 500
    add-int/lit8 p0, p0, -0x64

    goto :goto_1

    .line 502
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->acquire(I)V

    goto :goto_0
.end method

.method private static startService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 138
    const-string v1, "com.parse.PushService"

    const-string v2, "ensuring push service is started"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parse/PushService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 141
    .local v0, name:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 142
    const-string v1, "com.parse.PushService"

    const-string v2, "Could not start the push service. Make sure that the XML tag <service android:name=\"com.parse.PushService\" /> is in your AndroidManifest.xml as a child of the <application> element."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method static declared-synchronized startServiceIfRequired(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 150
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 151
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->startService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_1
    monitor-exit v1

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 7
    .parameter "context"
    .parameter "channel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 296
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, p2, v4}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 302
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 14
    .parameter "context"
    .parameter "channel"
    .parameter
    .parameter "icon"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-nez p1, :cond_0

    .line 337
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "invalid channel: you cannot subscribe to null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 338
    :cond_0
    sget-object v11, Lcom/parse/PushService;->CHANNEL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_1

    .line 339
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid channel name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 343
    :cond_1
    invoke-static {p0}, Lcom/parse/PushService;->getApplicationId(Landroid/content/Context;)Ljava/lang/String;

    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 347
    .local v9, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 350
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v10, v9, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 357
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v7, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 359
    .local v3, appChars:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 360
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, appName:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, p2

    invoke-direct {v5, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 368
    .local v5, componentName:Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, activityClass:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, activityPackage:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 374
    .local v8, localData:Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "icon"

    move/from16 v0, p3

    invoke-virtual {v8, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string v11, "appName"

    invoke-virtual {v8, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    const-string v11, "activityClass"

    invoke-virtual {v8, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    const-string v11, "activityPackage"

    invoke-virtual {v8, v11, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    const-class v11, Lcom/parse/StandardPushCallback;

    invoke-static {p0, p1, v8, v11}, Lcom/parse/PushService;->addPersistentPushCallback(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Class;)V

    .line 384
    .end local v1           #activityClass:Ljava/lang/String;
    .end local v2           #activityPackage:Ljava/lang/String;
    .end local v3           #appChars:Ljava/lang/CharSequence;
    .end local v4           #appName:Ljava/lang/String;
    .end local v5           #componentName:Landroid/content/ComponentName;
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    .end local v8           #localData:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 351
    :catch_0
    move-exception v6

    .line 352
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "com.parse.PushService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "missing package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 362
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appChars:Ljava/lang/CharSequence;
    .restart local v7       #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #appName:Ljava/lang/String;
    goto :goto_0

    .line 378
    .restart local v1       #activityClass:Ljava/lang/String;
    .restart local v2       #activityPackage:Ljava/lang/String;
    .restart local v5       #componentName:Landroid/content/ComponentName;
    .restart local v8       #localData:Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 380
    .local v6, e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "channel"

    .prologue
    .line 397
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->loadPersistentCallbacks(Landroid/content/Context;)V

    .line 401
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 402
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    sget-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    invoke-static {p0}, Lcom/parse/PushService;->savePersistentCallbacks(Landroid/content/Context;)V

    .line 407
    :cond_1
    invoke-static {p0}, Lcom/parse/PushService;->callbacksChanged(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit v1

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static usePort(I)V
    .locals 0
    .parameter "newPort"

    .prologue
    .line 511
    sput p0, Lcom/parse/PushService;->defaultPushPort:I

    .line 512
    return-void
.end method

.method static useServer(Ljava/lang/String;)V
    .locals 0
    .parameter "newServer"

    .prologue
    .line 507
    sput-object p0, Lcom/parse/PushService;->pushServer:Ljava/lang/String;

    .line 508
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 552
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 553
    const-string v0, "com.parse.PushService"

    const-string v1, "creating push service"

    invoke-static {v0, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget v0, Lcom/parse/PushService;->defaultPushPort:I

    iput v0, p0, Lcom/parse/PushService;->pushPort:I

    .line 555
    new-instance v0, Ljava/util/Timer;

    const-string v1, "com.parse.PushService.keepAliveTimer"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    .line 556
    const-wide/32 v2, 0x124f80

    .line 557
    .local v2, msKeepAlive:J
    iget-object v0, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    new-instance v1, Lcom/parse/PushService$2;

    invoke-direct {v1, p0}, Lcom/parse/PushService$2;-><init>(Lcom/parse/PushService;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 563
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V

    .line 565
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V

    .line 566
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 832
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 833
    const-string v1, "com.parse.PushService"

    const-string v2, "destroying push service"

    invoke-static {v1, v2}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/parse/PushService;->task:Lcom/parse/os/ParseAsyncTask;

    invoke-virtual {v1, v3}, Lcom/parse/os/ParseAsyncTask;->cancel(Z)Z

    .line 835
    iget-object v1, p0, Lcom/parse/PushService;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 840
    monitor-enter p0

    .line 841
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/parse/PushService;->destroyed:Z

    .line 842
    sget-object v0, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 843
    .local v0, oldSocket:Ljava/net/Socket;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 844
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    if-eqz v0, :cond_0

    .line 847
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 844
    .end local v0           #oldSocket:Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 848
    .restart local v0       #oldSocket:Ljava/net/Socket;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
