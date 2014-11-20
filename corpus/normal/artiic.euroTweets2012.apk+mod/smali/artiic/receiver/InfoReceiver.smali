.class public Lartiic/receiver/InfoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InfoReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Prueba"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v13, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 25
    .local v7, nm:Landroid/app/NotificationManager;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 26
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    const-string v13, "com.parse.Data"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, message:Ljava/lang/String;
    :goto_0
    const-string v10, ""

    .line 32
    .local v10, texto:Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v5, jObject:Lorg/json/JSONObject;
    const-string v13, "t"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 45
    .end local v5           #jObject:Lorg/json/JSONObject;
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-class v13, Lartiic/euroTweets2012/EuroTweets2012Activity;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v4, intent2:Landroid/content/Intent;
    const/high16 v13, 0x1000

    invoke-virtual {v4, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const/4 v13, 0x0

    .line 50
    const/high16 v14, 0x1000

    .line 49
    move-object/from16 v0, p1

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 53
    .local v1, contentIntent:Landroid/app/PendingIntent;
    move-object v11, v10

    .line 54
    .local v11, tickerText:Ljava/lang/String;
    const-string v12, "EuroTweets 2012"

    .line 55
    .local v12, titulo:Ljava/lang/String;
    move-object v2, v10

    .line 58
    .local v2, detalle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "logoeurotweet2012"

    const-string v15, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 61
    .local v9, ressourceId:I
    new-instance v8, Landroid/app/Notification;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 61
    invoke-direct {v8, v9, v11, v13, v14}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 65
    .local v8, notif:Landroid/app/Notification;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v12, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 70
    const/4 v13, -0x1

    iput v13, v8, Landroid/app/Notification;->defaults:I

    .line 71
    iget v13, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v8, Landroid/app/Notification;->flags:I

    .line 78
    const/4 v13, 0x1

    invoke-virtual {v7, v13, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 80
    return-void

    .line 26
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #detalle:Ljava/lang/String;
    .end local v4           #intent2:Landroid/content/Intent;
    .end local v6           #message:Ljava/lang/String;
    .end local v8           #notif:Landroid/app/Notification;
    .end local v9           #ressourceId:I
    .end local v10           #texto:Ljava/lang/String;
    .end local v11           #tickerText:Ljava/lang/String;
    .end local v12           #titulo:Ljava/lang/String;
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 37
    .restart local v6       #message:Ljava/lang/String;
    .restart local v10       #texto:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_1
.end method
