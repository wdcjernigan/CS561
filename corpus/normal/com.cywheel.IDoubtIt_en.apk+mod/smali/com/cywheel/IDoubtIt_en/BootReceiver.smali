.class public Lcom/cywheel/IDoubtIt_en/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    .line 14
    new-instance v0, Lcom/airpush/android/Airpush;

    const-string v2, "65747"

    const-string v3, "1336709568104457191"

    const/4 v4, 0x0

    move-object v1, p1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/airpush/android/Airpush;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 16
    return-void
.end method
