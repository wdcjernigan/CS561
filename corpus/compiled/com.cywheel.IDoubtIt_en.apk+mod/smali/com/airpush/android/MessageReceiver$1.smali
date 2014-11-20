.class Lcom/airpush/android/MessageReceiver$1;
.super Ljava/lang/Object;
.source "MessageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airpush/android/MessageReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airpush/android/MessageReceiver;


# direct methods
.method constructor <init>(Lcom/airpush/android/MessageReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/airpush/android/MessageReceiver$1;->this$0:Lcom/airpush/android/MessageReceiver;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/airpush/android/MessageReceiver$1;->this$0:Lcom/airpush/android/MessageReceiver;

    #calls: Lcom/airpush/android/MessageReceiver;->getDataSharedprefrences()V
    invoke-static {v0}, Lcom/airpush/android/MessageReceiver;->access$0(Lcom/airpush/android/MessageReceiver;)V

    .line 105
    return-void
.end method
