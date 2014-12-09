.class public Lcom/google/analytics/tracking/android/GAServiceManager;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ServiceManager;


# static fields
.field private static final MSG_KEY:I = 0x1

.field private static final MSG_OBJECT:Ljava/lang/Object;

.field private static instance:Lcom/google/analytics/tracking/android/GAServiceManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private dispatchPeriodInSeconds:I

.field private handler:Landroid/os/Handler;

.field private listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

.field private pendingDispatch:Z

.field private powerSaveMode:Z

.field private store:Lcom/google/analytics/tracking/android/AnalyticsStore;

.field private volatile thread:Lcom/google/analytics/tracking/android/AnalyticsThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 42
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;Lcom/google/analytics/tracking/android/AnalyticsStore;)V
    .locals 1
    .parameter "ctx"
    .parameter "thread"
    .parameter "store"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x708

    iput v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    .line 42
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager$1;

    invoke-direct {v0, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$1;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z

    .line 70
    iput-object p3, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 71
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/GAServiceManager;->initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/GAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    return v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/GAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/GAServiceManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/google/analytics/tracking/android/GAServiceManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/GAServiceManager;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/GAServiceManager;->instance:Lcom/google/analytics/tracking/android/GAServiceManager;

    return-object v0
.end method

.method private initializeHandler()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/analytics/tracking/android/GAServiceManager$2;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/GAServiceManager$2;-><init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    .line 94
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .locals 2

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    .line 161
    const-string v0, "dispatch call queued.  Need to call GAServiceManager.getInstance().initialize()."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :goto_0
    monitor-exit p0

    return-void

    .line 166
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->DISPATCH:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 167
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getListener()Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    return-object v0
.end method

.method declared-synchronized getStore()Lcom/google/analytics/tracking/android/AnalyticsStore;
    .locals 3

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->listener:Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;

    iget-object v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/analytics/tracking/android/PersistentAnalyticsStore;-><init>(Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GAServiceManager;->initializeHandler()V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized initialize(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsThread;)V
    .locals 1
    .parameter "ctx"
    .parameter "thread"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->ctx:Landroid/content/Context;

    .line 114
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    if-nez v0, :cond_0

    .line 115
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->thread:Lcom/google/analytics/tracking/android/AnalyticsThread;

    .line 116
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->pendingDispatch:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {p2}, Lcom/google/analytics/tracking/android/AnalyticsThread;->dispatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDispatchPeriod(I)V
    .locals 4
    .parameter "dispatchPeriodInSeconds"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 173
    const-string v0, "Need to call initialize() and be in fallback mode to start dispatch."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 174
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_DISPATCH_PERIOD:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 180
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 183
    :cond_2
    iput p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    .line 184
    if-lez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setThrottlingEnabled(Z)V
    .locals 1
    .parameter "throttlingEnabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->store:Lcom/google/analytics/tracking/android/AnalyticsStore;

    invoke-interface {v0, p1}, Lcom/google/analytics/tracking/android/AnalyticsStore;->setThrottlingEnabled(Z)V

    .line 127
    return-void
.end method

.method declared-synchronized updatePowerSaveMode(Z)V
    .locals 4
    .parameter "newPowerSaveMode"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 200
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    if-lez v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/analytics/tracking/android/GAServiceManager;->MSG_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->dispatchPeriodInSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_3

    const-string v0, "initiated."

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 205
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager;->powerSaveMode:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_3
    :try_start_2
    const-string v0, "terminated."
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
