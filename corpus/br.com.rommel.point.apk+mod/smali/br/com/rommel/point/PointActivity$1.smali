.class Lbr/com/rommel/point/PointActivity$1;
.super Ljava/lang/Object;
.source "PointActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/com/rommel/point/PointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/com/rommel/point/PointActivity;


# direct methods
.method constructor <init>(Lbr/com/rommel/point/PointActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbr/com/rommel/point/PointActivity$1;->this$0:Lbr/com/rommel/point/PointActivity;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lbr/com/rommel/point/PointActivity$1;->this$0:Lbr/com/rommel/point/PointActivity;

    #calls: Lbr/com/rommel/point/PointActivity;->doAdMob()V
    invoke-static {v0}, Lbr/com/rommel/point/PointActivity;->access$0(Lbr/com/rommel/point/PointActivity;)V

    .line 27
    return-void
.end method
