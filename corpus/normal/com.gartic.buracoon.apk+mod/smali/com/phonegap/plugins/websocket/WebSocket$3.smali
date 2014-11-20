.class Lcom/phonegap/plugins/websocket/WebSocket$3;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/websocket/WebSocket;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/api/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugins/websocket/WebSocket;

.field private final synthetic val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/websocket/WebSocket$3;->this$0:Lcom/phonegap/plugins/websocket/WebSocket;

    iput-object p2, p0, Lcom/phonegap/plugins/websocket/WebSocket$3;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/phonegap/plugins/websocket/WebSocket$3;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    #getter for: Lcom/phonegap/plugins/websocket/WebSocket;->socketClient:Lcom/phonegap/plugins/websocket/CordovaClient;
    invoke-static {v0}, Lcom/phonegap/plugins/websocket/WebSocket;->access$2(Lcom/phonegap/plugins/websocket/WebSocket;)Lcom/phonegap/plugins/websocket/CordovaClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phonegap/plugins/websocket/CordovaClient;->close()V

    .line 50
    return-void
.end method
