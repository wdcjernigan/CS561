.class Lcom/parse/ParseCommand;
.super Ljava/lang/Object;
.source "ParseCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseCommand$InternalCallback;
    }
.end annotation


# static fields
.field private static CONNECTION_TIMEOUT:I

.field private static INITIAL_DELAY:I

.field private static SOCKET_TIMEOUT:I


# instance fields
.field private attemptsMade:I

.field private cancelled:Z

.field private client:Lorg/apache/http/client/HttpClient;

.field private delay:J

.field private internalCallback:Lcom/parse/ParseCommand$InternalCallback;

.field op:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field private post:Lorg/apache/http/client/methods/HttpPost;

.field private retryEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 55
    sput v0, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    .line 56
    sput v0, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    .line 57
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "theOp"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 49
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 50
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 71
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 72
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 74
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 76
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 79
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter "theOp"
    .parameter "httpClient"

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v0, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 49
    iput-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 50
    iput v0, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 64
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 66
    iput-object p2, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 67
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 68
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 49
    iput-boolean v1, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 50
    iput v1, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 51
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/parse/ParseCommand;->delay:J

    .line 87
    const-string v1, "op"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 88
    const-string v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 90
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 91
    .local v0, httpParameters:Lorg/apache/http/params/HttpParams;
    sget v1, Lcom/parse/ParseCommand;->CONNECTION_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    sget v1, Lcom/parse/ParseCommand;->SOCKET_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    .line 95
    invoke-direct {p0}, Lcom/parse/ParseCommand;->maybeSetupHttpProxy()V

    .line 96
    return-void
.end method

.method static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .parameter "stringer"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    instance-of v7, p1, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    .line 197
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v6, p1

    .line 198
    check-cast v6, Lorg/json/JSONObject;

    .line 199
    .local v6, object:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 200
    .local v4, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v5, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 202
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 206
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    .local v3, key:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 208
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 211
    .end local v3           #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 226
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #object:Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 215
    :cond_2
    instance-of v7, p1, Lorg/json/JSONArray;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 216
    check-cast v0, Lorg/json/JSONArray;

    .line 217
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 218
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 219
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 221
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 225
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #i:I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private calculateNextDelay()V
    .locals 4

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 417
    return-void
.end method

.method private maybeSetupHttpProxy()V
    .locals 6

    .prologue
    .line 378
    const-string v4, "http.proxyHost"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, host:Ljava/lang/String;
    const-string v4, "http.proxyPort"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, portString:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 384
    .local v1, port:I
    new-instance v3, Lorg/apache/http/HttpHost;

    const-string v4, "http"

    invoke-direct {v3, v0, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    .local v3, proxy:Lorg/apache/http/HttpHost;
    iget-object v4, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v5, "http.route.default-proxy"

    invoke-interface {v4, v5, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private sendRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/json/JSONObject;
    .locals 9
    .parameter "client"
    .parameter "post"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 395
    :try_start_0
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 396
    .local v2, rawResponse:Lorg/apache/http/HttpResponse;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x2000

    invoke-direct {v3, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 398
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 406
    .local v1, json:Ljava/lang/String;
    :try_start_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 407
    .local v5, tokener:Lorg/json/JSONTokener;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 412
    .local v4, result:Lorg/json/JSONObject;
    return-object v4

    .line 399
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #rawResponse:Lorg/apache/http/HttpResponse;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #result:Lorg/json/JSONObject;
    .end local v5           #tokener:Lorg/json/JSONTokener;
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v6, "bad protocol"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 401
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 402
    .local v0, e:Ljava/io/IOException;
    const-string v6, "i/o failure"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6

    .line 408
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #json:Ljava/lang/String;
    .restart local v2       #rawResponse:Lorg/apache/http/HttpResponse;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 409
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v0}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v6

    throw v6
.end method

.method public static setInitialDelay(D)V
    .locals 2
    .parameter "seconds"

    .prologue
    .line 431
    const-wide v0, 0x408f400000000000L

    mul-double/2addr v0, p0

    double-to-int v0, v0

    sput v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    .line 432
    return-void
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 187
    .local v0, stringer:Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 438
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->cancelled:Z

    .line 439
    return-void
.end method

.method connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;
    .locals 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 235
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x64

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public enableRetrying()V
    .locals 6

    .prologue
    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    .line 427
    sget v0, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-long v0, v0

    sget v2, Lcom/parse/ParseCommand;->INITIAL_DELAY:I

    int-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/parse/ParseCommand;->delay:J

    .line 428
    return-void
.end method

.method getCacheKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 170
    .local v2, json:Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 171
    .local v0, currentUser:Lcom/parse/ParseUser;
    const/4 v3, 0x0

    .line 172
    .local v3, sessionToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ParseCommand."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 164
    .end local v0           #currentUser:Lcom/parse/ParseUser;
    .end local v2           #json:Ljava/lang/String;
    .end local v3           #sessionToken:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method perform()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommand;->perform(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method perform(Z)Ljava/lang/Object;
    .locals 7
    .parameter "saveToCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 323
    iget-object v3, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->preparePost()V

    .line 327
    :cond_1
    const/4 v2, 0x0

    .line 330
    .local v2, result:Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseCommand;->client:Lorg/apache/http/client/HttpClient;

    iget-object v4, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v3, v4}, Lcom/parse/ParseCommand;->sendRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 358
    :try_start_1
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 359
    new-instance v3, Lcom/parse/ParseException;

    const-string v4, "code"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, e:Lorg/json/JSONException;
    const-string v3, "corrupted json"

    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseCommand;->connectionFailed(Ljava/lang/String;Ljava/lang/Exception;)Lcom/parse/ParseException;

    move-result-object v3

    throw v3

    .line 331
    .end local v1           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 333
    .local v1, e:Lcom/parse/ParseException;
    iget-boolean v3, p0, Lcom/parse/ParseCommand;->cancelled:Z

    if-eqz v3, :cond_2

    .line 334
    new-instance v3, Lcom/parse/ParseException;

    const/4 v4, 0x1

    const-string v5, "Request cancelled"

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 337
    :cond_2
    iget v3, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    .line 340
    iget-boolean v3, p0, Lcom/parse/ParseCommand;->retryEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4

    .line 341
    const-string v3, "com.parse.ParseCommand"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fetch failed. Waiting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/parse/ParseCommand;->delay:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " milliseconds before attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/parse/ParseCommand;->attemptsMade:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_2
    iget-wide v3, p0, Lcom/parse/ParseCommand;->delay:J

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseCommand;->calculateNextDelay()V

    .line 349
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommand;->perform(Z)Ljava/lang/Object;

    move-result-object v0

    .line 374
    .end local v1           #e:Lcom/parse/ParseException;
    :cond_3
    :goto_1
    return-object v0

    .line 351
    .restart local v1       #e:Lcom/parse/ParseException;
    :cond_4
    throw v1

    .line 361
    .end local v1           #e:Lcom/parse/ParseException;
    :cond_5
    :try_start_3
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 366
    .local v0, answer:Ljava/lang/Object;
    if-eqz p1, :cond_6

    .line 367
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_6
    iget-object v3, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    if-eqz v3, :cond_3

    .line 371
    iget-object v3, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    invoke-interface {v3, p0, v0}, Lcom/parse/ParseCommand$InternalCallback;->perform(Lcom/parse/ParseCommand;Ljava/lang/Object;)V

    goto :goto_1

    .line 345
    .end local v0           #answer:Ljava/lang/Object;
    .restart local v1       #e:Lcom/parse/ParseException;
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method preparePost()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x6d

    .line 241
    iget-object v8, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 242
    .local v6, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v4, fullParams:Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 245
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v5           #key:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Lorg/json/JSONException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 251
    .end local v2           #e:Lorg/json/JSONException;
    :cond_0
    :try_start_1
    const-string v8, "v"

    const-string v9, "a1.0.17"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v8, "iid"

    invoke-static {}, Lcom/parse/Parse;->getInstallationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v8, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    .line 269
    .local v1, currentUser:Lcom/parse/ParseUser;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 270
    const-string v8, "session_token"

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    :cond_1
    const-string v8, "%s/%s/%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "2"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 279
    .local v7, url:Ljava/lang/String;
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    .line 281
    :try_start_2
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF8"

    invoke-direct {v3, v8, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .local v3, entity:Lorg/apache/http/entity/StringEntity;
    const-string v8, "application/json"

    invoke-virtual {v3, v8}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 283
    iget-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v8, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 288
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    sget-object v8, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    sget-object v9, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    invoke-direct {v0, v8, v9}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .local v0, consumer:Lcom/parse/signpost/OAuthConsumer;
    const/4 v8, 0x0

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_3
    iget-object v8, p0, Lcom/parse/ParseCommand;->post:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v0, v8}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_3
    .catch Lcom/parse/signpost/exception/OAuthMessageSignerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/parse/signpost/exception/OAuthCommunicationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 299
    return-void

    .line 284
    .end local v0           #consumer:Lcom/parse/signpost/OAuthConsumer;
    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v2

    .line 285
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 292
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #consumer:Lcom/parse/signpost/OAuthConsumer;
    .restart local v3       #entity:Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v2

    .line 293
    .local v2, e:Lcom/parse/signpost/exception/OAuthMessageSignerException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 294
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthMessageSignerException;
    :catch_3
    move-exception v2

    .line 295
    .local v2, e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 296
    .end local v2           #e:Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    :catch_4
    move-exception v2

    .line 297
    .local v2, e:Lcom/parse/signpost/exception/OAuthCommunicationException;
    new-instance v8, Lcom/parse/ParseException;

    invoke-virtual {v2}, Lcom/parse/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method put(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/parse/ParseCommand;->internalCallback:Lcom/parse/ParseCommand$InternalCallback;

    .line 306
    return-void
.end method

.method setOp(Ljava/lang/String;)V
    .locals 0
    .parameter "theOp"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 141
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 151
    .local v0, answer:Lorg/json/JSONObject;
    const-string v2, "op"

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "params"

    iget-object v3, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 154
    .end local v0           #answer:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 155
    .local v1, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
