.class Lcom/parse/ParseCommandCache;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseCommandCache$TestHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private commandsInCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/parse/ParseCommand;",
            ">;"
        }
    .end annotation
.end field

.field private connected:Z

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field private newObjects:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private running:Z

.field private runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private testHelper:Lcom/parse/ParseCommandCache$TestHelper;

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v4, 0x5

    iput v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 45
    const-wide v4, 0x4082c00000000000L

    iput-wide v4, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 48
    const/high16 v4, 0xa0

    iput v4, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 62
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    .line 66
    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    .line 96
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 99
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 100
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 101
    iput-boolean v3, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 103
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sput-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    .line 104
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 106
    const-string v4, "com.parse.ParseCommandCache"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 109
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, parseDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "CommandCache"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 113
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 115
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v4}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 145
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 124
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 126
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 129
    new-instance v3, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;Landroid/net/ConnectivityManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    .end local v1           #network:Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 28
    .parameter "retriesRemaining"

    .prologue
    .line 445
    sget-object v23, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v23

    .line 446
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 448
    monitor-exit v23

    .line 565
    :goto_0
    return-void

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, fileNames:[Ljava/lang/String;
    if-eqz v11, :cond_1

    array-length v0, v11

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 453
    :cond_1
    monitor-exit v23

    goto :goto_0

    .line 564
    .end local v11           #fileNames:[Ljava/lang/String;
    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 455
    .restart local v11       #fileNames:[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 456
    move-object v3, v11

    .local v3, arr$:[Ljava/lang/String;
    array-length v0, v3

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_13

    aget-object v10, v3, v12

    .line 457
    .local v10, fileName:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    .local v9, file:Ljava/io/File;
    const/4 v15, 0x0

    .line 463
    .local v15, json:Lorg/json/JSONObject;
    :try_start_2
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 464
    .local v14, input:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 465
    .local v4, buffer:Ljava/io/ByteArrayOutputStream;
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 467
    .local v19, temp:[B
    :goto_2
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, read:I
    if-lez v18, :cond_4

    .line 468
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 471
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v18           #read:I
    .end local v19           #temp:[B
    :catch_0
    move-exception v8

    .line 473
    .local v8, e:Ljava/io/FileNotFoundException;
    const/16 v22, 0x6

    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "File disappeared from cache while being read."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 456
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 470
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #input:Ljava/io/InputStream;
    .restart local v18       #read:I
    .restart local v19       #temp:[B
    :cond_4
    :try_start_4
    new-instance v16, Lorg/json/JSONObject;

    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 492
    .end local v15           #json:Lorg/json/JSONObject;
    .local v16, json:Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 493
    .local v5, command:Lcom/parse/ParseCommand;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #command:Lcom/parse/ParseCommand;
    check-cast v5, Lcom/parse/ParseCommand;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 509
    .restart local v5       #command:Lcom/parse/ParseCommand;
    :goto_4
    :try_start_6
    invoke-virtual {v5}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 511
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/parse/ParseException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    move-object/from16 v15, v16

    .line 562
    .end local v16           #json:Lorg/json/JSONObject;
    .restart local v15       #json:Lorg/json/JSONObject;
    goto :goto_3

    .line 477
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v5           #command:Lcom/parse/ParseCommand;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v18           #read:I
    .end local v19           #temp:[B
    :catch_1
    move-exception v8

    .line 478
    .local v8, e:Ljava/io/IOException;
    const/16 v22, 0x6

    :try_start_7
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Unable to read contents of file in cache."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_3

    .line 483
    .end local v8           #e:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 484
    .local v8, e:Lorg/json/JSONException;
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Error parsing JSON found in cache."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 497
    .end local v8           #e:Lorg/json/JSONException;
    .end local v15           #json:Lorg/json/JSONObject;
    .restart local v4       #buffer:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #command:Lcom/parse/ParseCommand;
    .restart local v14       #input:Ljava/io/InputStream;
    .restart local v16       #json:Lorg/json/JSONObject;
    .restart local v18       #read:I
    .restart local v19       #temp:[B
    :cond_8
    :try_start_8
    new-instance v5, Lcom/parse/ParseCommand;

    .end local v5           #command:Lcom/parse/ParseCommand;
    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    .restart local v5       #command:Lcom/parse/ParseCommand;
    goto :goto_4

    .line 498
    .end local v5           #command:Lcom/parse/ParseCommand;
    :catch_3
    move-exception v8

    .line 499
    .restart local v8       #e:Lorg/json/JSONException;
    const/16 v22, 0x6

    :try_start_9
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Unable to create ParseCommand from JSON."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move-object/from16 v15, v16

    .line 503
    .end local v16           #json:Lorg/json/JSONObject;
    .restart local v15       #json:Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 515
    .end local v8           #e:Lorg/json/JSONException;
    .end local v15           #json:Lorg/json/JSONObject;
    .restart local v5       #command:Lcom/parse/ParseCommand;
    .restart local v16       #json:Lorg/json/JSONObject;
    :catch_4
    move-exception v8

    .line 516
    .local v8, e:Lcom/parse/ParseException;
    invoke-virtual {v8}, Lcom/parse/ParseException;->getCode()I

    move-result v22

    const/16 v24, 0x64

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    .line 517
    if-lez p1, :cond_12

    .line 522
    const/16 v22, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Network timeout in command cache. Waiting for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " seconds and then retrying "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " times."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 526
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 527
    .local v6, currentTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v20, v6, v24

    .line 528
    .local v20, waitUntil:J
    :cond_b
    :goto_5
    cmp-long v22, v6, v20

    if-gez v22, :cond_f

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->connected:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    move/from16 v22, v0

    if-eqz v22, :cond_e

    .line 532
    :cond_c
    const/16 v22, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_d

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    const-string v24, "Aborting wait because runEventually thread should stop."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 535
    :cond_d
    monitor-exit v23
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 538
    :cond_e
    :try_start_a
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v24, v20, v6

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    .line 542
    :goto_6
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 543
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v24, v20, v24

    cmp-long v22, v6, v24

    if-gez v22, :cond_b

    .line 546
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v24, v0

    const-wide v26, 0x408f400000000000L

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v6, v20, v24

    goto :goto_5

    .line 539
    :catch_5
    move-exception v13

    .line 540
    .local v13, ie:Ljava/lang/InterruptedException;
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_6

    .line 549
    .end local v13           #ie:Ljava/lang/InterruptedException;
    :cond_f
    add-int/lit8 v22, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    move-object/from16 v15, v16

    .line 550
    .end local v16           #json:Lorg/json/JSONObject;
    .restart local v15       #json:Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 552
    .end local v6           #currentTime:J
    .end local v15           #json:Lorg/json/JSONObject;
    .end local v20           #waitUntil:J
    .restart local v16       #json:Lorg/json/JSONObject;
    :cond_10
    const/16 v22, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_11

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v22, v0

    sget-object v24, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v25, "Failed to run command."

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v22, v0

    const/16 v24, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    :cond_12
    move-object/from16 v15, v16

    .end local v16           #json:Lorg/json/JSONObject;
    .restart local v15       #json:Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 564
    .end local v4           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v5           #command:Lcom/parse/ParseCommand;
    .end local v8           #e:Lcom/parse/ParseException;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #fileName:Ljava/lang/String;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v15           #json:Lorg/json/JSONObject;
    .end local v18           #read:I
    .end local v19           #temp:[B
    :cond_13
    monitor-exit v23
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 217
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 220
    .local v1, object:Lcom/parse/ParseObject;
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v2, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v1           #object:Lcom/parse/ParseObject;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 226
    monitor-exit v3

    .line 227
    return-void

    .line 226
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private runEventuallyInternal(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)V
    .locals 25
    .parameter "command"
    .parameter "preferOldest"
    .parameter "object"

    .prologue
    .line 272
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 285
    .local v12, json:[B
    array-length v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 286
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v22, "Unable to save command for later because it\'s too big."

    invoke-virtual/range {v21 .. v22}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 289
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    .line 380
    .end local v12           #json:[B
    :cond_1
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v4

    .line 274
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    sget-object v22, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v23, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    goto :goto_0

    .line 295
    .end local v4           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v12       #json:[B
    :cond_3
    sget-object v22, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v22

    .line 297
    if-eqz p3, :cond_5

    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_5

    const/4 v11, 0x1

    .line 298
    .local v11, isNew:Z
    :goto_1
    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 304
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 305
    .local v7, fileNames:[Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 306
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 307
    const/16 v19, 0x0

    .line 308
    .local v19, size:I
    move-object v3, v7

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v13, :cond_6

    aget-object v6, v3, v8

    .line 309
    .local v6, fileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 312
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v19, v19, v21

    .line 308
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 297
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v7           #fileNames:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #isNew:Z
    .end local v13           #len$:I
    .end local v19           #size:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 314
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #fileNames:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #isNew:Z
    .restart local v13       #len$:I
    .restart local v19       #size:I
    :cond_6
    array-length v0, v12

    move/from16 v21, v0

    add-int v19, v19, v21

    .line 315
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 316
    if-eqz p2, :cond_8

    .line 317
    const/16 v21, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v23, "Unable to save command for later because storage is full."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 376
    :cond_7
    :try_start_2
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    monitor-exit v22

    goto/16 :goto_0

    .line 378
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #fileNames:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #isNew:Z
    .end local v13           #len$:I
    .end local v19           #size:I
    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 322
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #fileNames:[Ljava/lang/String;
    .restart local v8       #i$:I
    .restart local v11       #isNew:Z
    .restart local v13       #len$:I
    .restart local v19       #size:I
    :cond_8
    const/16 v21, 0x5

    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    const-string v23, "Deleting old commands to make room in command cache."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 325
    :cond_9
    const/4 v9, 0x0

    .local v9, indexToDelete:I
    move v10, v9

    .line 326
    .end local v9           #indexToDelete:I
    .local v10, indexToDelete:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_a

    .line 327
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #indexToDelete:I
    .restart local v9       #indexToDelete:I
    aget-object v23, v7, v10

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v21, v0

    sub-int v19, v19, v21

    .line 329
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v10, v9

    .line 330
    .end local v9           #indexToDelete:I
    .restart local v10       #indexToDelete:I
    goto :goto_3

    .line 337
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v8           #i$:I
    .end local v10           #indexToDelete:I
    .end local v13           #len$:I
    .end local v19           #size:I
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v17

    .line 338
    .local v17, prefix1:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x10

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 339
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    rsub-int/lit8 v21, v21, 0x10

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 340
    .local v20, zeroes:[C
    const/16 v21, 0x30

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([CC)V

    .line 341
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 346
    .end local v20           #zeroes:[C
    :cond_b
    sget v21, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v23, v21, 0x1

    sput v23, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    .line 347
    .local v18, prefix2:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x8

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 348
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    rsub-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    new-array v0, v0, [C

    move-object/from16 v20, v0

    .line 349
    .restart local v20       #zeroes:[C
    const/16 v21, 0x30

    invoke-static/range {v20 .. v21}, Ljava/util/Arrays;->fill([CC)V

    .line 350
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 353
    .end local v20           #zeroes:[C
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CachedCommand_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 356
    .local v16, prefix:Ljava/lang/String;
    const-string v21, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v15

    .line 358
    .local v15, path:Ljava/io/File;
    if-eqz v11, :cond_d

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v14, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 365
    .local v14, output:Ljava/io/OutputStream;
    invoke-virtual {v14, v12}, Ljava/io/OutputStream;->write([B)V

    .line 366
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    move-object/from16 v21, v0

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 376
    :cond_e
    :try_start_4
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    .line 378
    .end local v7           #fileNames:[Ljava/lang/String;
    .end local v11           #isNew:Z
    .end local v14           #output:Ljava/io/OutputStream;
    .end local v15           #path:Ljava/io/File;
    .end local v16           #prefix:Ljava/lang/String;
    .end local v17           #prefix1:Ljava/lang/String;
    .end local v18           #prefix2:Ljava/lang/String;
    :goto_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 371
    :catch_1
    move-exception v4

    .line 372
    .local v4, e:Ljava/io/IOException;
    const/16 v21, 0x5

    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v21, v0

    sget-object v23, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v24, "Unable to save command for later."

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 376
    :cond_f
    :try_start_6
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notify()V

    goto :goto_4

    .end local v4           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v21

    sget-object v23, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private runLoop()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 577
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    if-lt v8, v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v5, "Parse command cache has started processing queued commands."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 582
    :try_start_0
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v5, :cond_2

    .line 584
    monitor-exit v4

    .line 623
    :cond_1
    :goto_0
    return-void

    .line 586
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 587
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 589
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 591
    const/4 v1, 0x0

    .line 592
    .local v1, shouldRun:Z
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 593
    :try_start_1
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v2

    .line 594
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 595
    :goto_2
    if-eqz v1, :cond_9

    .line 596
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 598
    :try_start_2
    iget v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 599
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v4, :cond_3

    .line 601
    :try_start_3
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 611
    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_6

    move v1, v2

    .line 613
    :goto_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 589
    .end local v1           #shouldRun:Z
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .restart local v1       #shouldRun:Z
    :cond_4
    move v1, v3

    .line 593
    goto :goto_1

    .line 594
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 606
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 608
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "saveEventually thread had an error."

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 611
    :cond_5
    :try_start_9
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_7

    move v1, v2

    .line 612
    :goto_5
    goto :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    move v1, v3

    .line 611
    goto :goto_4

    .restart local v0       #e:Ljava/lang/Exception;
    :cond_7
    move v1, v3

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    iget-boolean v6, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v6, :cond_8

    move v1, v2

    :goto_6
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    move v1, v3

    goto :goto_6

    .line 616
    :cond_9
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 617
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 618
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 619
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 620
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v8, v2, :cond_1

    .line 621
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "saveEventually thread has stopped processing commands."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 396
    sget-object v6, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v6

    .line 397
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 398
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_0

    .line 399
    monitor-exit v6

    .line 407
    :goto_0
    return-void

    .line 401
    :cond_0
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 402
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 401
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 404
    .end local v1           #file:Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 405
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->clear()V

    .line 406
    monitor-exit v6

    goto :goto_0

    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lcom/parse/ParseCommandCache$TestHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseCommandCache$TestHelper;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseCommandCache$1;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->testHelper:Lcom/parse/ParseCommandCache$TestHelper;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 196
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 198
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 199
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 210
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 211
    return-void
.end method

.method public pendingCount()I
    .locals 3

    .prologue
    .line 386
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, files:[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 389
    .end local v0           #files:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeCommandsForNewObject(Lcom/parse/ParseObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 414
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 417
    .local v0, existingFile:Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 419
    .end local v0           #existingFile:Ljava/io/File;
    :cond_0
    monitor-exit v2

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 171
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lcom/parse/ParseCommandCache$2;

    const-string v3, "ParseCommandCache.runLoop()"

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 189
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 184
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 185
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 188
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)V
    .locals 1
    .parameter "command"
    .parameter "object"

    .prologue
    .line 253
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->runEventuallyInternal(Lcom/parse/ParseCommand;ZLcom/parse/ParseObject;)V

    .line 255
    return-void
.end method

.method public setConnected(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 426
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->connected:Z

    if-eq v0, p1, :cond_0

    .line 428
    iput-boolean p1, p0, Lcom/parse/ParseCommandCache;->connected:Z

    .line 429
    if-eqz p1, :cond_0

    .line 430
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 433
    :cond_0
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2
    .parameter "bytes"

    .prologue
    .line 163
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 165
    monitor-exit v1

    .line 166
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2
    .parameter "tries"

    .prologue
    .line 149
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 156
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 234
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->commandsInCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 236
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->newObjects:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 237
    monitor-exit v1

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
