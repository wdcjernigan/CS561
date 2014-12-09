.class final Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;
.super Ljava/lang/Object;
.source "AnalyticsGmsCoreClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnalyticsServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "component"
    .parameter "binder"

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service connected, binder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, descriptor:Ljava/lang/String;
    :try_start_0
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    const-string v1, "bound to service"

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    invoke-static {p2}, Lcom/google/android/gms/analytics/internal/IAnalyticsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    move-result-object v2

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->service:Lcom/google/android/gms/analytics/internal/IAnalyticsService;
    invoke-static {v1, v2}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$002(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Lcom/google/android/gms/analytics/internal/IAnalyticsService;)Lcom/google/android/gms/analytics/internal/IAnalyticsService;

    .line 155
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #calls: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onServiceBound()V
    invoke-static {v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$100(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v1

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$200(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 164
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;
    invoke-static {v1, v3}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 165
    iget-object v1, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectionFailedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;
    invoke-static {v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$400(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectionFailedListener;->onConnectionFailed(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->dDebug(Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    const/4 v1, 0x0

    #setter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->connection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$302(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 172
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$AnalyticsServiceConnection;->this$0:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;

    #getter for: Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->onConnectedListener:Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;
    invoke-static {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;->access$500(Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient;)Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/AnalyticsGmsCoreClient$OnConnectedListener;->onDisconnected()V

    .line 173
    return-void
.end method
