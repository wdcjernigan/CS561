.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$7;,
        Lcom/parse/ParseQuery$CommandDelegate;,
        Lcom/parse/ParseQuery$CachePolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseQuery"


# instance fields
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private className:Ljava/lang/String;

.field private currentCommand:Lcom/parse/ParseCommand;

.field private currentTask:Lcom/parse/BackgroundTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/BackgroundTask",
            "<*>;"
        }
    .end annotation
.end field

.field private include:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Ljava/lang/Boolean;

.field private limit:I

.field private maxCacheAge:J

.field private objectsParsed:J

.field private order:Ljava/lang/String;

.field private queryReceived:J

.field private querySent:J

.field private queryStart:J

.field private skip:I

.field private trace:Z

.field private where:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "theClassName"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 98
    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 99
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 141
    iput-object p1, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->limit:I

    .line 143
    iput v2, p0, Lcom/parse/ParseQuery;->skip:I

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    .line 146
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 147
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 149
    iput-boolean v2, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseQuery;)I
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/parse/ParseQuery;->countFromNetwork()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/ParseQuery;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/parse/ParseQuery;->countFromCache()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseQuery;Z)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findFromNetwork(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseQuery;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/parse/ParseQuery;->findFromCache()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery;->findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/parse/ParseQuery;Lcom/parse/ParseCommand;)Lcom/parse/ParseCommand;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    return-object p1
.end method

.method private addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "key"
    .parameter "condition"
    .parameter "value"

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 805
    const/4 v2, 0x0

    .line 807
    .local v2, whereValue:Lorg/json/JSONObject;
    invoke-static {p3}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 810
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 811
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 812
    .local v1, existingValue:Ljava/lang/Object;
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 813
    check-cast v2, Lorg/json/JSONObject;

    .line 816
    .end local v1           #existingValue:Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_1

    .line 817
    new-instance v2, Lorg/json/JSONObject;

    .end local v2           #whereValue:Lorg/json/JSONObject;
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 821
    .restart local v2       #whereValue:Lorg/json/JSONObject;
    :cond_1
    :try_start_0
    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    iget-object v3, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 161
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3
    .parameter "grabLock"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    .line 169
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 171
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 750
    invoke-static {}, Lcom/parse/Parse;->clearCacheDir()V

    .line 751
    return-void
.end method

.method private convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    const-string v6, "results"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 294
    .local v4, results:Lorg/json/JSONArray;
    if-nez v4, :cond_2

    .line 295
    const-string v6, "com.parse.ParseQuery"

    const-string v7, "null results in find response"

    invoke-static {v6, v7}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    .line 306
    const-string v6, "trace"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    const-string v6, "trace"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 308
    .local v5, serverTrace:Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query pre-processing took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/parse/ParseQuery;->querySent:J

    iget-wide v9, p0, Lcom/parse/ParseQuery;->queryStart:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " milliseconds\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, fullTrace:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Client side parsing took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/parse/ParseQuery;->objectsParsed:J

    iget-wide v9, p0, Lcom/parse/ParseQuery;->queryReceived:J

    sub-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " millisecond\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    const-string v6, "ParseQuery"

    invoke-static {v6, v1}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .end local v1           #fullTrace:Ljava/lang/String;
    .end local v5           #serverTrace:Ljava/lang/Object;
    :cond_1
    return-object v0

    .line 297
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 298
    iget-object v6, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-static {v6}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v3

    .line 299
    .local v3, object:Lcom/parse/ParseObject;
    invoke-virtual {v3}, Lcom/parse/ParseObject;->clearData()V

    .line 300
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 301
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private countFromCache()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x78

    .line 554
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeCountCommand()Lcom/parse/ParseCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, cacheKey:Ljava/lang/String;
    iget-wide v4, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v0, v4, v5}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, cached:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 557
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "results not cached"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 559
    :cond_0
    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 560
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains the wrong datatype"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, v1

    .line 562
    check-cast v3, Lorg/json/JSONObject;

    .line 564
    .local v3, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "count"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 565
    :catch_0
    move-exception v2

    .line 566
    .local v2, e:Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains corrupted json"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private countFromNetwork()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 672
    iget-object v2, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 674
    .local v0, caching:Z
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeCountCommand()Lcom/parse/ParseCommand;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 675
    iget-object v2, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v2, v0}, Lcom/parse/ParseCommand;->perform(Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 677
    .local v1, result:Lorg/json/JSONObject;
    const-string v2, "count"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 672
    .end local v0           #caching:Z
    .end local v1           #result:Lorg/json/JSONObject;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private countWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)I
    .locals 2
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/parse/ParseQuery$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;)V

    .line 371
    .local v0, callbacks:Lcom/parse/ParseQuery$CommandDelegate;,"Lcom/parse/ParseQuery$CommandDelegate<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicy(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private findFromCache()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x78

    .line 529
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeFindCommand()Lcom/parse/ParseCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, cacheKey:Ljava/lang/String;
    iget-wide v4, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v0, v4, v5}, Lcom/parse/Parse;->jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, cached:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 532
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "results not cached"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 534
    :cond_0
    instance-of v4, v1, Lorg/json/JSONObject;

    if-nez v4, :cond_1

    .line 535
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains the wrong datatype"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_1
    move-object v3, v1

    .line 537
    check-cast v3, Lorg/json/JSONObject;

    .line 539
    .local v3, object:Lorg/json/JSONObject;
    :try_start_0
    invoke-direct {p0, v3}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, e:Lorg/json/JSONException;
    new-instance v4, Lcom/parse/ParseException;

    const-string v5, "the cache contains corrupted json"

    invoke-direct {v4, v6, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private findFromNetwork(Z)Ljava/util/List;
    .locals 6
    .parameter "shouldRetry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeFindCommand()Lcom/parse/ParseCommand;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 467
    if-eqz p1, :cond_0

    .line 468
    iget-object v4, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v4}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 471
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v0, answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    iget-object v4, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    if-nez v4, :cond_1

    .line 482
    .end local v0           #answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    :goto_0
    return-object v0

    .line 477
    .restart local v0       #answer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v4, v5, :cond_2

    const/4 v1, 0x1

    .line 478
    .local v1, caching:Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parse/ParseQuery;->querySent:J

    .line 479
    iget-object v4, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v4, v1}, Lcom/parse/ParseCommand;->perform(Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 480
    .local v3, result:Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parse/ParseQuery;->queryReceived:J

    .line 482
    :try_start_0
    invoke-direct {p0, v3}, Lcom/parse/ParseQuery;->convertFindResponse(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 477
    .end local v1           #caching:Z
    .end local v3           #result:Lorg/json/JSONObject;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 483
    .restart local v1       #caching:Z
    .restart local v3       #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 484
    .local v2, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;
    .locals 2
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/parse/ParseQuery$2;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;)V

    .line 384
    .local v0, callbacks:Lcom/parse/ParseQuery$CommandDelegate;,"Lcom/parse/ParseQuery$CommandDelegate<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseQuery;->runCommandWithPolicy(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private finishedRunning()V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 176
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 179
    monitor-exit v1

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFindParams()Lorg/json/JSONObject;
    .locals 14

    .prologue
    .line 209
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .local v6, params:Lorg/json/JSONObject;
    :try_start_0
    const-string v11, "classname"

    iget-object v12, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 214
    .local v10, whereData:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 215
    .local v4, key:Ljava/lang/String;
    const-string v11, "$or"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 216
    iget-object v11, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 217
    .local v7, queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 218
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseQuery;

    .line 219
    .local v8, query:Lcom/parse/ParseQuery;
    iget v11, v8, Lcom/parse/ParseQuery;->limit:I

    if-ltz v11, :cond_0

    .line 220
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Cannot have limits in sub queries of an \'OR\' query"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    .end local v8           #query:Lcom/parse/ParseQuery;
    .end local v10           #whereData:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 223
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #key:Ljava/lang/String;
    .restart local v7       #queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    .restart local v8       #query:Lcom/parse/ParseQuery;
    .restart local v10       #whereData:Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    iget v11, v8, Lcom/parse/ParseQuery;->skip:I

    if-lez v11, :cond_1

    .line 224
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Cannot have skips in sub queries of an \'OR\' query"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 227
    :cond_1
    iget-object v11, v8, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 228
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Cannot have an order in sub queries of an \'OR\' query"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 231
    :cond_2
    iget-object v11, v8, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 232
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Cannot have an include in sub queries of an \'OR\' query"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 235
    :cond_3
    invoke-direct {v8}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v5

    .line 236
    .local v5, object:Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 237
    const-string v11, "data"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 239
    :cond_4
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 242
    .end local v5           #object:Lorg/json/JSONObject;
    .end local v8           #query:Lcom/parse/ParseQuery;
    :cond_5
    invoke-virtual {v10, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 244
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    :cond_6
    iget-object v11, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/parse/ParseQuery;->maybeEncodeSubQueries(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 245
    .local v9, value:Ljava/lang/Object;
    invoke-static {v9}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 249
    .end local v4           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/Object;
    :cond_7
    const-string v11, "data"

    invoke-virtual {v6, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget v11, p0, Lcom/parse/ParseQuery;->limit:I

    if-ltz v11, :cond_8

    .line 251
    const-string v11, "limit"

    iget v12, p0, Lcom/parse/ParseQuery;->limit:I

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    :cond_8
    iget v11, p0, Lcom/parse/ParseQuery;->skip:I

    if-lez v11, :cond_9

    .line 254
    const-string v11, "skip"

    iget v12, p0, Lcom/parse/ParseQuery;->skip:I

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    :cond_9
    iget-object v11, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 257
    const-string v11, "order"

    iget-object v12, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    :cond_a
    iget-object v11, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    .line 260
    const-string v11, "include"

    iget-object v12, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    const-string v13, ","

    invoke-static {v12, v13}, Lcom/parse/Parse;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_b
    iget-boolean v11, p0, Lcom/parse/ParseQuery;->trace:Z

    if-eqz v11, :cond_c

    .line 263
    const-string v11, "trace"

    const-string v12, "1"

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :cond_c
    return-object v6
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/parse/ParseQuery;

    const-string v1, "_User"

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private makeCountCommand()Lcom/parse/ParseCommand;
    .locals 3

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeFindCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 638
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "limit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 639
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V

    .line 640
    return-object v0
.end method

.method private makeFindCommand()Lcom/parse/ParseCommand;
    .locals 6

    .prologue
    .line 275
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "find"

    invoke-direct {v0, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-direct {p0}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v4

    .line 277
    .local v4, params:Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 279
    .local v3, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 281
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    .end local v2           #key:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 284
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 286
    .end local v1           #e:Lorg/json/JSONException;
    :cond_0
    return-object v0
.end method

.method private maybeEncodeSubQueries(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 183
    instance-of v6, p1, Lorg/json/JSONObject;

    if-nez v6, :cond_0

    .line 205
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object v0, p1

    .line 187
    check-cast v0, Lorg/json/JSONObject;

    .line 188
    .local v0, json:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    .local v2, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 192
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 193
    .local v3, object:Ljava/lang/Object;
    instance-of v6, v3, Lcom/parse/ParseQuery;

    if-eqz v6, :cond_1

    move-object v4, v3

    .line 194
    check-cast v4, Lcom/parse/ParseQuery;

    .line 195
    .local v4, query:Lcom/parse/ParseQuery;
    invoke-direct {v4}, Lcom/parse/ParseQuery;->getFindParams()Lorg/json/JSONObject;

    move-result-object v5

    .line 196
    .local v5, realData:Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 197
    const-string v6, "where"

    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    :cond_2
    const-string v6, "className"

    const-string v7, "classname"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .end local v1           #key:Ljava/lang/String;
    .end local v3           #object:Ljava/lang/Object;
    .end local v4           #query:Lcom/parse/ParseQuery;
    .end local v5           #realData:Lorg/json/JSONObject;
    :cond_3
    move-object p1, v0

    .line 205
    goto :goto_0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, localList:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    const/4 v0, 0x0

    .line 118
    .local v0, className:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 119
    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v4, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "All of the queries in an or query must be on the same class "

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 123
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseQuery;

    iget-object v0, v4, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    .line 124
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 127
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can\'t take an or of an empty list of queries"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_2
    new-instance v3, Lcom/parse/ParseQuery;

    invoke-direct {v3, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 130
    .local v3, value:Lcom/parse/ParseQuery;
    invoke-direct {v3, v2}, Lcom/parse/ParseQuery;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;

    move-result-object v4

    return-object v4
.end method

.method private runCommandWithPolicy(Lcom/parse/ParseQuery$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "policy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$CommandDelegate",
            "<TT;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .local p1, c:Lcom/parse/ParseQuery$CommandDelegate;,"Lcom/parse/ParseQuery$CommandDelegate<TT;>;"
    const/4 v3, 0x1

    .line 331
    sget-object v1, Lcom/parse/ParseQuery$7;->$SwitchMap$com$parse$ParseQuery$CachePolicy:[I

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 357
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cache policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 334
    :pswitch_0
    invoke-interface {p1, v3}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetwork(Z)Ljava/lang/Object;

    move-result-object v1

    .line 352
    :goto_0
    return-object v1

    .line 336
    :pswitch_1
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCache()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 339
    :pswitch_2
    :try_start_0
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCache()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Lcom/parse/ParseException;
    invoke-interface {p1, v3}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetwork(Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 346
    .end local v0           #e:Lcom/parse/ParseException;
    :pswitch_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/parse/ParseQuery$CommandDelegate;->runOnNetwork(Z)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 347
    :catch_1
    move-exception v0

    .line 348
    .restart local v0       #e:Lcom/parse/ParseException;
    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 350
    new-instance v1, Lcom/parse/ParseException;

    invoke-direct {v1, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 352
    :cond_0
    invoke-interface {p1}, Lcom/parse/ParseQuery$CommandDelegate;->runFromCache()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 355
    .end local v0           #e:Lcom/parse/ParseException;
    :pswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    const-string v1, "$or"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1219
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1220
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1224
    :goto_0
    return-object p0

    .line 1222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1252
    iget-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1257
    :goto_0
    return-object p0

    .line 1255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    goto :goto_0
.end method

.method public cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/BackgroundTask;->cancel(Z)Z

    .line 393
    iput-object v2, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->cancel()V

    .line 398
    iput-object v2, p0, Lcom/parse/ParseQuery;->currentCommand:Lcom/parse/ParseCommand;

    .line 401
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->isRunning:Ljava/lang/Boolean;

    .line 402
    return-void
.end method

.method public clearCachedResult()V
    .locals 1

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeFindCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 744
    return-void
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->count(Z)I

    move-result v0

    return v0
.end method

.method protected count(Z)I
    .locals 2
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 656
    if-eqz p1, :cond_0

    .line 657
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 660
    :cond_0
    const/4 v0, 0x0

    .line 662
    .local v0, result:I
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->countWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 664
    invoke-direct {p0}, Lcom/parse/ParseQuery;->finishedRunning()V

    .line 666
    return v0

    .line 664
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/parse/ParseQuery;->finishedRunning()V

    throw v1
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 688
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 690
    new-instance v0, Lcom/parse/ParseQuery$5;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;)V

    .line 698
    .local v0, countTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Integer;>;"
    iput-object v0, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 699
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 700
    return-void
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->find(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public find(Z)Ljava/util/List;
    .locals 3
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 420
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 425
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->finishedRunning()V

    .line 427
    return-object v0

    .line 425
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/parse/ParseQuery;->finishedRunning()V

    throw v1
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 7
    .parameter "callback"

    .prologue
    const/4 v6, 0x0

    .line 579
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 580
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/parse/ParseQuery;->queryStart:J

    .line 583
    iget-object v4, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v4, v5, :cond_0

    .line 587
    :try_start_0
    sget-object v4, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-direct {p0, v4}, Lcom/parse/ParseQuery;->findWithCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Ljava/util/List;

    move-result-object v0

    .line 588
    .local v0, cacheResults:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    .end local v0           #cacheResults:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :goto_0
    sget-object v1, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    .line 598
    .local v1, callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    :goto_1
    new-instance v3, Lcom/parse/ParseQuery$3;

    invoke-direct {v3, p0, p1, v1}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;Lcom/parse/ParseQuery$CachePolicy;)V

    .line 606
    .local v3, findTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    iput-object v3, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 607
    invoke-static {v3}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 608
    return-void

    .line 589
    .end local v1           #callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    .end local v3           #findTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    :catch_0
    move-exception v2

    .line 590
    .local v2, e:Lcom/parse/ParseException;
    invoke-virtual {p1, v6, v2}, Lcom/parse/FindCallback;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    goto :goto_0

    .line 595
    .end local v2           #e:Lcom/parse/ParseException;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .restart local v1       #callbackCachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter "theObjectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 713
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->get(Ljava/lang/String;Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method protected get(Ljava/lang/String;Z)Lcom/parse/ParseObject;
    .locals 2
    .parameter "theObjectId"
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 717
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery;->skip:I

    .line 718
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    .line 719
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-virtual {p0, p2}, Lcom/parse/ParseQuery;->getFirst(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/parse/ParseQuery;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->getFirst(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method protected getFirst(Z)Lcom/parse/ParseObject;
    .locals 4
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    if-eqz p1, :cond_0

    .line 446
    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 449
    :cond_0
    iput v1, p0, Lcom/parse/ParseQuery;->limit:I

    .line 450
    invoke-virtual {p0, v2}, Lcom/parse/ParseQuery;->find(Z)Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, results:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    return-object v1

    .line 454
    :cond_1
    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x65

    const-string v3, "no results matched the query"

    invoke-direct {v1, v2, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->setLimit(I)V

    .line 621
    new-instance v0, Lcom/parse/ParseQuery$4;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;Lcom/parse/GetCallback;)V

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    .line 634
    return-void
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 3
    .parameter "objectId"
    .parameter "callback"

    .prologue
    .line 765
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 767
    move-object v0, p1

    .line 768
    .local v0, finalObjectId:Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseQuery$6;

    invoke-direct {v1, p0, p2, v0}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseCallback;Ljava/lang/String;)V

    .line 776
    .local v1, getTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseObject;>;"
    iput-object v1, p0, Lcom/parse/ParseQuery;->currentTask:Lcom/parse/BackgroundTask;

    .line 777
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 778
    return-void
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Lcom/parse/ParseQuery;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 516
    iget-wide v0, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 1303
    iget v0, p0, Lcom/parse/ParseQuery;->skip:I

    return v0
.end method

.method public hasCachedResult()Z
    .locals 4

    .prologue
    .line 731
    invoke-direct {p0}, Lcom/parse/ParseQuery;->makeFindCommand()Lcom/parse/ParseCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    invoke-static {v1, v2, v3}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, raw:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public include(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1169
    iget-object v0, p0, Lcom/parse/ParseQuery;->include:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    return-void
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 0
    .parameter "key"

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1204
    iput-object p1, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1205
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"

    .prologue
    .line 1235
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->order:Ljava/lang/String;

    .line 1238
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)V
    .locals 0
    .parameter "newCachePolicy"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 494
    iput-object p1, p0, Lcom/parse/ParseQuery;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 495
    return-void
.end method

.method public setLimit(I)V
    .locals 0
    .parameter "newLimit"

    .prologue
    .line 1267
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1269
    iput p1, p0, Lcom/parse/ParseQuery;->limit:I

    .line 1270
    return-void
.end method

.method public setMaxCacheAge(J)V
    .locals 0
    .parameter "maxAgeInMilliseconds"

    .prologue
    .line 508
    iput-wide p1, p0, Lcom/parse/ParseQuery;->maxCacheAge:J

    .line 509
    return-void
.end method

.method public setSkip(I)V
    .locals 0
    .parameter "newSkip"

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1296
    iput p1, p0, Lcom/parse/ParseQuery;->skip:I

    .line 1297
    return-void
.end method

.method public setTrace(Z)V
    .locals 0
    .parameter "shouldTrace"

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->trace:Z

    .line 1278
    return-void
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 915
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 916
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 917
    .local v2, val:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 919
    .end local v2           #val:Ljava/lang/Object;
    :cond_0
    const-string v3, "$in"

    invoke-direct {p0, p1, v3, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 920
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "substring"

    .prologue
    .line 1125
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1126
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1127
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"

    .prologue
    .line 1190
    const-string v0, "$exists"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1191
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "query"

    .prologue
    .line 951
    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "suffix"

    .prologue
    .line 1158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1160
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 793
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 794
    check-cast p2, Ljava/util/Date;

    .end local p2
    invoke-static {p2}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object p2

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->where:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"

    .prologue
    .line 1179
    const-string v0, "$exists"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 870
    const-string v0, "$gt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 871
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 900
    const-string v0, "$gte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 901
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 840
    const-string v0, "$lt"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 885
    const-string v0, "$lte"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "regex"

    .prologue
    .line 1088
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1089
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "regex"
    .parameter "modifiers"

    .prologue
    .line 1107
    const-string v0, "$regex"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    const-string v0, "$options"

    invoke-direct {p0, p1, v0, p3}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1111
    :cond_0
    return-object p0
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "query"

    .prologue
    .line 935
    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 936
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "point"

    .prologue
    .line 997
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 998
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery;"
        }
    .end annotation

    .prologue
    .line 978
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 979
    .local v0, array:Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 980
    .local v2, val:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 982
    .end local v2           #val:Ljava/lang/Object;
    :cond_0
    const-string v3, "$nin"

    invoke-direct {p0, p1, v3, v0}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 855
    const-string v0, "$ne"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 856
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "prefix"

    .prologue
    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1144
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "southwest"
    .parameter "northeast"

    .prologue
    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static {p2}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    invoke-static {p3}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1072
    .local v1, dictionary:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const-string v2, "$box"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    const-string v2, "$within"

    invoke-direct {p0, p1, v2, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1074
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"

    .prologue
    .line 1033
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1034
    return-object p0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"

    .prologue
    .line 1015
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    .line 1016
    return-object p0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"

    .prologue
    .line 1050
    const-string v0, "$nearSphere"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1051
    const-string v0, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/parse/ParseQuery;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1052
    return-object p0
.end method
