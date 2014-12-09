.class public interface abstract Lcom/google/analytics/tracking/android/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# virtual methods
.method public abstract anonymizeIpEnabled()Z
.end method

.method public abstract close()V
.end method

.method public abstract constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
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
.end method

.method public abstract constructException(Ljava/lang/String;Z)Ljava/util/Map;
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
.end method

.method public abstract constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
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
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAppId()Ljava/lang/String;
.end method

.method public abstract getAppInstallerId()Ljava/lang/String;
.end method

.method public abstract getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
.end method

.method public abstract getSampleRate()D
.end method

.method public abstract getTrackingId()Ljava/lang/String;
.end method

.method public abstract getUseSecure()Z
.end method

.method public abstract send(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAnonymizeIp(Z)V
.end method

.method public abstract setAppId(Ljava/lang/String;)V
.end method

.method public abstract setAppInstallerId(Ljava/lang/String;)V
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setAppScreen(Ljava/lang/String;)V
.end method

.method public abstract setAppVersion(Ljava/lang/String;)V
.end method

.method public abstract setCampaign(Ljava/lang/String;)V
.end method

.method public abstract setCustomDimension(ILjava/lang/String;)V
.end method

.method public abstract setCustomDimensionsAndMetrics(Ljava/util/Map;Ljava/util/Map;)V
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
.end method

.method public abstract setCustomMetric(ILjava/lang/Long;)V
.end method

.method public abstract setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
.end method

.method public abstract setReferrer(Ljava/lang/String;)V
.end method

.method public abstract setSampleRate(D)V
.end method

.method public abstract setStartSession(Z)V
.end method

.method public abstract setUseSecure(Z)V
.end method

.method public abstract trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end method

.method public abstract trackException(Ljava/lang/String;Z)V
.end method

.method public abstract trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
.end method

.method public abstract trackView()V
.end method

.method public abstract trackView(Ljava/lang/String;)V
.end method
