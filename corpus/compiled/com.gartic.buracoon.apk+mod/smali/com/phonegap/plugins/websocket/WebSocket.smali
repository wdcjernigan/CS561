.class public Lcom/phonegap/plugins/websocket/WebSocket;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "WebSocket.java"


# static fields
.field private static final ACTION_CLOSE:Ljava/lang/String; = "close"

.field private static final ACTION_CONNECT:Ljava/lang/String; = "connect"

.field private static final ACTION_SEND:Ljava/lang/String; = "send"


# instance fields
.field private socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/phonegap/plugins/websocket/WebSocket;->connect(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    return-void
.end method

.method static synthetic access$1(Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/phonegap/plugins/websocket/WebSocket;->send(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/phonegap/plugins/websocket/WebSocket;)Lcom/phonegap/plugins/websocket/CordovaClient;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/phonegap/plugins/websocket/WebSocket;->socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;

    return-object v0
.end method

.method private connect(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 4
    .parameter "url"
    .parameter "callbackContext"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 62
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/phonegap/plugins/websocket/WebSocket;->uri:Ljava/net/URI;

    .line 63
    new-instance v2, Lcom/phonegap/plugins/websocket/CordovaClient;

    iget-object v3, p0, Lcom/phonegap/plugins/websocket/WebSocket;->uri:Ljava/net/URI;

    invoke-direct {v2, v3, p2}, Lcom/phonegap/plugins/websocket/CordovaClient;-><init>(Ljava/net/URI;Lorg/apache/cordova/api/CallbackContext;)V

    iput-object v2, p0, Lcom/phonegap/plugins/websocket/WebSocket;->socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;

    .line 64
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 65
    .local v1, pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 66
    invoke-virtual {p2, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 67
    iget-object v2, p0, Lcom/phonegap/plugins/websocket/WebSocket;->socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;

    invoke-virtual {v2}, Lcom/phonegap/plugins/websocket/CordovaClient;->connect()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Ljava/net/URISyntaxException;
    const-string v2, "Not a valid URL"

    invoke-virtual {p2, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_0
    const-string v2, "Not a valid URL"

    invoke-virtual {p2, v2}, Lorg/apache/cordova/api/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private send(Ljava/lang/String;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/phonegap/plugins/websocket/WebSocket;->socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;

    invoke-virtual {v0, p1}, Lcom/phonegap/plugins/websocket/CordovaClient;->send(Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    move-object v1, p0

    .line 28
    .local v1, plugin:Lcom/phonegap/plugins/websocket/WebSocket;
    const-string v5, "connect"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/phonegap/plugins/websocket/WebSocket;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/phonegap/plugins/websocket/WebSocket$1;

    invoke-direct {v5, p0, v1, v2, p3}, Lcom/phonegap/plugins/websocket/WebSocket$1;-><init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    .end local v2           #url:Ljava/lang/String;
    :goto_0
    return v3

    .line 37
    :cond_0
    const-string v5, "send"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, data:Ljava/lang/String;
    iget-object v4, p0, Lcom/phonegap/plugins/websocket/WebSocket;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/phonegap/plugins/websocket/WebSocket$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/phonegap/plugins/websocket/WebSocket$2;-><init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 46
    .end local v0           #data:Ljava/lang/String;
    :cond_1
    const-string v5, "close"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 47
    iget-object v4, p0, Lcom/phonegap/plugins/websocket/WebSocket;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    new-instance v5, Lcom/phonegap/plugins/websocket/WebSocket$3;

    invoke-direct {v5, p0, v1}, Lcom/phonegap/plugins/websocket/WebSocket$3;-><init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 55
    goto :goto_0
.end method
