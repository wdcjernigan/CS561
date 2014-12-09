.class public Lcom/google/analytics/tracking/android/ExceptionReporter;
.super Ljava/lang/Object;
.source "ExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private final originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

.field private final tracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/Tracker;Lcom/google/analytics/tracking/android/ServiceManager;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .parameter "tracker"
    .parameter "serviceManager"
    .parameter "originalHandler"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p3, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 48
    iput-object p2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionReporter created, original handler is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_2

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 51
    return-void

    .line 49
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 0
    .parameter "exceptionParser"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 59
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"
    .parameter "e"

    .prologue
    .line 64
    const-string v0, ""

    .line 65
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-nez v2, :cond_1

    .line 67
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 73
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->tracker:Lcom/google/analytics/tracking/android/Tracker;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lcom/google/analytics/tracking/android/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 75
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->serviceManager:Lcom/google/analytics/tracking/android/ServiceManager;

    invoke-interface {v2}, Lcom/google/analytics/tracking/android/ServiceManager;->dispatch()V

    .line 76
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "Passing exception to original handler."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 78
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->originalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 80
    :cond_0
    return-void

    .line 69
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, threadName:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/google/analytics/tracking/android/ExceptionReporter;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v2, v1, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    .end local v1           #threadName:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
