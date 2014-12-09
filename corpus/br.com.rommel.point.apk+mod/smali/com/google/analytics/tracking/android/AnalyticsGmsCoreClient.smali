.class Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;,
        Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_ADJUST_WITH_ACTIVITY:I = 0x80

.field public static final BIND_FAILED:I = 0x1

.field public static final KEY_APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field public static final REMOTE_EXECUTION_FAILED:I = 0x2

.field static final SERVICE_ACTION:Ljava/lang/String; = "com.google.android.gms.analytics.service.START"

.field private static final SERVICE_DESCRIPTOR:Ljava/lang/String; = "com.google.android.gms.analytics.internal.IAnalyticsService"


# instance fields
.field private connection:Landroid/content/ServiceConnection;

.field private context:Landroid/content/Context;

.field private onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

.field private onConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

.field private service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;)V
    .locals 0
    .parameter "context"
    .parameter "onConnectedListener"
    .parameter "onConnectionFailedListener"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    .line 59
    iput-object p3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/IAnalyticsService;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onServiceBound()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    return-object v0
.end method

.method private getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->checkConnected()V

    .line 121
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    return-object v0
.end method

.method private onConnectionSuccess()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onConnected()V

    .line 190
    return-void
.end method

.method private onServiceBound()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionSuccess()V

    .line 182
    return-void
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method public clearHits()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->clearHits()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear hits failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "app_package_name"

    iget-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v2, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;

    invoke-direct {v2, p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;-><init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V

    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    .line 75
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    const/16 v4, 0x81

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 77
    .local v1, result:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: bindService returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->iDebug(Ljava/lang/String;)I

    .line 78
    if-nez v1, :cond_0

    .line 79
    iput-object v5, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    .line 80
    iget-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v5}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .line 94
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 96
    iput-object v2, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;

    .line 97
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    .line 99
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter "hitTimeInMilliseconds"
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/internal/Command;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, wireParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, commands:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/analytics/internal/Command;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->getService()Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/internal/IAnalyticsService;->sendHit(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v6

    .line 107
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendHit failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)I

    goto :goto_0
.end method
