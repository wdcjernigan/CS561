.class Lcom/airpush/android/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/PushService;


# direct methods
.method constructor <init>(Lcom/airpush/android/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelNotification()V
    .locals 4

    .prologue
    .line 480
    :try_start_0
    const-string v1, "AirpushSDK"

    const-string v2, "Notification Expired"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    #getter for: Lcom/airpush/android/PushService;->notificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/airpush/android/PushService;->access$0(Lcom/airpush/android/PushService;)Landroid/app/NotificationManager;

    move-result-object v1

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/airpush/android/PushService$1;->this$0:Lcom/airpush/android/PushService;

    invoke-virtual {v1}, Lcom/airpush/android/PushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-static {v1, v2, v3}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/airpush/android/PushService$1;->cancelNotification()V

    .line 475
    return-void
.end method
