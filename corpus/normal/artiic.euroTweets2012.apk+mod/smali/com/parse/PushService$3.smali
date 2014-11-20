.class Lcom/parse/PushService$3;
.super Lcom/parse/os/ParseAsyncTask;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/os/ParseAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private reader:Ljava/io/BufferedReader;

.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$finalService:Landroid/app/Service;

.field final synthetic val$initialReader:Ljava/io/BufferedReader;


# direct methods
.method constructor <init>(Lcom/parse/PushService;Ljava/io/BufferedReader;Landroid/app/Service;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$3;->val$initialReader:Ljava/io/BufferedReader;

    iput-object p3, p0, Lcom/parse/PushService$3;->val$finalService:Landroid/app/Service;

    invoke-direct {p0}, Lcom/parse/os/ParseAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 673
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/PushService$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 678
    iget-object v4, p0, Lcom/parse/PushService$3;->val$initialReader:Ljava/io/BufferedReader;

    if-eqz v4, :cond_2

    .line 679
    iget-object v4, p0, Lcom/parse/PushService$3;->val$initialReader:Ljava/io/BufferedReader;

    iput-object v4, p0, Lcom/parse/PushService$3;->reader:Ljava/io/BufferedReader;

    .line 756
    :cond_0
    invoke-static {}, Lcom/parse/PushService;->resetDelay()V

    .line 760
    :try_start_0
    const-string v4, "com.parse.PushService"

    const-string v5, "waiting for a push"

    invoke-static {v4, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v4, p0, Lcom/parse/PushService$3;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v2

    .line 765
    :cond_1
    :goto_0
    return-object v2

    .line 681
    :cond_2
    invoke-static {}, Lcom/parse/PushService;->access$300()I

    move-result v4

    if-lez v4, :cond_3

    .line 683
    :try_start_1
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sleeping for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/PushService;->access$300()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-static {}, Lcom/parse/PushService;->access$300()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Lcom/parse/PushService;->sleep(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 690
    :cond_3
    iget-object v4, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->destroyed:Z
    invoke-static {v4}, Lcom/parse/PushService;->access$400(Lcom/parse/PushService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 693
    iget-object v4, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->increaseDelay()V
    invoke-static {v4}, Lcom/parse/PushService;->access$500(Lcom/parse/PushService;)V

    .line 696
    sget-object v4, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_4

    .line 698
    :try_start_2
    sget-object v4, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 708
    :cond_4
    :goto_1
    :try_start_3
    const-string v4, "com.parse.PushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "connecting to push server at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/parse/PushService;->access$600()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->pushPort:I
    invoke-static {v6}, Lcom/parse/PushService;->access$700(Lcom/parse/PushService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/Parse;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/parse/PushService;->access$600()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->pushPort:I
    invoke-static {v5}, Lcom/parse/PushService;->access$700(Lcom/parse/PushService;)I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 710
    .local v0, address:Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    .line 711
    .local v3, newSocket:Ljava/net/Socket;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 712
    sget-object v4, Lcom/parse/PushService;->sleepSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v4, :cond_5

    .line 713
    const/16 v4, 0x1388

    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 728
    :goto_2
    iget-object v5, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    monitor-enter v5

    .line 729
    :try_start_4
    iget-object v4, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->destroyed:Z
    invoke-static {v4}, Lcom/parse/PushService;->access$400(Lcom/parse/PushService;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 730
    monitor-exit v5

    goto/16 :goto_0

    .line 733
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 685
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v3           #newSocket:Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 686
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v4, "com.parse.PushService"

    const-string v5, "sleep interrupted"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 699
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 701
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "error closing socket"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 716
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #address:Ljava/net/InetSocketAddress;
    .restart local v3       #newSocket:Ljava/net/Socket;
    :cond_5
    const/16 v4, 0x32

    :try_start_5
    invoke-virtual {v3, v0, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 718
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v3           #newSocket:Ljava/net/Socket;
    :catch_2
    move-exception v1

    .line 719
    .local v1, e:Ljava/net/UnknownHostException;
    const-string v4, "com.parse.PushService"

    const-string v5, "unknown host"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 721
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_3
    move-exception v1

    .line 722
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "could not connect to push server"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 732
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #address:Ljava/net/InetSocketAddress;
    .restart local v3       #newSocket:Ljava/net/Socket;
    :cond_6
    :try_start_6
    sput-object v3, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    .line 733
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 737
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/parse/PushService;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v4, p0, Lcom/parse/PushService$3;->reader:Ljava/io/BufferedReader;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 747
    iget-object v4, p0, Lcom/parse/PushService$3;->val$finalService:Landroid/app/Service;

    #calls: Lcom/parse/PushService;->sendSubscriptionInformation(Landroid/content/Context;)Z
    invoke-static {v4}, Lcom/parse/PushService;->access$000(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 751
    iget-object v4, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->destroyed:Z
    invoke-static {v4}, Lcom/parse/PushService;->access$400(Lcom/parse/PushService;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 739
    :catch_4
    move-exception v1

    .line 740
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "com.parse.PushService"

    const-string v5, "unsupported encoding"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 742
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v1

    .line 743
    .local v1, e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "could not construct reader"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 763
    .end local v0           #address:Ljava/net/InetSocketAddress;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #newSocket:Ljava/net/Socket;
    :catch_6
    move-exception v1

    .line 764
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "com.parse.PushService"

    const-string v5, "could not read from socket"

    invoke-static {v4, v5, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/parse/PushService$3;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 9
    .parameter "line"

    .prologue
    .line 771
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #getter for: Lcom/parse/PushService;->destroyed:Z
    invoke-static {v6}, Lcom/parse/PushService;->access$400(Lcom/parse/PushService;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 808
    :goto_0
    return-void

    .line 774
    :cond_0
    if-nez p1, :cond_1

    .line 775
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    const/4 v7, 0x0

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v6, v7}, Lcom/parse/PushService;->access$800(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 780
    :cond_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 783
    .local v5, tokener:Lorg/json/JSONTokener;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .local v2, message:Lorg/json/JSONObject;
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 793
    const-string v6, "time"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 794
    .local v4, time:Ljava/lang/String;
    sget-object v6, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 795
    :cond_2
    sput-object v4, Lcom/parse/PushService;->lastTime:Ljava/lang/String;

    .line 796
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->saveLastTime(Landroid/content/Context;)V
    invoke-static {v6}, Lcom/parse/PushService;->access$900(Landroid/content/Context;)V

    .line 801
    .end local v4           #time:Ljava/lang/String;
    :cond_3
    const-string v6, "channel"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 802
    const-string v6, "channel"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, channel:Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 804
    .local v3, pushData:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    #calls: Lcom/parse/PushService;->handlePushData(Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v6, v0, v3}, Lcom/parse/PushService;->access$1000(Lcom/parse/PushService;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 807
    .end local v0           #channel:Ljava/lang/String;
    .end local v3           #pushData:Lorg/json/JSONObject;
    :cond_4
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    iget-object v7, p0, Lcom/parse/PushService$3;->reader:Ljava/io/BufferedReader;

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v6, v7}, Lcom/parse/PushService;->access$800(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 784
    .end local v2           #message:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 786
    .local v1, e:Lorg/json/JSONException;
    const-string v6, "com.parse.PushService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bad json: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 787
    iget-object v6, p0, Lcom/parse/PushService$3;->this$0:Lcom/parse/PushService;

    iget-object v7, p0, Lcom/parse/PushService$3;->reader:Ljava/io/BufferedReader;

    #calls: Lcom/parse/PushService;->readInBackground(Ljava/io/BufferedReader;)V
    invoke-static {v6, v7}, Lcom/parse/PushService;->access$800(Lcom/parse/PushService;Ljava/io/BufferedReader;)V

    goto :goto_0
.end method
