.class public Lorg/apache/cordova/FileTransfer;
.super Lorg/apache/cordova/api/Plugin;
.source "FileTransfer.java"


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "*****"

.field public static CONNECTION_ERR:I = 0x0

.field static final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier; = null

.field public static FILE_NOT_FOUND_ERR:I = 0x0

.field public static INVALID_URL_ERR:I = 0x0

.field private static final LINE_END:Ljava/lang/String; = "\r\n"

.field private static final LINE_START:Ljava/lang/String; = "--"

.field private static final LOG_TAG:Ljava/lang/String; = "FileTransfer"


# instance fields
.field private defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    .line 63
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    .line 64
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    .line 334
    new-instance v0, Lorg/apache/cordova/FileTransfer$1;

    invoke-direct {v0}, Lorg/apache/cordova/FileTransfer$1;-><init>()V

    sput-object v0, Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/apache/cordova/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 67
    iput-object v0, p0, Lorg/apache/cordova/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;
    .locals 5
    .parameter "errorCode"
    .parameter "source"
    .parameter "target"
    .parameter "httpStatus"

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, error:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1           #error:Lorg/json/JSONObject;
    .local v2, error:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "code"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 402
    const-string v3, "source"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    const-string v3, "target"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    if-eqz p4, :cond_0

    .line 405
    const-string v3, "http_status"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 410
    .end local v2           #error:Lorg/json/JSONObject;
    .restart local v1       #error:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    const-string v3, "FileTransfer"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #error:Lorg/json/JSONObject;
    .restart local v2       #error:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #error:Lorg/json/JSONObject;
    .restart local v1       #error:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;
    .locals 4
    .parameter "errorCode"
    .parameter "source"
    .parameter "target"
    .parameter "connection"

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, httpStatus:Ljava/lang/Integer;
    if-eqz p4, :cond_0

    .line 383
    :try_start_0
    invoke-virtual {p4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/IOException;
    const-string v2, "FileTransfer"

    const-string v3, "Error getting HTTP status code from connection."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 20
    .parameter "source"
    .parameter "target"

    .prologue
    .line 440
    const-string v17, "FileTransfer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "download "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v7, 0x0

    .line 444
    .local v7, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/cordova/FileTransfer;->getFileFromPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 447
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/cordova/api/CordovaInterface;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 452
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 453
    .local v16, url:Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 454
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 458
    .local v8, cookie:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 460
    const-string v17, "cookie"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 465
    const-string v17, "FileTransfer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Download file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 468
    .local v14, inputStream:Ljava/io/InputStream;
    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 469
    .local v5, buffer:[B
    const/4 v6, 0x0

    .line 471
    .local v6, bytesRead:I
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 474
    .local v15, outputStream:Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 475
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 495
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v8           #cookie:Ljava/lang/String;
    .end local v11           #file:Ljava/io/File;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .end local v16           #url:Ljava/net/URL;
    :catch_0
    move-exception v9

    .line 496
    .local v9, e:Ljava/io/FileNotFoundException;
    :try_start_1
    sget v17, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v10

    .line 497
    .local v10, error:Lorg/json/JSONObject;
    const-string v17, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v9           #e:Ljava/io/FileNotFoundException;
    .end local v10           #error:Lorg/json/JSONObject;
    :cond_1
    :goto_1
    return-object v17

    .line 478
    .restart local v5       #buffer:[B
    .restart local v6       #bytesRead:I
    .restart local v8       #cookie:Ljava/lang/String;
    .restart local v11       #file:Ljava/io/File;
    .restart local v14       #inputStream:Ljava/io/InputStream;
    .restart local v15       #outputStream:Ljava/io/FileOutputStream;
    .restart local v16       #url:Ljava/net/URL;
    :cond_2
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 480
    const-string v17, "FileTransfer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Saved file: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v13, Lorg/apache/cordova/FileUtils;

    invoke-direct {v13}, Lorg/apache/cordova/FileUtils;-><init>()V

    .line 484
    .local v13, fileUtil:Lorg/apache/cordova/FileUtils;
    invoke-virtual {v13, v11}, Lorg/apache/cordova/FileUtils;->getEntry(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v12

    .line 486
    .local v12, fileEntry:Lorg/json/JSONObject;
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 508
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 490
    .end local v5           #buffer:[B
    .end local v6           #bytesRead:I
    .end local v8           #cookie:Ljava/lang/String;
    .end local v12           #fileEntry:Lorg/json/JSONObject;
    .end local v13           #fileUtil:Lorg/apache/cordova/FileUtils;
    .end local v14           #inputStream:Ljava/io/InputStream;
    .end local v15           #outputStream:Ljava/io/FileOutputStream;
    .end local v16           #url:Ljava/net/URL;
    :cond_3
    :try_start_3
    const-string v17, "FileTransfer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Source URL is not in white list: \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget v17, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    const/16 v18, 0x191

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lorg/json/JSONObject;

    move-result-object v10

    .line 492
    .restart local v10       #error:Lorg/json/JSONObject;
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 508
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 499
    .end local v10           #error:Lorg/json/JSONObject;
    .end local v11           #file:Ljava/io/File;
    :catch_1
    move-exception v9

    .line 500
    .local v9, e:Ljava/net/MalformedURLException;
    :try_start_4
    sget v17, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v10

    .line 501
    .restart local v10       #error:Lorg/json/JSONObject;
    const-string v17, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 508
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 503
    .end local v9           #e:Ljava/net/MalformedURLException;
    .end local v10           #error:Lorg/json/JSONObject;
    :catch_2
    move-exception v9

    .line 504
    .local v9, e:Ljava/lang/Exception;
    :try_start_5
    sget v17, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v7}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v10

    .line 505
    .restart local v10       #error:Lorg/json/JSONObject;
    const-string v17, "FileTransfer"

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v10}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 508
    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 508
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #error:Lorg/json/JSONObject;
    :catchall_0
    move-exception v17

    if-eqz v7, :cond_4

    .line 509
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v17
.end method

.method private getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "args"
    .parameter "position"
    .parameter "defaultString"

    .prologue
    .line 421
    move-object v0, p3

    .line 422
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, p2, :cond_1

    .line 423
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    :cond_0
    move-object v0, p3

    .line 428
    :cond_1
    return-object v0
.end method

.method private getFileFromPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 547
    const-string v1, "file://"

    .line 549
    .local v1, prefix:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v0, file:Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 556
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 552
    .end local v0           #file:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #file:Ljava/io/File;
    goto :goto_0

    .line 559
    :cond_1
    return-object v0
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x7

    .line 522
    const-string v2, "content:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 524
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lorg/apache/cordova/FileTransfer;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 535
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 526
    :cond_0
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 528
    .local v0, question:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 529
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    .end local v0           #question:I
    :cond_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trustAllHosts()V
    .locals 5

    .prologue
    .line 350
    const/4 v3, 0x1

    new-array v2, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/cordova/FileTransfer$2;

    invoke-direct {v4, p0}, Lorg/apache/cordova/FileTransfer$2;-><init>(Lorg/apache/cordova/FileTransfer;)V

    aput-object v4, v2, v3

    .line 367
    .local v2, trustAllCerts:[Ljavax/net/ssl/TrustManager;
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 369
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 370
    .local v1, sc:Ljavax/net/ssl/SSLContext;
    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 371
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v1           #sc:Ljavax/net/ssl/SSLContext;
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "FileTransfer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;
    .locals 42
    .parameter "source"
    .parameter "target"
    .parameter "args"

    .prologue
    .line 107
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "upload "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " to "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v9, 0x0

    .line 112
    .local v9, conn:Ljava/net/HttpURLConnection;
    const/16 v39, 0x2

    :try_start_0
    const-string v40, "file"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 113
    .local v16, fileKey:Ljava/lang/String;
    const/16 v39, 0x3

    const-string v40, "image.jpg"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 114
    .local v17, fileName:Ljava/lang/String;
    const/16 v39, 0x4

    const-string v40, "image/jpeg"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/cordova/FileTransfer;->getArgument(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 115
    .local v28, mimeType:Ljava/lang/String;
    const/16 v39, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v29

    .line 116
    .local v29, params:Lorg/json/JSONObject;
    if-nez v29, :cond_0

    new-instance v29, Lorg/json/JSONObject;

    .end local v29           #params:Lorg/json/JSONObject;
    invoke-direct/range {v29 .. v29}, Lorg/json/JSONObject;-><init>()V

    .line 117
    .restart local v29       #params:Lorg/json/JSONObject;
    :cond_0
    const/16 v39, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v37

    .line 118
    .local v37, trustEveryone:Z
    const/16 v39, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v39

    if-nez v39, :cond_1

    const/16 v39, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_5

    :cond_1
    const/4 v8, 0x1

    .line 120
    .local v8, chunkedMode:Z
    :goto_0
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "fileKey: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "fileName: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mimeType: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "params: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "trustEveryone: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "chunkedMode: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v31, Lorg/apache/cordova/FileUploadResult;

    invoke-direct/range {v31 .. v31}, Lorg/apache/cordova/FileUploadResult;-><init>()V

    .line 131
    .local v31, result:Lorg/apache/cordova/FileUploadResult;
    invoke-direct/range {p0 .. p1}, Lorg/apache/cordova/FileTransfer;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v15

    check-cast v15, Ljava/io/FileInputStream;

    .line 133
    .local v15, fileInputStream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 138
    .local v11, dos:Ljava/io/DataOutputStream;
    const/16 v26, 0x1fa0

    .line 142
    .local v26, maxBufferSize:I
    new-instance v38, Ljava/net/URL;

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 145
    .local v38, url:Ljava/net/URL;
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    const-string v40, "https"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_7

    .line 147
    if-nez v37, :cond_6

    .line 148
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v39

    move-object/from16 v0, v39

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v9, v0

    .line 169
    :goto_1
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 172
    const/16 v39, 0x1

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 175
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 178
    const-string v39, "POST"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    const-string v39, "Connection"

    const-string v40, "Keep-Alive"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v39, "Content-Type"

    const-string v40, "multipart/form-data;boundary=*****"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7

    .line 184
    :try_start_1
    const-string v39, "headers"

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 185
    .local v20, headers:Lorg/json/JSONObject;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v23

    .local v23, iter:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_2

    .line 187
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 188
    .local v19, headerKey:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v19

    move-object/from16 v1, v39

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_2

    .line 190
    .end local v19           #headerKey:Ljava/lang/String;
    .end local v20           #headers:Lorg/json/JSONObject;
    .end local v23           #iter:Ljava/util/Iterator;
    :catch_0
    move-exception v39

    .line 195
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 196
    .local v10, cookie:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 197
    const-string v39, "Cookie"

    move-object/from16 v0, v39

    invoke-virtual {v9, v0, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_3
    const-string v14, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    .line 207
    .local v14, extraParams:Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #iter:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_8

    .line 208
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    .line 209
    .local v24, key:Ljava/lang/Object;
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    const-string v40, "headers"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_4

    .line 211
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "--*****\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 212
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\";"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 213
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\r\n\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 214
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 215
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v14

    goto/16 :goto_3

    .line 118
    .end local v8           #chunkedMode:Z
    .end local v10           #cookie:Ljava/lang/String;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v14           #extraParams:Ljava/lang/String;
    .end local v15           #fileInputStream:Ljava/io/FileInputStream;
    .end local v23           #iter:Ljava/util/Iterator;
    .end local v24           #key:Ljava/lang/Object;
    .end local v26           #maxBufferSize:I
    .end local v31           #result:Lorg/apache/cordova/FileUploadResult;
    .end local v38           #url:Ljava/net/URL;
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 154
    .restart local v8       #chunkedMode:Z
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    .restart local v15       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v26       #maxBufferSize:I
    .restart local v31       #result:Lorg/apache/cordova/FileUploadResult;
    .restart local v38       #url:Ljava/net/URL;
    :cond_6
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/cordova/FileTransfer;->trustAllHosts()V

    .line 155
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v21

    check-cast v21, Ljavax/net/ssl/HttpsURLConnection;

    .line 157
    .local v21, https:Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 159
    sget-object v39, Lorg/apache/cordova/FileTransfer;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 160
    move-object/from16 v9, v21

    .line 161
    goto/16 :goto_1

    .line 165
    .end local v21           #https:Ljavax/net/ssl/HttpsURLConnection;
    :cond_7
    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v39

    move-object/from16 v0, v39

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    goto/16 :goto_1

    .line 218
    .restart local v10       #cookie:Ljava/lang/String;
    .restart local v14       #extraParams:Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 219
    .local v12, e:Lorg/json/JSONException;
    const-string v39, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v12           #e:Lorg/json/JSONException;
    :cond_8
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "--*****\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 223
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "Content-Disposition: form-data; name=\""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\";"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " filename=\""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 225
    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "\"\r\nContent-Type: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "\r\n"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 226
    .local v27, midParams:Ljava/lang/String;
    const-string v34, "\r\n--*****--\r\n"

    .line 229
    .local v34, tailParams:Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 230
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 242
    :goto_4
    new-instance v11, Ljava/io/DataOutputStream;

    .end local v11           #dos:Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    invoke-virtual {v11, v14}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 245
    const-string v39, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 246
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v15}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 250
    .local v6, bytesAvailable:I
    move/from16 v0, v26

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 251
    .local v5, bufferSize:I
    new-array v4, v5, [B

    .line 254
    .local v4, buffer:[B
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v15, v4, v0, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 255
    .local v7, bytesRead:I
    const-wide/16 v35, 0x0

    .line 257
    .local v35, totalBytes:J
    :goto_5
    if-lez v7, :cond_b

    .line 258
    int-to-long v0, v7

    move-wide/from16 v39, v0

    add-long v35, v35, v39

    .line 259
    move-object/from16 v0, v31

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/FileUploadResult;->setBytesSent(J)V

    .line 260
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v11, v4, v0, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 261
    invoke-virtual {v15}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 262
    move/from16 v0, v26

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 263
    const/16 v39, 0x0

    move/from16 v0, v39

    invoke-virtual {v15, v4, v0, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    goto :goto_5

    .line 234
    .end local v4           #buffer:[B
    .end local v5           #bufferSize:I
    .end local v6           #bytesAvailable:I
    .end local v7           #bytesRead:I
    .end local v35           #totalBytes:J
    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v39

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v40

    add-int v39, v39, v40

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v40

    add-int v39, v39, v40

    const-string v40, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v40

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int v32, v39, v40

    .line 235
    .local v32, stringLength:I
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "String Length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v15}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v39

    move-wide/from16 v0, v39

    long-to-int v0, v0

    move/from16 v39, v0

    add-int v18, v39, v32

    .line 237
    .local v18, fixedLength:I
    const-string v39, "FileTransfer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Content Length: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_4

    .line 306
    .end local v8           #chunkedMode:Z
    .end local v10           #cookie:Ljava/lang/String;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v14           #extraParams:Ljava/lang/String;
    .end local v15           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #fileKey:Ljava/lang/String;
    .end local v17           #fileName:Ljava/lang/String;
    .end local v18           #fixedLength:I
    .end local v26           #maxBufferSize:I
    .end local v27           #midParams:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #params:Lorg/json/JSONObject;
    .end local v31           #result:Lorg/apache/cordova/FileUploadResult;
    .end local v32           #stringLength:I
    .end local v34           #tailParams:Ljava/lang/String;
    .end local v37           #trustEveryone:Z
    .end local v38           #url:Ljava/net/URL;
    :catch_2
    move-exception v12

    .line 307
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_5
    sget v39, Lorg/apache/cordova/FileTransfer;->FILE_NOT_FOUND_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v9}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 308
    .local v13, error:Lorg/json/JSONObject;
    const-string v39, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v13           #error:Lorg/json/JSONObject;
    :cond_a
    :goto_6
    return-object v39

    .line 267
    .restart local v4       #buffer:[B
    .restart local v5       #bufferSize:I
    .restart local v6       #bytesAvailable:I
    .restart local v7       #bytesRead:I
    .restart local v8       #chunkedMode:Z
    .restart local v10       #cookie:Ljava/lang/String;
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    .restart local v14       #extraParams:Ljava/lang/String;
    .restart local v15       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #fileKey:Ljava/lang/String;
    .restart local v17       #fileName:Ljava/lang/String;
    .restart local v26       #maxBufferSize:I
    .restart local v27       #midParams:Ljava/lang/String;
    .restart local v28       #mimeType:Ljava/lang/String;
    .restart local v29       #params:Lorg/json/JSONObject;
    .restart local v31       #result:Lorg/apache/cordova/FileUploadResult;
    .restart local v34       #tailParams:Ljava/lang/String;
    .restart local v35       #totalBytes:J
    .restart local v37       #trustEveryone:Z
    .restart local v38       #url:Ljava/net/URL;
    :cond_b
    :try_start_6
    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 271
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 272
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 275
    new-instance v30, Ljava/lang/StringBuffer;

    const-string v39, ""

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 278
    .local v30, responseString:Ljava/lang/StringBuffer;
    :try_start_7
    new-instance v22, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v39

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 285
    .local v22, inStream:Ljava/io/DataInputStream;
    :goto_7
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v25

    .local v25, line:Ljava/lang/String;
    if-eqz v25, :cond_c

    .line 286
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    .line 310
    .end local v4           #buffer:[B
    .end local v5           #bufferSize:I
    .end local v6           #bytesAvailable:I
    .end local v7           #bytesRead:I
    .end local v8           #chunkedMode:Z
    .end local v10           #cookie:Ljava/lang/String;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v14           #extraParams:Ljava/lang/String;
    .end local v15           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #fileKey:Ljava/lang/String;
    .end local v17           #fileName:Ljava/lang/String;
    .end local v22           #inStream:Ljava/io/DataInputStream;
    .end local v25           #line:Ljava/lang/String;
    .end local v26           #maxBufferSize:I
    .end local v27           #midParams:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #params:Lorg/json/JSONObject;
    .end local v30           #responseString:Ljava/lang/StringBuffer;
    .end local v31           #result:Lorg/apache/cordova/FileUploadResult;
    .end local v34           #tailParams:Ljava/lang/String;
    .end local v35           #totalBytes:J
    .end local v37           #trustEveryone:Z
    .end local v38           #url:Ljava/net/URL;
    :catch_3
    move-exception v12

    .line 311
    .local v12, e:Ljava/net/MalformedURLException;
    :try_start_9
    sget v39, Lorg/apache/cordova/FileTransfer;->INVALID_URL_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v9}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 312
    .restart local v13       #error:Lorg/json/JSONObject;
    const-string v39, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_6

    .line 279
    .end local v12           #e:Ljava/net/MalformedURLException;
    .end local v13           #error:Lorg/json/JSONObject;
    .restart local v4       #buffer:[B
    .restart local v5       #bufferSize:I
    .restart local v6       #bytesAvailable:I
    .restart local v7       #bytesRead:I
    .restart local v8       #chunkedMode:Z
    .restart local v10       #cookie:Ljava/lang/String;
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    .restart local v14       #extraParams:Ljava/lang/String;
    .restart local v15       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #fileKey:Ljava/lang/String;
    .restart local v17       #fileName:Ljava/lang/String;
    .restart local v26       #maxBufferSize:I
    .restart local v27       #midParams:Ljava/lang/String;
    .restart local v28       #mimeType:Ljava/lang/String;
    .restart local v29       #params:Lorg/json/JSONObject;
    .restart local v30       #responseString:Ljava/lang/StringBuffer;
    .restart local v31       #result:Lorg/apache/cordova/FileUploadResult;
    .restart local v34       #tailParams:Ljava/lang/String;
    .restart local v35       #totalBytes:J
    .restart local v37       #trustEveryone:Z
    .restart local v38       #url:Ljava/net/URL;
    :catch_4
    move-exception v12

    .line 280
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_a
    const-string v39, "FileTransfer"

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    new-instance v39, Ljava/io/IOException;

    const-string v40, "Received error from server"

    invoke-direct/range {v39 .. v40}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v39
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 314
    .end local v4           #buffer:[B
    .end local v5           #bufferSize:I
    .end local v6           #bytesAvailable:I
    .end local v7           #bytesRead:I
    .end local v8           #chunkedMode:Z
    .end local v10           #cookie:Ljava/lang/String;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v12           #e:Ljava/io/FileNotFoundException;
    .end local v14           #extraParams:Ljava/lang/String;
    .end local v15           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #fileKey:Ljava/lang/String;
    .end local v17           #fileName:Ljava/lang/String;
    .end local v26           #maxBufferSize:I
    .end local v27           #midParams:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #params:Lorg/json/JSONObject;
    .end local v30           #responseString:Ljava/lang/StringBuffer;
    .end local v31           #result:Lorg/apache/cordova/FileUploadResult;
    .end local v34           #tailParams:Ljava/lang/String;
    .end local v35           #totalBytes:J
    .end local v37           #trustEveryone:Z
    .end local v38           #url:Ljava/net/URL;
    :catch_5
    move-exception v12

    .line 315
    .local v12, e:Ljava/io/IOException;
    :try_start_b
    sget v39, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v9}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 316
    .restart local v13       #error:Lorg/json/JSONObject;
    const-string v39, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 288
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #error:Lorg/json/JSONObject;
    .restart local v4       #buffer:[B
    .restart local v5       #bufferSize:I
    .restart local v6       #bytesAvailable:I
    .restart local v7       #bytesRead:I
    .restart local v8       #chunkedMode:Z
    .restart local v10       #cookie:Ljava/lang/String;
    .restart local v11       #dos:Ljava/io/DataOutputStream;
    .restart local v14       #extraParams:Ljava/lang/String;
    .restart local v15       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #fileKey:Ljava/lang/String;
    .restart local v17       #fileName:Ljava/lang/String;
    .restart local v22       #inStream:Ljava/io/DataInputStream;
    .restart local v25       #line:Ljava/lang/String;
    .restart local v26       #maxBufferSize:I
    .restart local v27       #midParams:Ljava/lang/String;
    .restart local v28       #mimeType:Ljava/lang/String;
    .restart local v29       #params:Lorg/json/JSONObject;
    .restart local v30       #responseString:Ljava/lang/StringBuffer;
    .restart local v31       #result:Lorg/apache/cordova/FileUploadResult;
    .restart local v34       #tailParams:Ljava/lang/String;
    .restart local v35       #totalBytes:J
    .restart local v37       #trustEveryone:Z
    .restart local v38       #url:Ljava/net/URL;
    :cond_c
    :try_start_c
    const-string v39, "FileTransfer"

    const-string v40, "got response from server"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string v39, "FileTransfer"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v39

    move-object/from16 v0, v31

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponseCode(I)V

    .line 293
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/cordova/FileUploadResult;->setResponse(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataInputStream;->close()V

    .line 298
    if-eqz v37, :cond_d

    invoke-virtual/range {v38 .. v38}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v39

    const-string v40, "https"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_d

    .line 299
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/FileTransfer;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 303
    :cond_d
    const-string v39, "FileTransfer"

    const-string v40, "****** About to return a result from upload"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual/range {v31 .. v31}, Lorg/apache/cordova/FileUploadResult;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v41

    invoke-direct/range {v39 .. v41}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 318
    .end local v4           #buffer:[B
    .end local v5           #bufferSize:I
    .end local v6           #bytesAvailable:I
    .end local v7           #bytesRead:I
    .end local v8           #chunkedMode:Z
    .end local v10           #cookie:Ljava/lang/String;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v14           #extraParams:Ljava/lang/String;
    .end local v15           #fileInputStream:Ljava/io/FileInputStream;
    .end local v16           #fileKey:Ljava/lang/String;
    .end local v17           #fileName:Ljava/lang/String;
    .end local v22           #inStream:Ljava/io/DataInputStream;
    .end local v25           #line:Ljava/lang/String;
    .end local v26           #maxBufferSize:I
    .end local v27           #midParams:Ljava/lang/String;
    .end local v28           #mimeType:Ljava/lang/String;
    .end local v29           #params:Lorg/json/JSONObject;
    .end local v30           #responseString:Ljava/lang/StringBuffer;
    .end local v31           #result:Lorg/apache/cordova/FileUploadResult;
    .end local v34           #tailParams:Ljava/lang/String;
    .end local v35           #totalBytes:J
    .end local v37           #trustEveryone:Z
    .end local v38           #url:Ljava/net/URL;
    :catch_6
    move-exception v12

    .line 319
    .local v12, e:Lorg/json/JSONException;
    :try_start_d
    const-string v39, "FileTransfer"

    invoke-virtual {v12}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct/range {v39 .. v40}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 321
    .end local v12           #e:Lorg/json/JSONException;
    :catch_7
    move-exception v33

    .line 323
    .local v33, t:Ljava/lang/Throwable;
    :try_start_e
    sget v39, Lorg/apache/cordova/FileTransfer;->CONNECTION_ERR:I

    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v9}, Lorg/apache/cordova/FileTransfer;->createFileTransferError(ILjava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v13

    .line 324
    .restart local v13       #error:Lorg/json/JSONObject;
    const-string v39, "FileTransfer"

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    new-instance v39, Lorg/apache/cordova/api/PluginResult;

    sget-object v40, Lorg/apache/cordova/api/PluginResult$Status;->IO_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 327
    if-eqz v9, :cond_a

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_6

    .line 327
    .end local v13           #error:Lorg/json/JSONObject;
    .end local v33           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v39

    if-eqz v9, :cond_e

    .line 328
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e
    throw v39
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, source:Ljava/lang/String;
    const/4 v2, 0x0

    .line 77
    .local v2, target:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    const-string v3, "upload"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    invoke-direct {p0, v1, v2, p2}, Lorg/apache/cordova/FileTransfer;->upload(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v3

    .line 90
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "FileTransfer"

    const-string v4, "Missing source or target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v5, "Missing source or target"

    invoke-direct {v3, v4, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const-string v3, "download"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    invoke-direct {p0, v1, v2}, Lorg/apache/cordova/FileTransfer;->download(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;

    move-result-object v3

    goto :goto_0

    .line 90
    :cond_1
    new-instance v3, Lorg/apache/cordova/api/PluginResult;

    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method
