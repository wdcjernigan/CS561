.class Lcom/phonegap/plugins/websocket/WebSocket$1;
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

.field private final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private final synthetic val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/websocket/WebSocket;Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->this$0:Lcom/phonegap/plugins/websocket/WebSocket;

    iput-object p2, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    iput-object p3, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$plugin:Lcom/phonegap/plugins/websocket/WebSocket;

    iget-object v1, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/phonegap/plugins/websocket/WebSocket$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    #calls: Lcom/phonegap/plugins/websocket/WebSocket;->connect(Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V
    invoke-static {v0, v1, v2}, Lcom/phonegap/plugins/websocket/WebSocket;->access$0(Lcom/phonegap/plugins/websocket/WebSocket;Ljava/lang/String;Lorg/apache/cordova/api/CallbackContext;)V

    .line 33
    return-void
.end method
