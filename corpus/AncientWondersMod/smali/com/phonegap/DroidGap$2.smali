.class Lcom/phonegap/DroidGap$2;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap;->loadUrl(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/DroidGap;

.field final synthetic val$me:Lcom/phonegap/DroidGap;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/phonegap/DroidGap$2;->this$0:Lcom/phonegap/DroidGap;

    iput-object p2, p0, Lcom/phonegap/DroidGap$2;->val$me:Lcom/phonegap/DroidGap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/phonegap/DroidGap$2;->val$me:Lcom/phonegap/DroidGap;

    #calls: Lcom/phonegap/DroidGap;->handleActivityParameters()V
    invoke-static {v0}, Lcom/phonegap/DroidGap;->access$000(Lcom/phonegap/DroidGap;)V

    .line 416
    return-void
.end method
