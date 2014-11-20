.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field static applicationContext:Landroid/content/Context;

.field static applicationId:Ljava/lang/String;

.field static clientKey:Ljava/lang/String;

.field static commandCache:Lcom/parse/ParseCommandCache;

.field private static final dateFormat:Ljava/text/DateFormat;

.field static installationId:Ljava/lang/String;

.field private static logLevel:I

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I

.field static maxParseFileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const/4 v1, 0x6

    sput v1, Lcom/parse/Parse;->logLevel:I

    .line 56
    const/high16 v1, 0xa0

    sput v1, Lcom/parse/Parse;->maxParseFileSize:I

    .line 60
    const/high16 v1, 0x20

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 64
    const/16 v1, 0x3e8

    sput v1, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 66
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, format:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    sput-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .parameter "first"
    .parameter "second"

    .prologue
    .line 791
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 802
    :goto_0
    return-object v0

    .line 793
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 794
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 795
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 796
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 797
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 798
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 799
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 800
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 802
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized checkCacheApplicationId()V
    .locals 10

    .prologue
    .line 237
    const-class v7, Lcom/parse/Parse;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v0, applicationIdFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    const/4 v4, 0x0

    .line 244
    .local v4, matches:Z
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v3, v0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v3, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v6, v8

    new-array v1, v6, [B

    .line 246
    .local v1, bytes:[B
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 247
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 248
    new-instance v2, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v2, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 249
    .local v2, diskApplicationId:Ljava/lang/String;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v4

    .line 256
    .end local v1           #bytes:[B
    .end local v2           #diskApplicationId:Ljava/lang/String;
    .end local v3           #f:Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v4, :cond_0

    .line 258
    :try_start_2
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 263
    .end local v4           #matches:Z
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0           #applicationIdFile:Ljava/io/File;
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v6

    const-string v8, "applicationId"

    invoke-direct {v0, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    .restart local v0       #applicationIdFile:Ljava/io/File;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 266
    .local v5, out:Ljava/io/FileOutputStream;
    sget-object v6, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 267
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 277
    .end local v5           #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    monitor-exit v7

    return-void

    .line 237
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 273
    :catch_0
    move-exception v6

    goto :goto_1

    .line 270
    :catch_1
    move-exception v6

    goto :goto_1

    .line 268
    :catch_2
    move-exception v6

    goto :goto_1

    .line 252
    .restart local v4       #matches:Z
    :catch_3
    move-exception v6

    goto :goto_0

    .line 250
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 506
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_0
    sget-object v0, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(context, applicationId, clientKey) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_1
    return-void
.end method

.method static clearCacheDir()V
    .locals 4

    .prologue
    .line 360
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    .line 361
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 362
    .local v1, entries:[Ljava/io/File;
    if-nez v1, :cond_1

    .line 368
    :cond_0
    return-void

    .line 365
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 366
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 424
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 425
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 428
    :cond_0
    return-void
.end method

.method static convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v2, new_array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    .line 530
    .local v3, oldValue:Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 531
    .local v1, newValue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 532
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    .end local v1           #newValue:Ljava/lang/Object;
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method static convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 541
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 542
    .local v3, outputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 545
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 546
    .local v4, value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    .local v0, decodedObject:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 549
    :cond_0
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 550
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 552
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 555
    .end local v0           #decodedObject:Ljava/lang/Object;
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "key"

    .prologue
    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, filename:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;
    .locals 5
    .parameter "date"

    .prologue
    .line 762
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 763
    .local v2, object:Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, iso:Ljava/lang/String;
    :try_start_0
    const-string v3, "__type"

    const-string v4, "Date"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v3, "iso"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    return-object v2

    .line 767
    :catch_0
    move-exception v0

    .line 769
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "object"

    .prologue
    const/4 v9, 0x0

    .line 560
    instance-of v11, p0, Lorg/json/JSONObject;

    if-eqz v11, :cond_1

    move-object v3, p0

    .line 561
    check-cast v3, Lorg/json/JSONObject;

    .line 566
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v11, "__type"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 567
    .local v10, typeString:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 568
    :cond_0
    invoke-static {v3}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v9

    .line 614
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #typeString:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v9

    .line 571
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v10       #typeString:Ljava/lang/String;
    :cond_2
    const-string v11, "Date"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 572
    const-string v11, "iso"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, iso:Ljava/lang/String;
    invoke-static {v2}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    goto :goto_0

    .line 576
    .end local v2           #iso:Ljava/lang/String;
    :cond_3
    const-string v11, "Bytes"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 577
    const-string v11, "base64"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, base64:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v9

    goto :goto_0

    .line 581
    .end local v0           #base64:Ljava/lang/String;
    :cond_4
    const-string v11, "Pointer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 582
    const-string v11, "className"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "objectId"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v9

    goto :goto_0

    .line 586
    :cond_5
    const-string v11, "File"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 587
    new-instance v9, Lcom/parse/ParseFile;

    const-string v11, "name"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "url"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_6
    const-string v11, "GeoPoint"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 593
    :try_start_0
    const-string v11, "latitude"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 594
    .local v4, latitude:D
    const-string v11, "longitude"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 598
    .local v6, longitude:D
    new-instance v9, Lcom/parse/ParseGeoPoint;

    invoke-direct {v9, v4, v5, v6, v7}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto :goto_0

    .line 595
    .end local v4           #latitude:D
    .end local v6           #longitude:D
    :catch_0
    move-exception v1

    .line 596
    .local v1, e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 601
    .end local v1           #e:Lorg/json/JSONException;
    :cond_7
    const-string v11, "Object"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 602
    const-string v11, "className"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v9

    .line 603
    .local v9, output:Lcom/parse/ParseObject;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 605
    .local v8, nested:Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "data"

    invoke-virtual {v8, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 609
    invoke-virtual {v9}, Lcom/parse/ParseObject;->clearData()V

    .line 610
    const/4 v11, 0x0

    invoke-virtual {v9, v8, v11}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 606
    :catch_1
    move-exception v1

    .line 607
    .restart local v1       #e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method static encodeAsJSONArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 695
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 696
    .local v1, new_array:Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 697
    .local v2, o:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 698
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid type for value in array: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 701
    :cond_0
    invoke-static {v2}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 703
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method static declared-synchronized encodeDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 758
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static encodeJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 12
    .parameter "object"

    .prologue
    .line 619
    :try_start_0
    instance-of v9, p0, Ljava/util/Date;

    if-eqz v9, :cond_1

    .line 620
    check-cast p0, Ljava/util/Date;

    .end local p0
    invoke-static {p0}, Lcom/parse/Parse;->dateToObject(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v5

    .line 683
    .restart local p0
    :cond_0
    :goto_0
    return-object v5

    .line 623
    :cond_1
    instance-of v9, p0, [B

    if-eqz v9, :cond_2

    .line 624
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 625
    .local v5, json:Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "Bytes"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v9, "base64"

    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-static {p0}, Lcom/parse/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 679
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local p0
    :catch_0
    move-exception v2

    .line 680
    .local v2, e:Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 630
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    instance-of v9, p0, Lcom/parse/ParseObject;

    if-eqz v9, :cond_3

    .line 631
    check-cast p0, Lcom/parse/ParseObject;

    .end local p0
    invoke-static {p0}, Lcom/parse/Parse;->parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    .line 634
    .restart local p0
    :cond_3
    instance-of v9, p0, Lcom/parse/ParseFile;

    if-eqz v9, :cond_4

    .line 635
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseFile;

    move-object v3, v0

    .line 636
    .local v3, file:Lcom/parse/ParseFile;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 637
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "File"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    const-string v9, "url"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 639
    const-string v9, "name"

    invoke-virtual {v3}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 643
    .end local v3           #file:Lcom/parse/ParseFile;
    .end local v5           #json:Lorg/json/JSONObject;
    :cond_4
    instance-of v9, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v9, :cond_5

    .line 644
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object v8, v0

    .line 645
    .local v8, point:Lcom/parse/ParseGeoPoint;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 646
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v9, "__type"

    const-string v10, "GeoPoint"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 647
    const-string v9, "latitude"

    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 648
    const-string v9, "longitude"

    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 652
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v8           #point:Lcom/parse/ParseGeoPoint;
    :cond_5
    instance-of v9, p0, Lcom/parse/ParseACL;

    if-eqz v9, :cond_6

    .line 653
    move-object v0, p0

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 654
    .local v1, acl:Lcom/parse/ParseACL;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    goto/16 :goto_0

    .line 657
    .end local v1           #acl:Lcom/parse/ParseACL;
    :cond_6
    instance-of v9, p0, Lcom/parse/ParseIncrementOperation;

    if-eqz v9, :cond_7

    .line 658
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 659
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v9, "__op"

    const-string v10, "Increment"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v9, "amount"

    check-cast p0, Lcom/parse/ParseIncrementOperation;

    .end local p0
    invoke-virtual {p0}, Lcom/parse/ParseIncrementOperation;->getAmount()Ljava/lang/Number;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 664
    .end local v5           #json:Lorg/json/JSONObject;
    .restart local p0
    :cond_7
    instance-of v9, p0, Lcom/parse/ParseDeleteOperation;

    if-eqz v9, :cond_8

    .line 665
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 666
    .restart local v5       #json:Lorg/json/JSONObject;
    const-string v9, "__op"

    const-string v10, "Delete"

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 670
    .end local v5           #json:Lorg/json/JSONObject;
    :cond_8
    instance-of v9, p0, Ljava/util/Map;

    if-eqz v9, :cond_9

    .line 672
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v6, v0

    .line 673
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 674
    .restart local v5       #json:Lorg/json/JSONObject;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 675
    .local v7, pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 683
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #json:Lorg/json/JSONObject;
    .end local v6           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #pair:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method static declared-synchronized getCommandCache()Lcom/parse/ParseCommandCache;
    .locals 3

    .prologue
    .line 485
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-nez v0, :cond_0

    .line 486
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 487
    new-instance v0, Lcom/parse/ParseCommandCache;

    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 489
    :cond_0
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstallationId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 291
    const-class v6, Lcom/parse/Parse;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 292
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v5

    const-string v7, "installationId"

    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v3, installationIdFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 295
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;

    .line 297
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 298
    .local v4, out:Ljava/io/FileOutputStream;
    sget-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 299
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v4           #out:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v5

    .line 302
    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v2, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v5, v7

    new-array v0, v5, [B

    .line 304
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 305
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 306
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 308
    .end local v0           #bytes:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    sget-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 312
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/parse/Parse;->installationId:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 291
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 281
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 282
    invoke-static {}, Lcom/parse/Parse;->getInstallationId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 4
    .parameter "cacheFile"

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 349
    :goto_0
    return-wide v2

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getKeyValueCacheDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 323
    const-class v3, Lcom/parse/Parse;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 324
    sget-object v2, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 325
    .local v0, appCacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "ParseKeyValueCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v1, parseCacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 327
    :cond_0
    monitor-exit v3

    return-object v1

    .line 329
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "could not create Parse cache directory"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .end local v1           #parseCacheDir:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "key"

    .prologue
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, suffix:Ljava/lang/String;
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/parse/Parse$1;

    invoke-direct {v3, v1}, Lcom/parse/Parse$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 339
    .local v0, matches:[Ljava/io/File;
    array-length v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 153
    sget v0, Lcom/parse/Parse;->logLevel:I

    return v0
.end method

.method static declared-synchronized getParseDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 218
    const-class v1, Lcom/parse/Parse;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 219
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 514
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 515
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "applicationId"
    .parameter "clientKey"

    .prologue
    .line 113
    sput-object p1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    .line 114
    sput-object p2, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    .line 115
    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 119
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 121
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    .line 123
    :cond_0
    return-void
.end method

.method static isContainerObject(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 786
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 687
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseACL;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseFile;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/parse/ParseGeoPoint;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "delimiter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 807
    .local p0, items:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 808
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 809
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 810
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 813
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .parameter "maxAgeMilliseconds"

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-static {p0, p1, p2}, Lcom/parse/Parse;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, raw:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 473
    :goto_0
    return-object v1

    .line 465
    :cond_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, tokener:Lorg/json/JSONTokener;
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 469
    .local v1, o:Ljava/lang/Object;
    goto :goto_0

    .line 470
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Lorg/json/JSONException;
    const-string v4, "com.parse.Parse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "corrupted cache for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    invoke-static {p0}, Lcom/parse/Parse;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    move-object v0, p0

    .line 777
    .local v0, finalObject:Lorg/json/JSONObject;
    new-instance v1, Lcom/parse/Parse$3;

    invoke-direct {v1, v0}, Lcom/parse/Parse$3;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 12
    .parameter "key"
    .parameter "maxAgeMilliseconds"

    .prologue
    const/4 v7, 0x0

    .line 433
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 434
    .local v3, file:Ljava/io/File;
    if-nez v3, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v7

    .line 438
    :cond_1
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 439
    .local v4, now:Ljava/util/Date;
    const-wide/16 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v10, p1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 440
    .local v5, oldestAcceptableAge:J
    invoke-static {v3}, Lcom/parse/Parse;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-ltz v8, :cond_0

    .line 445
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 448
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v2, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 449
    .local v2, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 450
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 451
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 452
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v8

    goto :goto_0

    .line 453
    .end local v0           #bytes:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 454
    .local v1, e:Ljava/io/IOException;
    const-string v8, "com.parse.Parse"

    const-string v9, "error reading from cache"

    invoke-static {v8, v9, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "logLevel"
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 157
    sget v0, Lcom/parse/Parse;->logLevel:I

    if-le p0, v0, :cond_0

    .line 158
    if-nez p3, :cond_1

    .line 159
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 175
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    return-void
.end method

.method static logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 199
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    return-void
.end method

.method static logI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 183
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    return-void
.end method

.method static logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 167
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    return-void
.end method

.method static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "message"
    .parameter "tr"

    .prologue
    .line 191
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/parse/Parse;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    return-void
.end method

.method static maybeEncodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 711
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 712
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-static {p0}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    .line 718
    .local v0, json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object p0

    .line 714
    .end local v0           #json:Lorg/json/JSONObject;
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 715
    .restart local v0       #json:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 718
    goto :goto_0
.end method

.method static maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 724
    instance-of v0, p0, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 725
    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode an association with an unsaved ParseObject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_0
    invoke-static {p0}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "dateString"

    .prologue
    .line 749
    const-class v2, Lcom/parse/Parse;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/Parse;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 753
    :goto_0
    monitor-exit v2

    return-object v1

    .line 750
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.Parse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 753
    const/4 v1, 0x0

    goto :goto_0

    .line 749
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static parseObjectToJSONPointer(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 4
    .parameter "pointedTo"

    .prologue
    .line 735
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 737
    .local v1, json:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 738
    const-string v2, "className"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v2, "objectId"

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    return-object v1

    .line 740
    :catch_0
    move-exception v0

    .line 742
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static declared-synchronized recursiveDelete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 224
    const-class v5, Lcom/parse/Parse;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 226
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/parse/Parse;->recursiveDelete(Ljava/io/File;)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v5

    return-void

    .line 224
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 519
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    return-void
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "key"
    .parameter "value"

    .prologue
    .line 372
    invoke-static {p0}, Lcom/parse/Parse;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 373
    .local v9, prior:Ljava/io/File;
    if-eqz v9, :cond_0

    .line 374
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 376
    :cond_0
    invoke-static {p0}, Lcom/parse/Parse;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 378
    .local v1, f:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 379
    .local v8, out:Ljava/io/FileOutputStream;
    const-string v10, "UTF-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 380
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v8           #out:Ljava/io/FileOutputStream;
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 387
    .local v3, files:[Ljava/io/File;
    array-length v7, v3

    .line 388
    .local v7, numFiles:I
    const/4 v6, 0x0

    .line 389
    .local v6, numBytes:I
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 390
    .local v2, file:Ljava/io/File;
    int-to-long v10, v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v6, v10

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 392
    .end local v2           #file:Ljava/io/File;
    :cond_1
    sget v10, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v7, v10, :cond_2

    sget v10, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-le v6, v10, :cond_3

    .line 398
    :cond_2
    new-instance v10, Lcom/parse/Parse$2;

    invoke-direct {v10}, Lcom/parse/Parse$2;-><init>()V

    invoke-static {v3, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 409
    move-object v0, v3

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 410
    .restart local v2       #file:Ljava/io/File;
    add-int/lit8 v7, v7, -0x1

    .line 411
    int-to-long v10, v6

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v6, v10

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 414
    sget v10, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    if-gt v7, v10, :cond_4

    sget v10, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    if-gt v6, v10, :cond_4

    .line 419
    .end local v2           #file:Ljava/io/File;
    :cond_3
    return-void

    .line 409
    .restart local v2       #file:Ljava/io/File;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 382
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #numBytes:I
    .end local v7           #numFiles:I
    :catch_0
    move-exception v10

    goto :goto_0

    .line 381
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method static setContextIfNeeded(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 212
    sput-object p0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 214
    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 144
    sput p0, Lcom/parse/Parse;->logLevel:I

    .line 145
    return-void
.end method
