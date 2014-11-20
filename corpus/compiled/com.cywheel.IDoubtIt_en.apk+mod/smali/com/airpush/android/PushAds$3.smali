.class Lcom/airpush/android/PushAds$3;
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
    iput-object p1, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 632
    :try_start_0
    iget-object v2, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    iget-object v3, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    #getter for: Lcom/airpush/android/PushAds;->clickUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/airpush/android/PushAds;->access$1(Lcom/airpush/android/PushAds;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/airpush/android/PushAds;->displayAd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/airpush/android/PushAds;->access$2(Lcom/airpush/android/PushAds;Ljava/lang/String;)V

    .line 633
    iget-object v2, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    invoke-virtual {v2}, Lcom/airpush/android/PushAds;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/SetPreferences;->setValues(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/airpush/android/PushAds;->access$3(Ljava/util/List;)V

    .line 635
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "model"

    const-string v5, "log"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "action"

    const-string v5, "setfptracking"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "APIKEY"

    iget-object v5, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    #getter for: Lcom/airpush/android/PushAds;->apikey:Ljava/lang/String;
    invoke-static {v5}, Lcom/airpush/android/PushAds;->access$5(Lcom/airpush/android/PushAds;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "event"

    const-string v5, "fclick"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "campId"

    iget-object v5, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    #getter for: Lcom/airpush/android/PushAds;->campaignId:Ljava/lang/String;
    invoke-static {v5}, Lcom/airpush/android/PushAds;->access$6(Lcom/airpush/android/PushAds;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-static {}, Lcom/airpush/android/PushAds;->access$4()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "creativeId"

    iget-object v5, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    #getter for: Lcom/airpush/android/PushAds;->creativeId:Ljava/lang/String;
    invoke-static {v5}, Lcom/airpush/android/PushAds;->access$7(Lcom/airpush/android/PushAds;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 642
    .local v1, sendAdValues:Landroid/os/Handler;
    iget-object v2, p0, Lcom/airpush/android/PushAds$3;->this$0:Lcom/airpush/android/PushAds;

    #getter for: Lcom/airpush/android/PushAds;->sendAdValues_Task:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/airpush/android/PushAds;->access$8(Lcom/airpush/android/PushAds;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    .end local v1           #sendAdValues:Landroid/os/Handler;
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AirpushSDK"

    const-string v3, "Display Ad Network Error, please try again later. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
