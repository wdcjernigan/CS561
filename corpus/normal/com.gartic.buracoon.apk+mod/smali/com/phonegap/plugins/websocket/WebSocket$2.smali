.class Lcom/phonegap/plugins/websocket/WebSocket$2;
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

.field private final synthetic val$data:Ljava/lang/String;

.field private final synthetic val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/websocket/WebSocket$2;->this$0:Lcom/phonegap/plugins/websocket/WebSocket;

    iput-object p2, p0, Lcom/phonegap/plugins/websocket/WebSocket$2;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    iput-object p3, p0, Lcom/phonegap/plugins/websocket/WebSocket$2;->val$data:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/phonegap/plugins/websocket/WebSocket$2;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    iget-object v1, p0, Lcom/phonegap/plugins/websocket/WebSocket$2;->val$data:Ljava/lang/String;

    #calls: Lcom/phonegap/plugins/websocket/WebSocket;->send(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/phonegap/plugins/websocket/WebSocket;->access$1(Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;)V

    .line 42
    return-void
.end method
