.class final Lcom/parse/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->callbacksChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/parse/PushService$1;->val$finalContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parse/PushService$1;->val$finalContext:Landroid/content/Context;

    #calls: Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/parse/PushService;->access$000(Landroid/content/Context;)Z

    .line 165
    iget-object v0, p0, Lcom/parse/PushService$1;->val$finalContext:Landroid/content/Context;

    #calls: Lcom/parse/PushService;->startService(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/parse/PushService;->access$100(Landroid/content/Context;)V

    .line 166
    return-void
.end method
