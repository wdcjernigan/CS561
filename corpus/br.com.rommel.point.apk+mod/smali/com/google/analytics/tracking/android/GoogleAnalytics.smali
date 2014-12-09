.class public Lcom/google/analytics/tracking/android/GoogleAnalytics;
.super Ljava/lang/Object;
.source "GoogleAnalytics.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Analytics;
.implements Lcom/google/analytics/tracking/android/TrackerHandler;


# static fields
.field private static instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;


# instance fields
.field private adHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

.field private volatile appOptOut:Ljava/lang/Boolean;

.field private volatile clientId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private debug:Z

.field private defaultTracker:Lcom/google/analytics/tracking/android/Tracker;

.field private lastTrackingId:Ljava/lang/String;

.field private thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

.field private final trackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->trackers:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/analytics/tracking/android/GAThread;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GAThread;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 2
    .parameter "context"
    .parameter "thread"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->trackers:Ljava/util/Map;

    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 64
    new-instance v0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/AdHitIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->adHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    .line 65
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics$1;-><init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->requestAppOptOut(Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;)V

    .line 73
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    new-instance v1, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics$2;-><init>(Lcom/google/analytics/tracking/android/GoogleAnalytics;)V

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->requestClientId(Lcom/google/analytics/tracking/android/AnalyticsThread$ClientIdCallback;)V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->appOptOut:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/GoogleAnalytics;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->clientId:Ljava/lang/String;

    return-object p1
.end method

.method static declared-synchronized clearInstance()V
    .locals 2

    .prologue
    .line 125
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit v0

    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getInstance()Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2

    .prologue
    .line 103
    const-class v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const-class v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 93
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getNewInstance(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)Lcom/google/analytics/tracking/android/GoogleAnalytics;
    .locals 2
    .parameter "context"
    .parameter "thread"

    .prologue
    .line 114
    const-class v1, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->close()V

    .line 117
    :cond_0
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;

    invoke-direct {v0, p0, p1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;-><init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;

    .line 118
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->instance:Lcom/google/analytics/tracking/android/GoogleAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method close()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public declared-synchronized closeTracker(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 1
    .parameter "tracker"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->trackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-ne p1, v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public debugEnabled()Z
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DEBUG:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 138
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->debug:Z

    return v0
.end method

.method getAppOptOut()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->appOptOut:Ljava/lang/Boolean;

    return-object v0
.end method

.method getClientIdForAds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->clientId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->clientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 163
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;
    .locals 3
    .parameter "trackingId"

    .prologue
    .line 143
    monitor-enter p0

    if-nez p1, :cond_0

    .line 144
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "trackingId cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 146
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->trackers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/tracking/android/Tracker;

    .line 149
    .local v0, tracker:Lcom/google/analytics/tracking/android/Tracker;
    if-nez v0, :cond_1

    .line 150
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleTracker;

    .end local v0           #tracker:Lcom/google/analytics/tracking/android/Tracker;
    invoke-direct {v0, p1, p0}, Lcom/google/analytics/tracking/android/GoogleTracker;-><init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V

    .line 151
    .restart local v0       #tracker:Lcom/google/analytics/tracking/android/Tracker;
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->trackers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v1, :cond_1

    .line 153
    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-object v0
.end method

.method getTrackingIdForAds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->lastTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public requestAppOptOut(Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 241
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->REQUEST_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 242
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->appOptOut:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->appOptOut:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;->reportAppOptOut(Z)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->requestAppOptOut(Lcom/google/analytics/tracking/android/Analytics$AppOptOutCallback;)V

    goto :goto_0
.end method

.method public declared-synchronized sendHit(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, hit:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 183
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 185
    :cond_0
    :try_start_1
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Utils;->getLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "adSenseAdMobHitId"

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->adHitIdGenerator:Lcom/google/analytics/tracking/android/AdHitIdGenerator;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->getAdHitId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "screenResolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v0, "usage"

    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearSequence()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GAUsage;->getAndClearUsage()Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->sendHit(Ljava/util/Map;)V

    .line 197
    const-string v0, "trackingId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->lastTrackingId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    monitor-exit p0

    return-void
.end method

.method public setAppOptOut(Z)V
    .locals 2
    .parameter "optOut"

    .prologue
    .line 227
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_OPT_OUT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 228
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->appOptOut:Ljava/lang/Boolean;

    .line 229
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsThread;->setAppOptOut(Z)V

    .line 230
    return-void
.end method

.method public setDebug(Z)V
    .locals 2
    .parameter "debug"

    .prologue
    .line 130
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DEBUG:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 131
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->debug:Z

    .line 132
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Log;->setDebug(Z)V

    .line 133
    return-void
.end method

.method public declared-synchronized setDefaultTracker(Lcom/google/analytics/tracking/android/Tracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DEFAULT_TRACKER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 169
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleAnalytics;->defaultTracker:Lcom/google/analytics/tracking/android/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
