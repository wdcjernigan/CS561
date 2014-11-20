.class Lcom/airpush/android/Airpush$2;
.super Ljava/lang/Object;
.source "Airpush.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/Airpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/Airpush;


# direct methods
.method constructor <init>(Lcom/airpush/android/Airpush;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/Airpush$2;->this$0:Lcom/airpush/android/Airpush;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 727
    sget-object v0, Lcom/airpush/android/Airpush;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/airpush/android/Airpush;->access$1()J

    move-result-wide v1

    const-wide/32 v3, 0xea60

    mul-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 728
    return-void
.end method
