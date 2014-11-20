.class public Lartiic/receiver/GoalReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoalReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 24
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v29

    const-string v30, "Prueba"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v29, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 26
    .local v16, nm:Landroid/app/NotificationManager;
    const-string v29, "EURO_TWEETS_2012"

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 28
    .local v24, settings:Landroid/content/SharedPreferences;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 29
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_2

    const-string v29, "com.parse.Data"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 31
    .local v14, message:Ljava/lang/String;
    :goto_0
    const-string v12, ""

    .local v12, local:Ljava/lang/String;
    const-string v28, ""

    .line 32
    .local v28, visitante:Ljava/lang/String;
    const-string v7, ""

    .line 33
    .local v7, escudo:Ljava/lang/String;
    const-string v23, ""

    .line 34
    .local v23, resultado:Ljava/lang/String;
    const-string v17, ""

    .line 35
    .local v17, nombreLocal:Ljava/lang/String;
    const-string v18, ""

    .line 36
    .local v18, nombreVisitante:Ljava/lang/String;
    const-string v9, ""

    .line 37
    .local v9, goleador:Ljava/lang/String;
    const-string v15, ""

    .line 38
    .local v15, minuto:Ljava/lang/String;
    const-string v20, ""

    .line 41
    .local v20, partido:Ljava/lang/String;
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v11, jObject:Lorg/json/JSONObject;
    const-string v29, "l"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 43
    const-string v29, "v"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 44
    const-string v29, "e"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    const-string v29, "r"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 46
    const-string v29, "h"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 47
    const-string v29, "a"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 48
    const-string v29, "g"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 49
    const-string v29, "p"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 59
    .end local v11           #jObject:Lorg/json/JSONObject;
    :goto_1
    new-instance v10, Landroid/content/Intent;

    const-class v29, Lartiic/euroTweets2012/GolesEnVivoActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v10, intent2:Landroid/content/Intent;
    const-string v29, "local"

    move-object/from16 v0, v29

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v29, "visitante"

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v29, "partido"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const/high16 v29, 0x1000

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v30

    const-wide v32, 0x408f400000000000L

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x3ff0

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    mul-int v29, v29, v30

    .line 67
    const/high16 v30, 0x1000

    .line 66
    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 70
    .local v5, contentIntent:Landroid/app/PendingIntent;
    const/4 v13, 0x0

    .local v13, localString:I
    const/16 v27, 0x0

    .line 71
    .local v27, visString:I
    const-string v29, "Espa\u00f1a"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    const-string v29, "Rep. Checa"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 81
    :cond_0
    :goto_2
    const-string v29, "Espa\u00f1a"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "Rep. Checa"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 93
    :cond_1
    :goto_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const v31, 0x7f060002

    invoke-virtual/range {v30 .. v31}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 94
    .local v25, tickerText:Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " - "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 95
    .local v26, titulo:Ljava/lang/String;
    move-object v6, v9

    .line 98
    .local v6, detalle:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v7, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 101
    .local v22, ressourceId:I
    new-instance v19, Landroid/app/Notification;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 101
    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v25

    move-wide/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 105
    .local v19, notif:Landroid/app/Notification;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v6, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 112
    const-string v29, "android.resource://artiic.euroTweets2012/2131034112"

    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 113
    .local v21, path:Landroid/net/Uri;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 114
    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 115
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 122
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, v16

    move/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 124
    return-void

    .line 29
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #detalle:Ljava/lang/String;
    .end local v7           #escudo:Ljava/lang/String;
    .end local v9           #goleador:Ljava/lang/String;
    .end local v10           #intent2:Landroid/content/Intent;
    .end local v12           #local:Ljava/lang/String;
    .end local v13           #localString:I
    .end local v14           #message:Ljava/lang/String;
    .end local v15           #minuto:Ljava/lang/String;
    .end local v17           #nombreLocal:Ljava/lang/String;
    .end local v18           #nombreVisitante:Ljava/lang/String;
    .end local v19           #notif:Landroid/app/Notification;
    .end local v20           #partido:Ljava/lang/String;
    .end local v21           #path:Landroid/net/Uri;
    .end local v22           #ressourceId:I
    .end local v23           #resultado:Ljava/lang/String;
    .end local v25           #tickerText:Ljava/lang/String;
    .end local v26           #titulo:Ljava/lang/String;
    .end local v27           #visString:I
    .end local v28           #visitante:Ljava/lang/String;
    :cond_2
    const-string v14, ""

    goto/16 :goto_0

    .line 74
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    .restart local v7       #escudo:Ljava/lang/String;
    .restart local v9       #goleador:Ljava/lang/String;
    .restart local v10       #intent2:Landroid/content/Intent;
    .restart local v12       #local:Ljava/lang/String;
    .restart local v13       #localString:I
    .restart local v14       #message:Ljava/lang/String;
    .restart local v15       #minuto:Ljava/lang/String;
    .restart local v17       #nombreLocal:Ljava/lang/String;
    .restart local v18       #nombreVisitante:Ljava/lang/String;
    .restart local v20       #partido:Ljava/lang/String;
    .restart local v23       #resultado:Ljava/lang/String;
    .restart local v27       #visString:I
    .restart local v28       #visitante:Ljava/lang/String;
    :cond_3
    const-string v29, "Espa\u00f1a"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "Espana"

    const-string v31, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 77
    :cond_4
    const-string v29, "Rep. Checa"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "RepCheca"

    const-string v31, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 84
    :cond_5
    const-string v29, "Espa\u00f1a"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 85
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "Espana"

    const-string v31, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_3

    .line 87
    :cond_6
    const-string v29, "Rep. Checa"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const-string v30, "RepCheca"

    const-string v31, "string"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    goto/16 :goto_3

    .line 51
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v10           #intent2:Landroid/content/Intent;
    .end local v13           #localString:I
    .end local v27           #visString:I
    :catch_0
    move-exception v29

    goto/16 :goto_1
.end method
