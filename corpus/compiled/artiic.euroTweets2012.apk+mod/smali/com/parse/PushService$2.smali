.class Lcom/parse/PushService$2;
.super Ljava/util/TimerTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;


# direct methods
.method constructor <init>(Lcom/parse/PushService;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/parse/PushService$2;->this$0:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->sendKeepAlive()V
    invoke-static {v0}, Lcom/parse/PushService;->access$200(Lcom/parse/PushService;)V

    .line 561
    return-void
.end method
