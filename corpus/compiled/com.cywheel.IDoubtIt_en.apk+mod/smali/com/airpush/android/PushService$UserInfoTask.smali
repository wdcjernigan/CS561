.class Lcom/airpush/android/PushService$UserInfoTask;
.super Landroid/os/AsyncTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/PushService;


# direct methods
.method private constructor <init>(Lcom/airpush/android/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/airpush/android/PushService$UserInfoTask;->this$0:Lcom/airpush/android/PushService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$UserInfoTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService$UserInfoTask;-><init>(Lcom/airpush/android/PushService;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airpush/android/PushService$UserInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "arg0"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/airpush/android/PushService$UserInfoTask;->this$0:Lcom/airpush/android/PushService;

    invoke-static {}, Lcom/airpush/android/PushService;->access$2()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/airpush/android/PushService;->access$3()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/airpush/android/PushService;->access$4()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/airpush/android/PushService;->sendUserInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/airpush/android/PushService;->access$5(Lcom/airpush/android/PushService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    return-object v0
.end method
