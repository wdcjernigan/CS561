.class public Lcom/parse/ParseTestUtils;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseTestUtils"

.field private static serverPort:I

.field private static synchronizer:Lcom/parse/Synchronizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x2328

    sput v0, Lcom/parse/ParseTestUtils;->serverPort:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowSleep(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 135
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 136
    return-void
.end method

.method public static assertFinishes()V
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->assertFinishes()V

    .line 215
    return-void
.end method

.method public static assertSlept()V
    .locals 3

    .prologue
    .line 141
    :goto_0
    sget-object v1, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static beginFakeSleep()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 128
    return-void
.end method

.method public static clearApp()V
    .locals 4

    .prologue
    .line 118
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v2, "clear_app"

    invoke-direct {v0, v2}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static clearFiles()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 242
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 246
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->pause()V

    .line 248
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->commandCache:Lcom/parse/ParseCommandCache;

    .line 250
    :cond_0
    return-void
.end method

.method public static clearInstallationId()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->installationId:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public static clearPushServiceCallbacks()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 253
    sput-object v0, Lcom/parse/PushService;->transientCallbacks:Ljava/util/HashMap;

    .line 254
    sput-object v0, Lcom/parse/PushService;->persistentCallbacks:Lorg/json/JSONObject;

    .line 255
    return-void
.end method

.method public static clearPushServiceLastTime()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public static consecutiveFailures()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/parse/PushService;->consecutiveFailures:I

    return v0
.end method

.method public static endFakeSleep()V
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Ljava/util/concurrent/Semaphore;->release(I)V

    .line 132
    return-void
.end method

.method public static finish()V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0}, Lcom/parse/Synchronizer;->finish()V

    .line 220
    return-void
.end method

.method public static getInstallationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 270
    invoke-static {p0}, Lcom/parse/Parse;->getInstallationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public static getObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 173
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static getParseDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 194
    const-string v0, "Parse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getUserObjectFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 177
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static initSynchronizer()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/parse/Synchronizer;

    invoke-direct {v0}, Lcom/parse/Synchronizer;-><init>()V

    sput-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    .line 201
    return-void
.end method

.method public static keySet(Lcom/parse/ParseObject;)Ljava/util/Set;
    .locals 1
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static mockPushServer()Ljava/net/ServerSocket;
    .locals 4

    .prologue
    .line 319
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/parse/ParseTestUtils;->serverPort:I

    .line 320
    sget v1, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-static {v1}, Lcom/parse/PushService;->usePort(I)V

    .line 321
    const-string v1, "com.parse.ParseTestUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "running mockPushServer on port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    sget v2, Lcom/parse/ParseTestUtils;->serverPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static numKeyValueCacheFiles()I
    .locals 1

    .prologue
    .line 333
    invoke-static {}, Lcom/parse/Parse;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static onPush(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V
    .locals 0
    .parameter "context"
    .parameter "channel"
    .parameter "callback"

    .prologue
    .line 262
    invoke-static {p0, p1, p2}, Lcom/parse/PushService;->addTransientPushCallback(Landroid/content/Context;Ljava/lang/String;Lcom/parse/PushCallback;)V

    .line 263
    return-void
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 233
    .local v2, children:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 234
    .local v1, child:Ljava/io/File;
    invoke-static {v1}, Lcom/parse/ParseTestUtils;->recursiveDelete(Ljava/io/File;)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 237
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #children:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static saveObjectToDisk(Lcom/parse/ParseObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "object"
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static saveStringToDisk(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "string"
    .parameter "context"
    .parameter "filename"

    .prologue
    .line 181
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Lcom/parse/ParseTestUtils;->getParseDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    .local v1, file:Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 184
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static setMaxKeyValueCacheBytes(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 347
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheBytes:I

    .line 348
    return-void
.end method

.method public static setMaxKeyValueCacheFiles(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 340
    sput p0, Lcom/parse/Parse;->maxKeyValueCacheFiles:I

    .line 341
    return-void
.end method

.method public static setUpPushTest()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    .line 294
    const/4 v0, 0x0

    sput v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 295
    sput-object v1, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    .line 296
    sput-object v1, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    .line 297
    const-string v0, "localhost"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 298
    const-string v0, "The ParseObject server should not be used"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    .line 299
    invoke-static {}, Lcom/parse/ParseTestUtils;->initSynchronizer()V

    .line 300
    return-void
.end method

.method public static start(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 209
    sget-object v0, Lcom/parse/ParseTestUtils;->synchronizer:Lcom/parse/Synchronizer;

    invoke-virtual {v0, p0}, Lcom/parse/Synchronizer;->start(I)V

    .line 210
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 303
    invoke-static {p0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 304
    return-void
.end method

.method public static tearDownPushTest()V
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearFiles()V

    .line 281
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearInstallationId()V

    .line 282
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearPushServiceCallbacks()V

    .line 283
    invoke-static {}, Lcom/parse/ParseTestUtils;->clearPushServiceLastTime()V

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 285
    return-void
.end method

.method public static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "o"

    .prologue
    .line 308
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static totalNotifications()I
    .locals 1

    .prologue
    .line 266
    sget v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    return v0
.end method

.method public static useBadServerPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "http://10.0.2.2:6666"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useDevPushServer()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "10.0.2.2"

    invoke-static {v0}, Lcom/parse/PushService;->useServer(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static useInvalidServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "http://invalid.server:3000"

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->useServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static useServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "theServer"

    .prologue
    .line 90
    sget-object v0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 91
    .local v0, oldServer:Ljava/lang/String;
    sput-object p0, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 92
    return-object v0
.end method
