.class public Lcom/parse/StandardPushCallback;
.super Lcom/parse/PushCallback;
.source "StandardPushCallback.java"


# static fields
.field static disableNotifications:Z

.field static totalNotifications:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput v0, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 26
    sput-boolean v0, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parse/PushCallback;-><init>()V

    return-void
.end method

.method private makeBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.parse.Data"

    iget-object v2, p0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "com.parse.Channel"

    iget-object v2, p0, Lcom/parse/StandardPushCallback;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 36
    sget v14, Lcom/parse/StandardPushCallback;->totalNotifications:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/parse/StandardPushCallback;->totalNotifications:I

    .line 37
    sget-boolean v14, Lcom/parse/StandardPushCallback;->disableNotifications:Z

    if-eqz v14, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    if-nez v14, :cond_2

    .line 43
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    .line 46
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "action"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v1, broadcastIntent:Landroid/content/Intent;
    invoke-direct/range {p0 .. p0}, Lcom/parse/StandardPushCallback;->makeBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 50
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "action"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    invoke-virtual {v14}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "alert"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "title"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 60
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "alert"

    const-string v16, "Notification received."

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    .local v10, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->pushData:Lorg/json/JSONObject;

    const-string v15, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    move-object/from16 v16, v0

    const-string v17, "appName"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, title:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v15, "activityPackage"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v16, "activityClass"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .local v2, componentName:Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    const/high16 v14, 0x1000

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/parse/StandardPushCallback;->makeBundle()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    const/4 v15, 0x0

    const/high16 v16, 0x800

    move/from16 v0, v16

    invoke-static {v14, v15, v5, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 74
    .local v3, contentIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 75
    .local v12, when:J
    new-instance v7, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->localData:Lorg/json/JSONObject;

    const-string v15, "icon"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v7, v14, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 76
    .local v7, notif:Landroid/app/Notification;
    iget v14, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v7, Landroid/app/Notification;->flags:I

    .line 77
    iget v14, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v14, v14, -0x1

    iput v14, v7, Landroid/app/Notification;->defaults:I

    .line 78
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    invoke-virtual {v7, v14, v11, v10, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/parse/StandardPushCallback;->service:Landroid/app/Service;

    const-string v15, "notification"

    invoke-virtual {v14, v15}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 83
    .local v6, nm:Landroid/app/NotificationManager;
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 85
    .local v9, rand:Ljava/util/Random;
    const v14, 0x6acfc0

    const v15, 0xf4240

    invoke-virtual {v9, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    add-int v8, v14, v15

    .line 88
    .local v8, notificationId:I
    :try_start_0
    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v4

    .line 91
    .local v4, e:Ljava/lang/SecurityException;
    const/4 v14, 0x5

    iput v14, v7, Landroid/app/Notification;->defaults:I

    .line 92
    invoke-virtual {v6, v8, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method
