.class Lcom/gartic/buracoon/BuracoON$1;
.super Ljava/lang/Object;
.source "BuracoON.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gartic/buracoon/BuracoON;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gartic/buracoon/BuracoON;


# direct methods
.method constructor <init>(Lcom/gartic/buracoon/BuracoON;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gartic/buracoon/BuracoON$1;->this$0:Lcom/gartic/buracoon/BuracoON;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gartic/buracoon/BuracoON$1;->this$0:Lcom/gartic/buracoon/BuracoON;

    #calls: Lcom/gartic/buracoon/BuracoON;->doAdMob()V
    invoke-static {v0}, Lcom/gartic/buracoon/BuracoON;->access$0(Lcom/gartic/buracoon/BuracoON;)V

    .line 70
    return-void
.end method
