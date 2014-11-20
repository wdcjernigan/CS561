.class public Lcom/phonegap/plugins/websocket/CordovaClient;
.super Lorg/java_websocket/client/WebSocketClient;
.source "CordovaClient.java"


# static fields
.field private static final stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/java_websocket/WebSocket$READYSTATE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    .line 23
    sget-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CONNECTING:Lorg/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->OPEN:Lorg/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSING:Lorg/java_websocket/WebSocket$READYSTATE;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->CLOSED:Lorg/java_websocket/WebSocket$READYSTATE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    sget-object v1, Lorg/java_websocket/WebSocket$READYSTATE;->NOT_YET_CONNECTED:Lorg/java_websocket/WebSocket$READYSTATE;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter "serverURI"
    .parameter "callbackContext"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;)V

    .line 36
    iput-object p2, p0, Lcom/phonegap/plugins/websocket/CordovaClient;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V
    .locals 0
    .parameter "serverUri"
    .parameter "draft"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lorg/java_websocket/client/WebSocketClient;-><init>(Ljava/net/URI;Lorg/java_websocket/drafts/Draft;)V

    .line 32
    return-void
.end method

.method private createEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .parameter "data"
    .parameter "type"

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, event:Lorg/json/JSONObject;
    const-string v2, "type"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "readyState"

    sget-object v3, Lcom/phonegap/plugins/websocket/CordovaClient;->stateMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/phonegap/plugins/websocket/CordovaClient;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #event:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendResult(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/PluginResult$Status;)V
    .locals 3
    .parameter "message"
    .parameter "type"
    .parameter "status"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/phonegap/plugins/websocket/CordovaClient;->createEvent(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    .local v0, event:Lorg/json/JSONObject;
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v1, p3, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 62
    .local v1, pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 63
    iget-object v2, p0, Lcom/phonegap/plugins/websocket/CordovaClient;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onClose(ILjava/lang/String;Z)V
    .locals 3
    .parameter "code"
    .parameter "reason"
    .parameter "remote"

    .prologue
    .line 51
    const-string v0, ""

    const-string v1, "close"

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, v0, v1, v2}, Lcom/phonegap/plugins/websocket/CordovaClient;->sendResult(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "ex"

    .prologue
    .line 56
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, v0, v1, v2}, Lcom/phonegap/plugins/websocket/CordovaClient;->sendResult(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 57
    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 46
    const-string v0, "message"

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, p1, v0, v1}, Lcom/phonegap/plugins/websocket/CordovaClient;->sendResult(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 47
    return-void
.end method

.method public onOpen(Lorg/java_websocket/handshake/ServerHandshake;)V
    .locals 3
    .parameter "handshakedata"

    .prologue
    .line 41
    const-string v0, ""

    const-string v1, "open"

    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, v0, v1, v2}, Lcom/phonegap/plugins/websocket/CordovaClient;->sendResult(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 42
    return-void
.end method
