.class Lcom/airpush/android/PushAds$8;
.super Ljava/lang/Object;
.source "PushAds.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airpush/android/PushAds;->showDialog()V
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
    iput-object p1, p0, Lcom/airpush/android/PushAds$8;->this$0:Lcom/airpush/android/PushAds;

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Lcom/airpush/android/PushAds$8;->this$0:Lcom/airpush/android/PushAds;

    #setter for: Lcom/airpush/android/PushAds;->showDialog:Z
    invoke-static {v0, v1}, Lcom/airpush/android/PushAds;->access$12(Lcom/airpush/android/PushAds;Z)V

    .line 367
    iget-object v0, p0, Lcom/airpush/android/PushAds$8;->this$0:Lcom/airpush/android/PushAds;

    #setter for: Lcom/airpush/android/PushAds;->showAd:Z
    invoke-static {v0, v1}, Lcom/airpush/android/PushAds;->access$13(Lcom/airpush/android/PushAds;Z)V

    .line 368
    iget-object v0, p0, Lcom/airpush/android/PushAds$8;->this$0:Lcom/airpush/android/PushAds;

    #calls: Lcom/airpush/android/PushAds;->startAirpush()V
    invoke-static {v0}, Lcom/airpush/android/PushAds;->access$14(Lcom/airpush/android/PushAds;)V

    .line 370
    iget-object v0, p0, Lcom/airpush/android/PushAds$8;->this$0:Lcom/airpush/android/PushAds;

    invoke-virtual {v0}, Lcom/airpush/android/PushAds;->finish()V

    .line 372
    return-void
.end method
