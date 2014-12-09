.class Lcom/google/analytics/tracking/android/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GAV2"

.field private static debug:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static d(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 46
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static dDebug(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->d(Ljava/lang/String;)I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static debugEnabled()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    return v0
.end method

.method static e(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static eDebug(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 82
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static iDebug(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 107
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 26
    sput-boolean p0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    .line 27
    return-void
.end method

.method static v(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 121
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static vDebug(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 132
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->v(Ljava/lang/String;)I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static w(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 146
    const-string v0, "GAV2"

    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static wDebug(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 157
    sget-boolean v0, Lcom/google/analytics/tracking/android/Log;->debug:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
