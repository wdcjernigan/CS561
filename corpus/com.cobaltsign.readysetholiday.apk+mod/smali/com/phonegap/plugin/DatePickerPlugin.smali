.class public Lcom/phonegap/plugin/DatePickerPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "DatePickerPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;,
        Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;
    }
.end annotation


# static fields
.field private static final ACTION_DATE:Ljava/lang/String; = "date"

.field private static final ACTION_TIME:Ljava/lang/String; = "time"


# instance fields
.field private final pluginName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 37
    const-string v0, "DatePickerPlugin"

    iput-object v0, p0, Lcom/phonegap/plugin/DatePickerPlugin;->pluginName:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 4
    .parameter "action"
    .parameter "data"
    .parameter "callBackId"

    .prologue
    .line 47
    const-string v1, "DatePickerPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DatePicker called with options: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v0, 0x0

    .line 50
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {p0, p2, p3}, Lcom/phonegap/plugin/DatePickerPlugin;->show(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    .end local v0           #result:Lorg/apache/cordova/api/PluginResult;
    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 52
    .restart local v0       #result:Lorg/apache/cordova/api/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 54
    return-object v0
.end method

.method public declared-synchronized show(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 27
    .parameter "data"
    .parameter "callBackId"

    .prologue
    .line 59
    monitor-enter p0

    move-object/from16 v3, p0

    .line 60
    .local v3, datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phonegap/plugin/DatePickerPlugin;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v2}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lorg/apache/cordova/DroidGap;

    .line 61
    .local v5, currentCtx:Lorg/apache/cordova/DroidGap;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 64
    .local v17, c:Ljava/util/Calendar;
    const-string v16, "date"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .local v16, action:Ljava/lang/String;
    const/16 v23, -0x1

    .local v23, month:I
    const/16 v19, -0x1

    .local v19, day:I
    const/16 v26, -0x1

    .local v26, year:I
    const/16 v21, -0x1

    .local v21, hour:I
    const/16 v22, -0x1

    .line 72
    .local v22, min:I
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    .line 73
    .local v24, obj:Lorg/json/JSONObject;
    const-string v2, "mode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 75
    const-string v2, "date"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 77
    .local v25, optionDate:Ljava/lang/String;
    const-string v2, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 78
    .local v18, datePart:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 79
    const/4 v2, 0x1

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 80
    const/4 v2, 0x2

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 81
    const/4 v2, 0x3

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 82
    const/4 v2, 0x4

    aget-object v2, v18, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v22

    .line 92
    .end local v18           #datePart:[Ljava/lang/String;
    .end local v24           #obj:Lorg/json/JSONObject;
    .end local v25           #optionDate:Ljava/lang/String;
    :goto_0
    const/4 v2, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 93
    .local v13, mYear:I
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_1

    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 94
    .local v14, mMonth:I
    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_2

    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 95
    .local v15, mDay:I
    :goto_3
    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    const/16 v2, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 96
    .local v6, mHour:I
    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_4

    const/16 v2, 0xc

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 98
    .local v7, mMinutes:I
    :goto_5
    const-string v2, "time"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 99
    new-instance v1, Lcom/phonegap/plugin/DatePickerPlugin$1;

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/phonegap/plugin/DatePickerPlugin$1;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lorg/apache/cordova/DroidGap;II)V

    .line 123
    .local v1, runnable:Ljava/lang/Runnable;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/phonegap/plugin/DatePickerPlugin;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/api/LegacyContext;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v1           #runnable:Ljava/lang/Runnable;
    :goto_7
    monitor-exit p0

    return-void

    .line 87
    .end local v6           #mHour:I
    .end local v7           #mMinutes:I
    .end local v13           #mYear:I
    .end local v14           #mMonth:I
    .end local v15           #mDay:I
    :catch_0
    move-exception v20

    .line 88
    .local v20, e:Lorg/json/JSONException;
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 59
    .end local v5           #currentCtx:Lorg/apache/cordova/DroidGap;
    .end local v16           #action:Ljava/lang/String;
    .end local v17           #c:Ljava/util/Calendar;
    .end local v19           #day:I
    .end local v20           #e:Lorg/json/JSONException;
    .end local v21           #hour:I
    .end local v22           #min:I
    .end local v23           #month:I
    .end local v26           #year:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v5       #currentCtx:Lorg/apache/cordova/DroidGap;
    .restart local v16       #action:Ljava/lang/String;
    .restart local v17       #c:Ljava/util/Calendar;
    .restart local v19       #day:I
    .restart local v21       #hour:I
    .restart local v22       #min:I
    .restart local v23       #month:I
    .restart local v26       #year:I
    :cond_0
    move/from16 v13, v26

    .line 92
    goto :goto_1

    .line 93
    .restart local v13       #mYear:I
    :cond_1
    add-int/lit8 v14, v23, -0x1

    goto :goto_2

    .restart local v14       #mMonth:I
    :cond_2
    move/from16 v15, v19

    .line 94
    goto :goto_3

    .restart local v15       #mDay:I
    :cond_3
    move/from16 v6, v21

    .line 95
    goto :goto_4

    .restart local v6       #mHour:I
    :cond_4
    move/from16 v7, v22

    .line 96
    goto :goto_5

    .line 108
    .restart local v7       #mMinutes:I
    :cond_5
    :try_start_4
    const-string v2, "date"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 109
    new-instance v1, Lcom/phonegap/plugin/DatePickerPlugin$2;

    move-object v8, v1

    move-object/from16 v9, p0

    move-object v10, v3

    move-object/from16 v11, p2

    move-object v12, v5

    invoke-direct/range {v8 .. v15}, Lcom/phonegap/plugin/DatePickerPlugin$2;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lorg/apache/cordova/DroidGap;III)V

    .line 118
    .restart local v1       #runnable:Ljava/lang/Runnable;
    goto :goto_6

    .line 119
    .end local v1           #runnable:Ljava/lang/Runnable;
    :cond_6
    const-string v2, "DatePickerPlugin"

    const-string v4, "Unknown action. Only \'date\' or \'time\' are valid actions"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7
.end method
