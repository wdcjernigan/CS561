.class Lcom/phonegap/DroidGap$1$1;
.super Ljava/lang/Object;
.source "DroidGap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/DroidGap$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/DroidGap$1;

.field final synthetic val$currentLoadUrlTimeout:I


# direct methods
.method constructor <init>(Lcom/phonegap/DroidGap$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iput p2, p0, Lcom/phonegap/DroidGap$1$1;->val$currentLoadUrlTimeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 556
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :try_start_1
    iget-object v1, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v1, v1, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget v1, v1, Lcom/phonegap/DroidGap;->loadUrlTimeoutValue:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 558
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :goto_0
    iget-object v1, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v1, v1, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget v1, v1, Lcom/phonegap/DroidGap;->loadUrlTimeout:I

    iget v2, p0, Lcom/phonegap/DroidGap$1$1;->val$currentLoadUrlTimeout:I

    if-ne v1, v2, :cond_0

    .line 565
    iget-object v1, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v1, v1, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 566
    sget-object v1, Lcom/phonegap/DroidGap;->TAG:Ljava/lang/String;

    const-string v2, "DroidGap: TIMEOUT ERROR! - calling webViewClient"

    invoke-static {v1, v2}, Lcom/phonegap/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v1, v1, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v1, v1, Lcom/phonegap/DroidGap;->webViewClient:Landroid/webkit/WebViewClient;

    iget-object v2, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v2, v2, Lcom/phonegap/DroidGap$1;->val$me:Lcom/phonegap/DroidGap;

    iget-object v2, v2, Lcom/phonegap/DroidGap;->appView:Landroid/webkit/WebView;

    const/4 v3, -0x6

    const-string v4, "The connection to the server was unsuccessful."

    iget-object v5, p0, Lcom/phonegap/DroidGap$1$1;->this$1:Lcom/phonegap/DroidGap$1;

    iget-object v5, v5, Lcom/phonegap/DroidGap$1;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    return-void

    .line 558
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
