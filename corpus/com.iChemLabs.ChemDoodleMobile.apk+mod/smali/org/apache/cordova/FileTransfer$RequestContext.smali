.class final Lorg/apache/cordova/FileTransfer$RequestContext;
.super Ljava/lang/Object;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestContext"
.end annotation


# instance fields
.field aborted:Z

.field callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field currentInputStream:Ljava/io/InputStream;

.field currentOutputStream:Ljava/io/OutputStream;

.field source:Ljava/lang/String;

.field target:Ljava/lang/String;

.field targetFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter "source"
    .parameter "target"
    .parameter "callbackContext"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/apache/cordova/FileTransfer$RequestContext;->source:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lorg/apache/cordova/FileTransfer$RequestContext;->target:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lorg/apache/cordova/FileTransfer$RequestContext;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 89
    return-void
.end method


# virtual methods
.method sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V
    .locals 1
    .parameter "pluginResult"

    .prologue
    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/cordova/FileTransfer$RequestContext;->aborted:Z

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/cordova/FileTransfer$RequestContext;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 95
    :cond_0
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
