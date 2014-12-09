.class public Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;
.super Lcom/phonegap/api/Plugin;
.source "StatusBarNotification.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "notify"


# instance fields
.field private context:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNotification(I)V
    .locals 1
    .parameter "idNotify"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 119
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 9
    .parameter "action"
    .parameter "data"
    .parameter "callbackId"

    .prologue
    .line 60
    const-string v3, "notification"

    .line 61
    .local v3, ns:Ljava/lang/String;
    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v6, v3}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 62
    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v6}, Lcom/phonegap/api/PhonegapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->context:Landroid/content/Context;

    .line 64
    const/4 v4, 0x0

    .line 65
    .local v4, result:Lcom/phonegap/api/PluginResult;
    const-string v6, "notify"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, title:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, body:Ljava/lang/String;
    const-string v6, "NotificationPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Notification: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0, v5, v0}, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->showNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 72
    new-instance v4, Lcom/phonegap/api/PluginResult;

    .end local v4           #result:Lcom/phonegap/api/PluginResult;
    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0           #body:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    .restart local v4       #result:Lcom/phonegap/api/PluginResult;
    :cond_0
    :goto_0
    const-string v6, "clearnotify"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, id_notify:I
    const-string v6, "NotificationPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ID Notification: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, v1}, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->clearNotification(I)V

    .line 85
    new-instance v4, Lcom/phonegap/api/PluginResult;

    .end local v4           #result:Lcom/phonegap/api/PluginResult;
    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v1           #id_notify:I
    .restart local v4       #result:Lcom/phonegap/api/PluginResult;
    :goto_1
    return-object v4

    .line 73
    .end local v4           #result:Lcom/phonegap/api/PluginResult;
    :catch_0
    move-exception v2

    .line 74
    .local v2, jsonEx:Lorg/json/JSONException;
    const-string v6, "NotificationPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got JSON Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .restart local v4       #result:Lcom/phonegap/api/PluginResult;
    goto :goto_0

    .line 86
    .end local v2           #jsonEx:Lorg/json/JSONException;
    .end local v4           #result:Lcom/phonegap/api/PluginResult;
    :catch_1
    move-exception v2

    .line 87
    .restart local v2       #jsonEx:Lorg/json/JSONException;
    const-string v6, "NotificationPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Got JSON Exception "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v4, Lcom/phonegap/api/PluginResult;

    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 91
    .restart local v4       #result:Lcom/phonegap/api/PluginResult;
    goto :goto_1

    .line 92
    .end local v2           #jsonEx:Lorg/json/JSONException;
    :cond_1
    new-instance v4, Lcom/phonegap/api/PluginResult;

    .end local v4           #result:Lcom/phonegap/api/PluginResult;
    sget-object v6, Lcom/phonegap/api/PluginResult$Status;->INVALID_ACTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v4, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    .line 93
    .restart local v4       #result:Lcom/phonegap/api/PluginResult;
    const-string v6, "NotificationPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid action : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " passed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public showNotification(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 9
    .parameter "contentTitle"
    .parameter "contentText"

    .prologue
    const/4 v8, 0x0

    .line 105
    const v1, 0x7f020001

    .line 106
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 108
    .local v4, when:J
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2, v1, p1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 110
    .local v2, notification:Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    iget-object v7, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v3, notificationIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-static {v6, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 112
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, p1, p2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 114
    iget-object v6, p0, Lcom/phonegap/plugins/statusBarNotification/StatusBarNotification;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 115
    return-void
.end method
