.class public Lartiic/receiver/ActualizacionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActualizacionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Prueba"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v19, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 25
    .local v10, nm:Landroid/app/NotificationManager;
    const-string v19, "EURO_TWEETS_2012"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 27
    .local v13, settings:Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 28
    .local v6, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    const-string v19, "com.parse.Data"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 30
    .local v9, message:Ljava/lang/String;
    :goto_0
    const-string v14, ""

    .local v14, texto:Ljava/lang/String;
    const-string v3, ""

    .local v3, app:Ljava/lang/String;
    const-string v18, ""

    .line 34
    .local v18, version:Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    .local v8, jObject:Lorg/json/JSONObject;
    const-string v19, "t"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 36
    const-string v19, "a"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string v19, "v"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 48
    .end local v8           #jObject:Lorg/json/JSONObject;
    :goto_1
    const-string v19, "https://play.google.com/store/apps/details?id=artiic.euroTweets2012"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 49
    .local v17, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 51
    .local v7, intent2:Landroid/content/Intent;
    const/high16 v19, 0x1000

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    const/16 v19, 0x0

    .line 53
    const/high16 v20, 0x1000

    .line 52
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 56
    .local v4, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 57
    .local v15, tickerText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 58
    .local v16, titulo:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, detalle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "logoeurotweet2012"

    const-string v21, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 64
    .local v12, ressourceId:I
    new-instance v11, Landroid/app/Notification;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 64
    move-wide/from16 v0, v19

    invoke-direct {v11, v12, v15, v0, v1}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 68
    .local v11, notif:Landroid/app/Notification;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v11, v0, v1, v5, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 73
    const/16 v19, -0x1

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->defaults:I

    .line 74
    iget v0, v11, Landroid/app/Notification;->flags:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 81
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void

    .line 28
    .end local v3           #app:Ljava/lang/String;
    .end local v4           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #detalle:Ljava/lang/String;
    .end local v7           #intent2:Landroid/content/Intent;
    .end local v9           #message:Ljava/lang/String;
    .end local v11           #notif:Landroid/app/Notification;
    .end local v12           #ressourceId:I
    .end local v14           #texto:Ljava/lang/String;
    .end local v15           #tickerText:Ljava/lang/String;
    .end local v16           #titulo:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #version:Ljava/lang/String;
    :cond_0
    const-string v9, ""

    goto/16 :goto_0

    .line 40
    .restart local v3       #app:Ljava/lang/String;
    .restart local v9       #message:Ljava/lang/String;
    .restart local v14       #texto:Ljava/lang/String;
    .restart local v18       #version:Ljava/lang/String;
    :catch_0
    move-exception v19

    goto/16 :goto_1
.end method
