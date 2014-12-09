.class public Lcom/phonegap/CallbackServer;
.super Ljava/lang/Object;
.source "CallbackServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private active:Z

.field private empty:Z

.field private javascript:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private port:I

.field private serverThread:Ljava/lang/Thread;

.field private token:Ljava/lang/String;

.field private usePolling:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/phonegap/CallbackServer;->active:Z

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/CallbackServer;->empty:Z

    .line 86
    iput v1, p0, Lcom/phonegap/CallbackServer;->port:I

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    .line 88
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->stopServer()V

    .line 268
    return-void
.end method

.method public getJavascript()Ljava/lang/String;
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    const/4 v0, 0x0

    .line 297
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    .local v0, statement:Ljava/lang/String;
    iget-object v1, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 293
    monitor-enter p0

    .line 294
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/phonegap/CallbackServer;->empty:Z

    .line 295
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/phonegap/CallbackServer;->port:I

    return v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 276
    iget-object v1, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 278
    .local v0, size:I
    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/phonegap/CallbackServer;->token:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 102
    if-eqz p1, :cond_0

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iput-boolean v1, p0, Lcom/phonegap/CallbackServer;->usePolling:Z

    .line 104
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->stopServer()V

    .line 114
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 107
    iput-boolean v1, p0, Lcom/phonegap/CallbackServer;->usePolling:Z

    .line 108
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->stopServer()V

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/CallbackServer;->usePolling:Z

    .line 112
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->startServer()V

    goto :goto_0
.end method

.method public restartServer()V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->stopServer()V

    .line 164
    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->startServer()V

    .line 165
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 175
    const/4 v7, 0x1

    :try_start_0
    iput-boolean v7, p0, Lcom/phonegap/CallbackServer;->active:Z

    .line 177
    new-instance v5, Ljava/net/ServerSocket;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Ljava/net/ServerSocket;-><init>(I)V

    .line 178
    .local v5, waitSocket:Ljava/net/ServerSocket;
    invoke-virtual {v5}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v7

    iput v7, p0, Lcom/phonegap/CallbackServer;->port:I

    .line 180
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/phonegap/CallbackServer;->token:Ljava/lang/String;

    .line 183
    :goto_0
    iget-boolean v7, p0, Lcom/phonegap/CallbackServer;->active:Z

    if-eqz v7, :cond_1

    .line 185
    invoke-virtual {v5}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 186
    .local v0, connection:Ljava/net/Socket;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x28

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 187
    .local v6, xhrReader:Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    .local v2, output:Ljava/io/DataOutputStream;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, request:Ljava/lang/String;
    const-string v4, ""

    .line 191
    .local v4, response:Ljava/lang/String;
    const-string v7, "GET"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 194
    const/4 v7, 0x5

    const/16 v8, 0x29

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/phonegap/CallbackServer;->token:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 199
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    :try_start_1
    iget-boolean v7, p0, Lcom/phonegap/CallbackServer;->empty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    .line 202
    const-wide/16 v7, 0x2710

    :try_start_2
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 208
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :try_start_4
    iget-boolean v7, p0, Lcom/phonegap/CallbackServer;->active:Z

    if-eqz v7, :cond_3

    .line 214
    iget-boolean v7, p0, Lcom/phonegap/CallbackServer;->empty:Z

    if-eqz v7, :cond_2

    .line 216
    const-string v4, "HTTP/1.1 404 NO DATA\r\n\r\n "

    .line 236
    :goto_2
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 238
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 240
    .end local v0           #connection:Ljava/net/Socket;
    .end local v2           #output:Ljava/io/DataOutputStream;
    .end local v3           #request:Ljava/lang/String;
    .end local v4           #response:Ljava/lang/String;
    .end local v5           #waitSocket:Ljava/net/ServerSocket;
    .end local v6           #xhrReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iput-boolean v9, p0, Lcom/phonegap/CallbackServer;->active:Z

    .line 245
    return-void

    .line 208
    .restart local v0       #connection:Ljava/net/Socket;
    .restart local v2       #output:Ljava/io/DataOutputStream;
    .restart local v3       #request:Ljava/lang/String;
    .restart local v4       #response:Ljava/lang/String;
    .restart local v5       #waitSocket:Ljava/net/ServerSocket;
    .restart local v6       #xhrReader:Ljava/io/BufferedReader;
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7

    .line 220
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 200 OK\r\n\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/phonegap/CallbackServer;->getJavascript()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 224
    :cond_3
    const-string v4, "HTTP/1.1 503 Service Unavailable\r\n\r\n "

    goto :goto_2

    .line 228
    :cond_4
    const-string v4, "HTTP/1.1 403 Forbidden\r\n\r\n "

    goto :goto_2

    .line 232
    :cond_5
    const-string v4, "HTTP/1.1 400 Bad Request\r\n\r\n "
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    .line 206
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .parameter "statement"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/phonegap/CallbackServer;->javascript:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 308
    monitor-enter p0

    .line 309
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/phonegap/CallbackServer;->empty:Z

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 311
    monitor-exit p0

    .line 312
    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startServer()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/CallbackServer;->active:Z

    .line 151
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/phonegap/CallbackServer;->serverThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/phonegap/CallbackServer;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method

.method public stopServer()V
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/phonegap/CallbackServer;->active:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/CallbackServer;->active:Z

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 259
    monitor-exit p0

    .line 261
    :cond_0
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public usePolling()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/phonegap/CallbackServer;->usePolling:Z

    return v0
.end method
