.class Lcom/airpush/android/Airpush$1;
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
    iput-object p1, p0, Lcom/airpush/android/Airpush$1;->this$0:Lcom/airpush/android/Airpush;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/airpush/android/Airpush$1;->this$0:Lcom/airpush/android/Airpush;

    #calls: Lcom/airpush/android/Airpush;->send()V
    invoke-static {v0}, Lcom/airpush/android/Airpush;->access$0(Lcom/airpush/android/Airpush;)V

    .line 722
    return-void
.end method
