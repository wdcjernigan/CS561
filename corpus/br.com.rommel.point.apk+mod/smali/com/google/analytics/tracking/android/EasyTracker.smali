.class public Lcom/google/analytics/tracking/android/EasyTracker;
.super Ljava/lang/Object;
.source "EasyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;,
        Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;
    }
.end annotation


# static fields
.field static final NUM_MILLISECONDS_TO_WAIT_FOR_OPEN_ACTIVITY:I = 0x3e8

.field private static instance:Lcom/google/analytics/tracking/android/EasyTracker;


# instance fields
.field private activitiesActive:I

.field private final activityNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private autoActivityTracking:Z

.field private clock:Lcom/google/analytics/tracking/android/Clock;

.field private ga:Lcom/google/analytics/tracking/android/Analytics;

.field private gaAnonymizeIp:Z

.field private gaAppName:Ljava/lang/String;

.field private gaAppVersion:Ljava/lang/String;

.field private gaContext:Landroid/content/Context;

.field private gaDebug:Z

.field private gaDispatchPeriod:I

.field private gaEnabled:Z

.field private gaReportUncaughtExceptions:Z

.field private gaSampleRate:Ljava/lang/Double;

.field private gaSessionTimeout:J

.field private gaTrackingId:Ljava/lang/String;

.field private handler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private inForeground:Z

.field private lastOnStopTime:J

.field private parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

.field private serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private tracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaEnabled:Z

    .line 149
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaDispatchPeriod:I

    .line 176
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->autoActivityTracking:Z

    .line 181
    iput v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activityNameMap:Ljava/util/Map;

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 217
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->inForeground:Z

    .line 96
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/EasyTracker$1;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->clock:Lcom/google/analytics/tracking/android/Clock;

    .line 102
    return-void
.end method

.method static synthetic access$102(Lcom/google/analytics/tracking/android/EasyTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->inForeground:Z

    return p1
.end method

.method private declared-synchronized clearExistingTimer()V
    .locals 1

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_0
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static clearTracker()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 444
    return-void
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 435
    :goto_0
    return-object v2

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    invoke-interface {v2, v0}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 432
    move-object v1, v0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activityNameMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 435
    goto :goto_0
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/EasyTracker;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/EasyTracker;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    .line 113
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/EasyTracker;->instance:Lcom/google/analytics/tracking/android/EasyTracker;

    return-object v0
.end method

.method public static getTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/EasyTracker;->gaContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getInstance()Lcom/google/analytics/tracking/android/EasyTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object v0
.end method

.method private loadParameters()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 232
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_trackingId"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaTrackingId:Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaTrackingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_api_key"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaTrackingId:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaTrackingId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 238
    const-string v2, "EasyTracker requested, but missing required ga_trackingId"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 239
    new-instance v2, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/EasyTracker$NoopTracker;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    iput-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaEnabled:Z

    .line 244
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_appName"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppName:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_appVersion"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppVersion:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_debug"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaDebug:Z

    .line 248
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_sampleFrequency"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getDoubleFromString(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSampleRate:Ljava/lang/Double;

    .line 249
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSampleRate:Ljava/lang/Double;

    if-nez v3, :cond_2

    .line 250
    new-instance v3, Ljava/lang/Double;

    iget-object v4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v5, "ga_sampleRate"

    const/16 v6, 0x64

    invoke-interface {v4, v5, v6}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    iput-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSampleRate:Ljava/lang/Double;

    .line 252
    :cond_2
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_dispatchPeriod"

    const/16 v5, 0x708

    invoke-interface {v3, v4, v5}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaDispatchPeriod:I

    .line 253
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_sessionTimeout"

    const/16 v5, 0x1e

    invoke-interface {v3, v4, v5}, Lcom/google/analytics/tracking/android/ParameterLoader;->getInt(Ljava/lang/String;I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSessionTimeout:J

    .line 254
    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_autoActivityTracking"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v4, "ga_auto_activity_tracking"

    invoke-interface {v3, v4}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->autoActivityTracking:Z

    .line 257
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v3, "ga_anonymizeIp"

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAnonymizeIp:Z

    .line 258
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    const-string v3, "ga_reportUncaughtExceptions"

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ParameterLoader;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaReportUncaughtExceptions:Z

    .line 259
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->ga:Lcom/google/analytics/tracking/android/Analytics;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaTrackingId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Analytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 260
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting appName to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAppName(Ljava/lang/String;)V

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppVersion:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 269
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAppVersion:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAppVersion(Ljava/lang/String;)V

    .line 271
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaAnonymizeIp:Z

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setAnonymizeIp(Z)V

    .line 272
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSampleRate:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/google/analytics/tracking/android/Tracker;->setSampleRate(D)V

    .line 273
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->ga:Lcom/google/analytics/tracking/android/Analytics;

    iget-boolean v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaDebug:Z

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Analytics;->setDebug(Z)V

    .line 274
    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    iget v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaDispatchPeriod:I

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/ServiceManager;->setDispatchPeriod(I)V

    .line 276
    iget-boolean v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaReportUncaughtExceptions:Z

    if-eqz v2, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 278
    .local v0, newHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    if-nez v0, :cond_6

    .line 279
    new-instance v1, Lcom/google/analytics/tracking/android/ExceptionReporter;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/analytics/tracking/android/ExceptionReporter;-><init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 281
    .local v1, reporter:Lcom/google/analytics/tracking/android/ExceptionReporter;
    move-object v0, v1

    .line 283
    .end local v1           #reporter:Lcom/google/analytics/tracking/android/ExceptionReporter;
    :cond_6
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto/16 :goto_0

    .line 254
    .end local v0           #newHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public activityStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x1

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 349
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaEnabled:Z

    if-nez v0, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 357
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->inForeground:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->checkForNewSession()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->setStartSession(Z)V

    .line 359
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->autoActivityTracking:Z

    if-nez v0, :cond_2

    .line 364
    :cond_2
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->inForeground:Z

    .line 365
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    .line 366
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->autoActivityTracking:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/Tracker;->trackView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public activityStop(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;)V

    .line 380
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaEnabled:Z

    if-nez v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    .line 386
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    .line 388
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->clock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->lastOnStopTime:J

    .line 390
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    if-nez v0, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->clearExistingTimer()V

    .line 394
    new-instance v0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;Lcom/google/analytics/tracking/android/EasyTracker$1;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timerTask:Ljava/util/TimerTask;

    .line 395
    new-instance v0, Ljava/util/Timer;

    const-string v1, "waitForActivityStart"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timer:Ljava/util/Timer;

    .line 396
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method checkForNewSession()Z
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 223
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSessionTimeout:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSessionTimeout:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->clock:Lcom/google/analytics/tracking/android/Clock;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->lastOnStopTime:J

    iget-wide v4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaSessionTimeout:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatch()V
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaEnabled:Z

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatch()V

    .line 407
    :cond_0
    return-void
.end method

.method getActivitiesActive()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->activitiesActive:I

    return v0
.end method

.method setClock(Lcom/google/analytics/tracking/android/Clock;)V
    .locals 0
    .parameter "clock"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->clock:Lcom/google/analytics/tracking/android/Clock;

    .line 451
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    const-string v1, "Context cannot be null"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAServiceManager;->getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;

    move-result-object v0

    .line 309
    .local v0, sm:Lcom/google/analytics/tracking/android/ServiceManager;
    new-instance v1, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/analytics/tracking/android/ParameterLoaderImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/analytics/tracking/android/EasyTracker;->setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/Analytics;Lcom/google/analytics/tracking/android/ServiceManager;)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;Lcom/google/analytics/tracking/android/ParameterLoader;Lcom/google/analytics/tracking/android/Analytics;Lcom/google/analytics/tracking/android/ServiceManager;)V
    .locals 1
    .parameter "ctx"
    .parameter "parameterLoader"
    .parameter "ga"
    .parameter "serviceManager"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 325
    const-string v0, "Context cannot be null"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker;->gaContext:Landroid/content/Context;

    .line 329
    iput-object p3, p0, Lcom/google/analytics/tracking/android/EasyTracker;->ga:Lcom/google/analytics/tracking/android/Analytics;

    .line 330
    iput-object p4, p0, Lcom/google/analytics/tracking/android/EasyTracker;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 331
    iput-object p2, p0, Lcom/google/analytics/tracking/android/EasyTracker;->parameterFetcher:Lcom/google/analytics/tracking/android/ParameterLoader;

    .line 332
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/EasyTracker;->loadParameters()V

    .line 334
    :cond_1
    return-void
.end method

.method setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker;->handler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 293
    return-void
.end method
