.class public Lcom/phonegap/Storage;
.super Lcom/phonegap/api/Plugin;
.source "Storage.java"


# instance fields
.field dbName:Ljava/lang/String;

.field myDb:Landroid/database/sqlite/SQLiteDatabase;

.field path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    iput-object v0, p0, Lcom/phonegap/Storage;->path:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/phonegap/Storage;->dbName:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 13
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 43
    sget-object v12, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 44
    .local v12, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v10, ""

    .line 48
    .local v10, result:Ljava/lang/String;
    :try_start_0
    const-string v0, "setStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/phonegap/Storage;->setStorage(Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    new-instance v0, Lcom/phonegap/api/PluginResult;

    invoke-direct {v0, v12, v10}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 65
    :goto_1
    return-object v0

    .line 51
    :cond_1
    const-string v0, "openDatabase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/Storage;->openDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v7

    .line 65
    .local v7, e:Lorg/json/JSONException;
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 54
    .end local v7           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v0, "executeSql"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 56
    .local v6, a:Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 57
    .local v9, len:I
    new-array v11, v9, [Ljava/lang/String;

    .line 58
    .local v11, s:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 59
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v8

    .line 58
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 61
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v11, v1}, Lcom/phonegap/Storage;->executeSql(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public executeSql(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "query"
    .parameter "params"
    .parameter "tx_id"

    .prologue
    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 143
    .local v1, myCursor:Landroid/database/Cursor;
    invoke-virtual {p0, v1, p3}, Lcom/phonegap/Storage;->processResults(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1           #myCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 148
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storage.executeSql(): Error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "droiddb.fail(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/phonegap/Storage;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    :cond_0
    return-void
.end method

.method public openDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "db"
    .parameter "version"
    .parameter "display_name"
    .parameter "size"

    .prologue
    .line 118
    iget-object v2, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/phonegap/Storage;->path:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/phonegap/Storage;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    .line 125
    .local v1, pack:Ljava/lang/Package;
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, appPackage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/phonegap/Storage;->setStorage(Ljava/lang/String;)V

    .line 129
    .end local v0           #appPackage:Ljava/lang/String;
    .end local v1           #pack:Ljava/lang/Package;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phonegap/Storage;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/Storage;->dbName:Ljava/lang/String;

    .line 130
    iget-object v2, p0, Lcom/phonegap/Storage;->dbName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/phonegap/Storage;->myDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    return-void
.end method

.method public processResults(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10
    .parameter "cur"
    .parameter "tx_id"

    .prologue
    .line 163
    const-string v5, "[]"

    .line 166
    .local v5, result:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 167
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 168
    .local v2, fullresult:Lorg/json/JSONArray;
    const-string v4, ""

    .line 169
    .local v4, key:Ljava/lang/String;
    const-string v7, ""

    .line 170
    .local v7, value:Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 174
    .local v0, colCount:I
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v6, row:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 177
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    .line 193
    .end local v0           #colCount:I
    .end local v2           #fullresult:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #row:Lorg/json/JSONObject;
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "droiddb.completeQuery(\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ");"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/phonegap/Storage;->sendJavascript(Ljava/lang/String;)V

    .line 195
    return-void

    .line 183
    .restart local v0       #colCount:I
    .restart local v2       #fullresult:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v6       #row:Lorg/json/JSONObject;
    .restart local v7       #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 2
    .parameter "appPackage"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/databases/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/Storage;->path:Ljava/lang/String;

    .line 105
    return-void
.end method
