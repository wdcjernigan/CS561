.class Lcom/airpush/android/PushService$GetMessageTask;
.super Landroid/os/AsyncTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/PushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMessageTask"
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
    .line 510
    iput-object p1, p0, Lcom/airpush/android/PushService$GetMessageTask;->this$0:Lcom/airpush/android/PushService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airpush/android/PushService;Lcom/airpush/android/PushService$GetMessageTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/airpush/android/PushService$GetMessageTask;-><init>(Lcom/airpush/android/PushService;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airpush/android/PushService$GetMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/airpush/android/PushService$GetMessageTask;->this$0:Lcom/airpush/android/PushService;

    #calls: Lcom/airpush/android/PushService;->startReciever()V
    invoke-static {v0}, Lcom/airpush/android/PushService;->access$1(Lcom/airpush/android/PushService;)V

    .line 519
    const/4 v0, 0x0

    return-object v0
.end method
