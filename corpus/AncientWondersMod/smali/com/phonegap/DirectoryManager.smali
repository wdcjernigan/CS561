.class public Lcom/phonegap/DirectoryManager;
.super Ljava/lang/Object;
.source "DirectoryManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DirectoryManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "file1"
    .parameter "file2"

    .prologue
    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, newPath:Ljava/io/File;
    :goto_0
    return-object v0

    .line 228
    .end local v0           #newPath:Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0       #newPath:Ljava/io/File;
    goto :goto_0
.end method

.method protected static createDirectory(Ljava/lang/String;)Z
    .locals 4
    .parameter "directoryName"

    .prologue
    .line 91
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 93
    .local v1, path:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/phonegap/DirectoryManager;->constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, newPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 95
    .local v2, status:Z
    const/4 v2, 0x1

    .line 102
    .end local v0           #newPath:Ljava/io/File;
    .end local v1           #path:Ljava/io/File;
    :goto_0
    return v2

    .line 100
    .end local v2           #status:Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #status:Z
    goto :goto_0
.end method

.method protected static deleteDirectory(Ljava/lang/String;)Z
    .locals 10
    .parameter "fileName"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 137
    .local v0, checker:Ljava/lang/SecurityManager;
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, ""

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 138
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 139
    .local v6, path:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/phonegap/DirectoryManager;->constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 140
    .local v5, newPath:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 144
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, listfile:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    array-length v8, v4

    if-ge v3, v8, :cond_0

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v3

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, deletedFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v1           #deletedFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 153
    const-string v8, "DirectoryManager deleteDirectory"

    invoke-static {v8, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v7, 0x1

    .line 172
    .end local v3           #i:I
    .end local v4           #listfile:[Ljava/lang/String;
    .end local v5           #newPath:Ljava/io/File;
    .end local v6           #path:Ljava/io/File;
    .local v7, status:Z
    :goto_1
    return v7

    .line 156
    .end local v7           #status:Z
    .restart local v3       #i:I
    .restart local v4       #listfile:[Ljava/lang/String;
    .restart local v5       #newPath:Ljava/io/File;
    .restart local v6       #path:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 157
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const/4 v7, 0x0

    .restart local v7       #status:Z
    goto :goto_1

    .line 164
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:I
    .end local v4           #listfile:[Ljava/lang/String;
    .end local v7           #status:Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #status:Z
    goto :goto_1

    .line 170
    .end local v5           #newPath:Ljava/io/File;
    .end local v6           #path:Ljava/io/File;
    .end local v7           #status:Z
    :cond_2
    const/4 v7, 0x0

    .restart local v7       #status:Z
    goto :goto_1
.end method

.method protected static deleteFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "fileName"

    .prologue
    .line 183
    new-instance v0, Ljava/lang/SecurityManager;

    invoke-direct {v0}, Ljava/lang/SecurityManager;-><init>()V

    .line 186
    .local v0, checker:Ljava/lang/SecurityManager;
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 188
    .local v2, path:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/phonegap/DirectoryManager;->constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 189
    .local v1, newPath:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 194
    :try_start_0
    const-string v5, "DirectoryManager deleteFile"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    const/4 v4, 0x1

    .line 212
    .end local v1           #newPath:Ljava/io/File;
    .end local v2           #path:Ljava/io/File;
    .local v4, status:Z
    :goto_0
    return v4

    .line 197
    .end local v4           #status:Z
    .restart local v1       #newPath:Ljava/io/File;
    .restart local v2       #path:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 198
    .local v3, se:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 199
    const/4 v4, 0x0

    .line 200
    .restart local v4       #status:Z
    goto :goto_0

    .line 204
    .end local v3           #se:Ljava/lang/SecurityException;
    .end local v4           #status:Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4       #status:Z
    goto :goto_0

    .line 210
    .end local v1           #newPath:Ljava/io/File;
    .end local v2           #path:Ljava/io/File;
    .end local v4           #status:Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #status:Z
    goto :goto_0
.end method

.method protected static getFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "filePath"

    .prologue
    .line 242
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, fp:Ljava/io/File;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v2, obj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "name"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v3, "lastModifiedDate"

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v3, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v2

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "DirectoryManager"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static getFreeDiskSpace()J
    .locals 14

    .prologue
    .line 59
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, status:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 63
    .local v5, freeSpace:J
    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 66
    .local v7, path:Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 67
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    .line 68
    .local v2, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    .line 69
    .local v0, availableBlocks:J
    mul-long v10, v0, v2

    const-wide/16 v12, 0x400

    div-long v5, v10, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v7           #path:Ljava/io/File;
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_0
    move-wide v10, v5

    .line 78
    :goto_1
    return-wide v10

    .line 70
    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    const-wide/16 v10, -0x1

    goto :goto_1
.end method

.method protected static getRootPaths()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 268
    .local v1, retVal:Lorg/json/JSONArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, path:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 270
    return-object v1
.end method

.method protected static testFileExists(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 41
    invoke-static {}, Lcom/phonegap/DirectoryManager;->testSaveLocationExists()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 43
    .local v1, path:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/phonegap/DirectoryManager;->constructFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, newPath:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 50
    .end local v0           #newPath:Ljava/io/File;
    .end local v1           #path:Ljava/io/File;
    .local v2, status:Z
    :goto_0
    return v2

    .line 48
    .end local v2           #status:Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #status:Z
    goto :goto_0
.end method

.method protected static testSaveLocationExists()Z
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, sDCardStatus:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 123
    .local v1, status:Z
    :goto_0
    return v1

    .line 121
    .end local v1           #status:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #status:Z
    goto :goto_0
.end method
