.class public Lcom/google/analytics/tracking/android/TrackedListActivity;
.super Landroid/app/ListActivity;
.source "TrackedListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 27
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStart(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 36
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker;->activityStop(Landroid/app/Activity;)V

    .line 37
    return-void
.end method
