.class Lcom/airpush/android/PushAds$1;
.super Ljava/lang/Object;
.source "PushAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/PushAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/PushAds;


# direct methods
.method constructor <init>(Lcom/airpush/android/PushAds;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/PushAds$1;->this$0:Lcom/airpush/android/PushAds;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/airpush/android/PushAds$1;->this$0:Lcom/airpush/android/PushAds;

    #calls: Lcom/airpush/android/PushAds;->postValues()V
    invoke-static {v0}, Lcom/airpush/android/PushAds;->access$0(Lcom/airpush/android/PushAds;)V

    .line 395
    return-void
.end method
