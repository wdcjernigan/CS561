.class public Lcom/phonegap/FileUtils;
.super Lcom/phonegap/api/Plugin;
.source "FileUtils.java"


# static fields
.field public static ABORT_ERR:I

.field public static ENCODING_ERR:I

.field public static INVALID_STATE_ERR:I

.field public static NOT_FOUND_ERR:I

.field public static NOT_READABLE_ERR:I

.field public static NO_MODIFICATION_ALLOWED_ERR:I

.field public static SECURITY_ERR:I

.field public static SYNTAX_ERR:I


# instance fields
.field f_in:Ljava/io/FileReader;

.field f_out:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/FileUtils;->SECURITY_ERR:I

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/phonegap/FileUtils;->ABORT_ERR:I

    .line 33
    const/4 v0, 0x4

    sput v0, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lcom/phonegap/FileUtils;->ENCODING_ERR:I

    .line 35
    const/4 v0, 0x6

    sput v0, Lcom/phonegap/FileUtils;->NO_MODIFICATION_ALLOWED_ERR:I

    .line 36
    const/4 v0, 0x7

    sput v0, Lcom/phonegap/FileUtils;->INVALID_STATE_ERR:I

    .line 37
    const/16 v0, 0x8

    sput v0, Lcom/phonegap/FileUtils;->SYNTAX_ERR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 46
    return-void
.end method

.method private getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 299
    const-string v1, "content"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 301
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/phonegap/FileUtils;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v1}, Lcom/phonegap/api/PhonegapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 304
    .end local v0           #uri:Landroid/net/Uri;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private truncateFile(Ljava/lang/String;J)J
    .locals 4
    .parameter "filename"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v1, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 284
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0, p2, p3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 288
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p2

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 15
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 57
    sget-object v10, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 58
    .local v10, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v8, ""

    .line 62
    .local v8, result:Ljava/lang/String;
    :try_start_0
    const-string v11, "testSaveLocationExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 63
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v1

    .line 64
    .local v1, b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    .line 159
    .end local v1           #b:Z
    :goto_0
    return-object v11

    .line 66
    :cond_0
    const-string v11, "getFreeDiskSpace"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 67
    invoke-static {}, Lcom/phonegap/DirectoryManager;->getFreeDiskSpace()J

    move-result-wide v5

    .line 68
    .local v5, l:J
    new-instance v11, Lcom/phonegap/api/PluginResult;

    long-to-float v12, v5

    invoke-direct {v11, v10, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v5           #l:J
    :catch_0
    move-exception v2

    .line 158
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 159
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v11, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0

    .line 70
    .end local v2           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v11, "testFileExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 71
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 72
    .restart local v1       #b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    goto :goto_0

    .line 74
    .end local v1           #b:Z
    :cond_2
    const-string v11, "testDirectoryExists"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 75
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->testFileExists(Ljava/lang/String;)Z

    move-result v1

    .line 76
    .restart local v1       #b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    goto :goto_0

    .line 78
    .end local v1           #b:Z
    :cond_3
    const-string v11, "deleteDirectory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 79
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->deleteDirectory(Ljava/lang/String;)Z

    move-result v1

    .line 80
    .restart local v1       #b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    goto :goto_0

    .line 82
    .end local v1           #b:Z
    :cond_4
    const-string v11, "deleteFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 83
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->deleteFile(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .restart local v1       #b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    goto/16 :goto_0

    .line 86
    .end local v1           #b:Z
    :cond_5
    const-string v11, "createDirectory"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 87
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->createDirectory(Ljava/lang/String;)Z

    move-result v1

    .line 88
    .restart local v1       #b:Z
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V

    goto/16 :goto_0

    .line 90
    .end local v1           #b:Z
    :cond_6
    const-string v11, "getRootPaths"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 91
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-static {}, Lcom/phonegap/DirectoryManager;->getRootPaths()Lorg/json/JSONArray;

    move-result-object v12

    invoke-direct {v11, v10, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 93
    :cond_7
    const-string v11, "readAsText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    if-eqz v11, :cond_8

    .line 95
    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/phonegap/FileUtils;->readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 96
    .local v9, s:Ljava/lang/String;
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v9           #s:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 98
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 99
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 100
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 101
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 105
    .end local v2           #e:Ljava/io/IOException;
    :cond_8
    const-string v11, "readAsDataURL"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v11

    if-eqz v11, :cond_9

    .line 107
    const/4 v11, 0x0

    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/phonegap/FileUtils;->readAsDataURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .restart local v9       #s:Ljava/lang/String;
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v9}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 109
    .end local v9           #s:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 110
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 111
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 112
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 113
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 117
    .end local v2           #e:Ljava/io/IOException;
    :cond_9
    const-string v11, "writeAsText"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v11

    if-eqz v11, :cond_b

    .line 119
    const/4 v11, 0x0

    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/phonegap/FileUtils;->writeAsText(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 156
    :cond_a
    :try_start_7
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v8}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :catch_5
    move-exception v2

    .line 121
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 122
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 123
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 125
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :cond_b
    const-string v11, "write"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v11

    if-eqz v11, :cond_c

    .line 130
    const/4 v11, 0x0

    :try_start_8
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v13

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/phonegap/FileUtils;->write(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    .line 131
    .local v3, fileSize:J
    new-instance v11, Lcom/phonegap/api/PluginResult;

    long-to-float v12, v3

    invoke-direct {v11, v10, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 132
    .end local v3           #fileSize:J
    :catch_7
    move-exception v2

    .line 133
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 134
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 135
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v2

    .line 136
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 140
    .end local v2           #e:Ljava/io/IOException;
    :cond_c
    const-string v11, "truncate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v11

    if-eqz v11, :cond_d

    .line 142
    const/4 v11, 0x0

    :try_start_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v12

    invoke-direct {p0, v11, v12, v13}, Lcom/phonegap/FileUtils;->truncateFile(Ljava/lang/String;J)J

    move-result-wide v3

    .line 143
    .restart local v3       #fileSize:J
    new-instance v11, Lcom/phonegap/api/PluginResult;

    long-to-float v12, v3

    invoke-direct {v11, v10, v12}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 144
    .end local v3           #fileSize:J
    :catch_9
    move-exception v2

    .line 145
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 146
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_FOUND_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 147
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v2

    .line 148
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 149
    new-instance v11, Lcom/phonegap/api/PluginResult;

    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    sget v13, Lcom/phonegap/FileUtils;->NOT_READABLE_ERR:I

    invoke-direct {v11, v12, v13}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;I)V

    goto/16 :goto_0

    .line 152
    .end local v2           #e:Ljava/io/IOException;
    :cond_d
    const-string v11, "getFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 153
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/phonegap/DirectoryManager;->getFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 154
    .local v7, obj:Lorg/json/JSONObject;
    new-instance v11, Lcom/phonegap/api/PluginResult;

    invoke-direct {v11, v10, v7}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Lorg/json/JSONObject;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 170
    const-string v1, "readAsText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    const-string v1, "readAsDataURL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    const-string v1, "writeAsText"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readAsDataURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x0

    .line 214
    new-array v3, v11, [B

    .line 215
    .local v3, bytes:[B
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x400

    invoke-direct {v1, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 216
    .local v1, bis:Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .line 218
    .local v7, numRead:I
    :goto_0
    invoke-virtual {v1, v3, v10, v11}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_0

    .line 219
    invoke-virtual {v2, v3, v10, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 224
    .local v6, map:Landroid/webkit/MimeTypeMap;
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, contentType:Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v8, "content"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 226
    const-string v4, "image/jpeg"

    .line 229
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    .line 230
    .local v0, base64:[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";base64,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, data:Ljava/lang/String;
    return-object v5
.end method

.method public readAsText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filename"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, 0x0

    .line 196
    new-array v2, v7, [B

    .line 197
    .local v2, bytes:[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lcom/phonegap/FileUtils;->getPathFromUri(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 198
    .local v0, bis:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 200
    .local v3, numRead:I
    :goto_0
    invoke-virtual {v0, v2, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 201
    invoke-virtual {v1, v2, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 203
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v4
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .parameter "filename"
    .parameter "data"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v0, file:Ljava/io/RandomAccessFile;
    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 265
    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 268
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public writeAsText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "filename"
    .parameter "data"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 243
    move-object v0, p1

    .line 244
    .local v0, FilePath:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 245
    .local v4, rawData:[B
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 246
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 247
    .local v3, out:Ljava/io/FileOutputStream;
    array-length v5, v4

    new-array v1, v5, [B

    .line 248
    .local v1, buff:[B
    array-length v5, v1

    invoke-virtual {v2, v1, v6, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 249
    array-length v5, v4

    invoke-virtual {v3, v1, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 250
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 251
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 252
    return-void
.end method
