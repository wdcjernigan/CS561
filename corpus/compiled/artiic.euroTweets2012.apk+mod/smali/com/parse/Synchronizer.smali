.class Lcom/parse/Synchronizer;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"


# instance fields
.field done:Z

.field latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/Synchronizer;->done:Z

    .line 30
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 31
    return-void
.end method


# virtual methods
.method assertFinishes()V
    .locals 5

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 56
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "assertFinishes() should *not* be called from the UI thread"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v1, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-boolean v1, p0, Lcom/parse/Synchronizer;->done:Z

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "finish() was never called"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method finish()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "finish() should be called from the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/parse/Synchronizer;->done:Z

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "finish() was called too much"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 49
    iget-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/Synchronizer;->done:Z

    .line 52
    :cond_2
    return-void
.end method

.method start(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/parse/Synchronizer;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 35
    return-void
.end method
