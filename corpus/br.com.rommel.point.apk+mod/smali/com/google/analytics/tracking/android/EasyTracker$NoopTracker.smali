.class Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;
.super Ljava/lang/Object;
.source "EasyTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Tracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/EasyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoopTracker"
.end annotation


# instance fields
.field private anonymizeIp:Z

.field private appId:Ljava/lang/String;

.field private appInstallerId:Ljava/lang/String;

.field private exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private sampleRate:D

.field final synthetic this$0:Lcom/google/analytics/tracking/android/EasyTracker;

.field private useSecure:Z


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;)V
    .locals 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const-wide/high16 v0, 0x4059

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->sampleRate:D

    return-void
.end method


# virtual methods
.method public anonymizeIpEnabled()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->anonymizeIp:Z

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 1
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructException(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .parameter "exceptionDescription"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;
    .locals 1
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "network"
    .parameter "action"
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 1
    .parameter "trans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 530
    const-string v0, ""

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppInstallerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->appInstallerId:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    .prologue
    .line 559
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->sampleRate:D

    return-wide v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    const-string v0, ""

    return-object v0
.end method

.method public getUseSecure()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->useSecure:Z

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "hitType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 535
    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 0
    .parameter "anonymizeIp"

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->anonymizeIp:Z

    .line 545
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->appId:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 0
    .parameter "appInstallerId"

    .prologue
    .line 592
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->appInstallerId:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .parameter "appName"

    .prologue
    .line 477
    return-void
.end method

.method public setAppScreen(Ljava/lang/String;)V
    .locals 0
    .parameter "appScreen"

    .prologue
    .line 485
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "appVersion"

    .prologue
    .line 481
    return-void
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 0
    .parameter "campaign"

    .prologue
    .line 578
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 0
    .parameter "slot"
    .parameter "value"

    .prologue
    .line 646
    return-void
.end method

.method public setCustomDimensionsAndMetrics(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, dimensions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, metrics:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    return-void
.end method

.method public setCustomMetric(ILjava/lang/Long;)V
    .locals 0
    .parameter "slot"
    .parameter "value"

    .prologue
    .line 650
    return-void
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 0
    .parameter "exceptionParser"

    .prologue
    .line 602
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 603
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0
    .parameter "referrer"

    .prologue
    .line 574
    return-void
.end method

.method public setSampleRate(D)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 554
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->sampleRate:D

    .line 555
    return-void
.end method

.method public setStartSession(Z)V
    .locals 0
    .parameter "startSession"

    .prologue
    .line 473
    return-void
.end method

.method public setUseSecure(Z)V
    .locals 0
    .parameter "useSecure"

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;->useSecure:Z

    .line 565
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 497
    return-void
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"

    .prologue
    .line 509
    return-void
.end method

.method public trackException(Ljava/lang/String;Z)V
    .locals 0
    .parameter "description"
    .parameter "fatal"

    .prologue
    .line 505
    return-void
.end method

.method public trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "network"
    .parameter "action"
    .parameter "target"

    .prologue
    .line 518
    return-void
.end method

.method public trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"

    .prologue
    .line 514
    return-void
.end method

.method public trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 0
    .parameter "transaction"

    .prologue
    .line 501
    return-void
.end method

.method public trackView()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public trackView(Ljava/lang/String;)V
    .locals 0
    .parameter "appScreen"

    .prologue
    .line 493
    return-void
.end method
