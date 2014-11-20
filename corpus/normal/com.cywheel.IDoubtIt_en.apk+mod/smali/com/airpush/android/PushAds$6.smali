.class Lcom/airpush/android/PushAds$6;
.super Ljava/lang/Object;
.source "PushAds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/airpush/android/PushAds$6;->this$0:Lcom/airpush/android/PushAds;

    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/airpush/android/PushAds$6;->this$0:Lcom/airpush/android/PushAds;

    invoke-virtual {v0}, Lcom/airpush/android/PushAds;->finish()V

    .line 728
    return-void
.end method
