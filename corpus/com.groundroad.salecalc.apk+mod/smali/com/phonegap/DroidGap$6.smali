.class Lcom/phonegap/DroidGap$6;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/DroidGap;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$failingUrl:Ljava/lang/String;

.field final synthetic val$me:Lcom/phonegap/DroidGap;


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap;Lcom/phonegap/DroidGap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/phonegap/DroidGap$6;->this$0:Lcom/phonegap/DroidGap;

    iput-object p2, p0, Lcom/phonegap/DroidGap$6;->val$me:Lcom/phonegap/DroidGap;

    iput-object p3, p0, Lcom/phonegap/DroidGap$6;->val$description:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/DroidGap$6;->val$failingUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/phonegap/DroidGap$6;->val$me:Lcom/phonegap/DroidGap;

    iget-object v0, v0, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/phonegap/DroidGap$6;->val$me:Lcom/phonegap/DroidGap;

    const-string v1, "Application Error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/phonegap/DroidGap$6;->val$description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/DroidGap$6;->val$failingUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/phonegap/DroidGap;->displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1208
    return-void
.end method
