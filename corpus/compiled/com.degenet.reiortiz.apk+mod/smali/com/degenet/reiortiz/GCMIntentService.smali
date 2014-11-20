.class public Lcom/degenet/reiortiz/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "===GCMIntentService==="


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1022967219209"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "errorId"

    .prologue
    .line 77
    const-string v0, "===GCMIntentService==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 42
    .local v7, res:Landroid/content/res/Resources;
    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, message:Ljava/lang/String;
    const-string v9, "===GCMIntentService==="

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "new message= "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v8, "Nuevo Mensaje!"

    .line 46
    .local v8, title:Ljava/lang/String;
    const-string v9, "notification"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 47
    .local v4, notificationManager:Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/degenet/reiortiz/ReiOrtizActivity;

    invoke-direct {v3, p1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v3, notificationIntent:Landroid/content/Intent;
    const-string v9, "message"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 49
    const-string v9, "message"

    invoke-virtual {v3, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 v9, 0x2400

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    long-to-int v6, v9

    .line 53
    .local v6, requestID:I
    const/4 v9, 0x0

    invoke-static {p1, v6, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 55
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 57
    const/high16 v10, 0x7f02

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 58
    const/high16 v10, 0x7f02

    invoke-static {v7, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 59
    invoke-virtual {v9, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 61
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 62
    invoke-virtual {v9, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 63
    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 64
    invoke-virtual {v9, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 66
    .local v2, n:Landroid/app/Notification;
    iget v9, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v2, Landroid/app/Notification;->flags:I

    .line 67
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 69
    sget-object v9, Lcom/degenet/reiortiz/ReiOrtizActivity;->_ReiOrtizActivityInstance:Lcom/degenet/reiortiz/ReiOrtizActivity;

    if-eqz v9, :cond_0

    .line 70
    sget-object v9, Lcom/degenet/reiortiz/ReiOrtizActivity;->_ReiOrtizActivityInstance:Lcom/degenet/reiortiz/ReiOrtizActivity;

    invoke-virtual {v9, v3}, Lcom/degenet/reiortiz/ReiOrtizActivity;->setIntent(Landroid/content/Intent;)V

    .line 72
    :cond_0
    return-void
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "registrationId"

    .prologue
    .line 27
    const-string v0, "===GCMIntentService==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Device registered: regId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sput-object p2, Lcom/degenet/reiortiz/ReiOrtizActivity;->_deviceToken:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/degenet/reiortiz/ReiOrtizActivity;->_ReiOrtizActivityInstance:Lcom/degenet/reiortiz/ReiOrtizActivity;

    invoke-virtual {v0}, Lcom/degenet/reiortiz/ReiOrtizActivity;->registerDeviceTokenOnAM()V

    .line 30
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 34
    const-string v0, "===GCMIntentService==="

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregistered = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
