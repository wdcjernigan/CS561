.class public interface abstract Lcom/google/analytics/tracking/android/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;
    }
.end annotation


# virtual methods
.method public abstract debugEnabled()Z
.end method

.method public abstract getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
.end method

.method public abstract getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
.end method

.method public abstract requestAppOptOut(Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;)V
.end method

.method public abstract setAppOptOut(Z)V
.end method

.method public abstract setDebug(Z)V
.end method

.method public abstract setDefaultTracker(Lcom/google/analytics/tracking/android/Tracker;)V
.end method
