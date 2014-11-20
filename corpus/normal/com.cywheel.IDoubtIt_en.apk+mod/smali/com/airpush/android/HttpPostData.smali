.class public final Lcom/airpush/android/HttpPostData;
.super Ljava/lang/Object;
.source "HttpPostData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airpush/android/HttpPostData$InflatingEntity;,
        Lcom/airpush/android/HttpPostData$Prefs;
    }
.end annotation


# static fields
.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static ctx:Landroid/content/Context;

.field private static entity:Lorg/apache/http/HttpEntity;

.field private static httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParameters:Lorg/apache/http/params/BasicHttpParams;

.field private static httpPost:Lorg/apache/http/client/methods/HttpPost;

.field private static httpResponse:Lorg/apache/http/message/BasicHttpResponse;

.field private static ip:Ljava/lang/String;

.field private static ip1:Ljava/lang/String;

.field private static ip2:Ljava/lang/String;

.field private static post:Lorg/apache/http/client/methods/HttpPost;

.field private static response:Lorg/apache/http/HttpEntity;

.field protected static timeDiff:J

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static url:Ljava/lang/String;


# instance fields
.field private httpResponse2:Lorg/apache/http/message/BasicHttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/airpush/android/HttpPostData;->timeDiff:J

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static postData(Ljava/util/List;Landroid/content/Context;)Lorg/apache/http/HttpEntity;
    .locals 8
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-wide/32 v6, 0x1b7740

    const/4 v3, 0x0

    .line 66
    invoke-static {p1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sput-object p1, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 72
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v4, "http://api.airpush.com/v2/api.php"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 73
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 77
    const/16 v2, 0xbb8

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    .line 78
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    const/16 v2, 0xbb8

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    .line 82
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 84
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 85
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$1;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$1;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 95
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$2;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$2;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 112
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 113
    const-string v2, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Status Code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 117
    sget-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 153
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v2, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 123
    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 129
    goto :goto_0

    .line 131
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 134
    const-string v2, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 135
    goto :goto_0

    .line 136
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 138
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 139
    const-string v2, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 140
    goto :goto_0

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 142
    .local v1, iex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const-string v2, "AirpushSDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 145
    goto :goto_0

    .line 152
    .end local v1           #iex:Ljava/lang/Exception;
    :cond_0
    sget-wide v4, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p1, v4, v5}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 153
    goto :goto_0
.end method

.method protected static postData2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "args"
    .parameter "appId"
    .parameter "imei"
    .parameter "context"

    .prologue
    .line 258
    invoke-static {p3}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 259
    const-string v2, ""

    .line 260
    .local v2, error:Ljava/lang/String;
    sput-object p3, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 262
    :try_start_0
    invoke-static {p3}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 263
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 264
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 266
    .local v0, connection:Ljava/net/HttpURLConnection;
    const-string v9, "GET"

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 267
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 268
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 269
    const/16 v9, 0xbb8

    invoke-virtual {v0, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 270
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 272
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 273
    .local v6, responseCode:I
    const/16 v9, 0xc8

    if-ne v6, v9, :cond_1

    .line 274
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v7, sb:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 278
    .local v5, reader:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 281
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 316
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v2           #error:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #responseCode:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #url:Ljava/net/URL;
    :goto_1
    return-object v9

    .line 279
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    .restart local v2       #error:Ljava/lang/String;
    .restart local v4       #line:Ljava/lang/String;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    .restart local v6       #responseCode:I
    .restart local v7       #sb:Ljava/lang/StringBuffer;
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 286
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .end local v6           #responseCode:I
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/net/SocketTimeoutException;
    const-string v9, "AirpushSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SocketTimeoutException Thrown : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 313
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :cond_1
    :goto_2
    const-string v9, ""

    goto :goto_1

    .line 292
    :catch_1
    move-exception v1

    .line 295
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "AirpushSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ClientProtocolException Thrown : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto :goto_2

    .line 298
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 301
    .local v1, e:Ljava/net/MalformedURLException;
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 302
    const-string v9, "AirpushSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "MalformedURLException Thrown : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 303
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v1

    .line 306
    .local v1, e:Ljava/io/IOException;
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 307
    const-string v9, "AirpushSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOException Thrown : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 309
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 310
    .local v3, ex:Ljava/lang/Exception;
    const-string v9, "AirpushSDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PostData2 Exception Thrown : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v9, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    const-wide/32 v10, 0x1b7740

    invoke-static {v9, v10, v11}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    goto/16 :goto_2

    .line 315
    .end local v2           #error:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_2
    sget-wide v9, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p3, v9, v10}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 316
    const-string v9, ""

    goto/16 :goto_1
.end method

.method protected static postData3(Ljava/util/List;ZLandroid/content/Context;)Lorg/apache/http/HttpEntity;
    .locals 8
    .parameter
    .parameter "test"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;Z",
            "Landroid/content/Context;",
            ")",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-wide/32 v6, 0x1b7740

    const/4 v3, 0x0

    .line 157
    invoke-static {p2}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    sput-object p2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    const-string v2, "http://api.airpush.com/testmsg2.php"

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    .line 176
    :goto_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 177
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 179
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 181
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    .line 182
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 186
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    .line 187
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 189
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 191
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$3;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$3;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 200
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$4;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$4;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 215
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 216
    const-string v2, "AirpushSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v5}, Lorg/apache/http/message/BasicHttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 219
    sget-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;

    .line 253
    :goto_1
    return-object v2

    .line 165
    :cond_0
    const-string v2, "ip1"

    invoke-static {p2, v2}, Lcom/airpush/android/SetPreferences;->getIpPrefrences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->ip1:Ljava/lang/String;

    .line 166
    const-string v2, "ip2"

    invoke-static {p2, v2}, Lcom/airpush/android/SetPreferences;->getIpPrefrences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->ip2:Ljava/lang/String;

    .line 167
    sget-object v2, Lcom/airpush/android/HttpPostData;->ip1:Ljava/lang/String;

    const-string v4, "not Found"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/airpush/android/HttpPostData;->ip1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/v2/api.php"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v2, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 224
    goto :goto_1

    .line 169
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/airpush/android/HttpPostData;->ip2:Ljava/lang/String;

    const-string v4, "not Found"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/airpush/android/HttpPostData;->ip2:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/v2/api.php"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 228
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 230
    goto :goto_1

    .line 172
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_2
    :try_start_2
    const-string v2, "http://api.airpush.com/v2/api.php"

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 232
    :catch_2
    move-exception v0

    .line 234
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 235
    const-string v2, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 236
    goto/16 :goto_1

    .line 237
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 239
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 240
    const-string v2, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 241
    goto/16 :goto_1

    .line 242
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 244
    .local v1, iex:Ljava/lang/Exception;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v6, v7}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 245
    goto/16 :goto_1

    .line 252
    .end local v1           #iex:Ljava/lang/Exception;
    :cond_3
    sget-wide v4, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p2, v4, v5}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 253
    goto/16 :goto_1
.end method

.method public static sendTestLogs(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-wide/32 v5, 0x1b7740

    const/4 v3, 0x0

    .line 372
    invoke-static {p1}, Lcom/airpush/android/Constants;->checkInternetConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    sput-object p1, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    .line 377
    :try_start_0
    const-string v2, "http://www.tvchannelsfree.com/logtest.php"

    sput-object v2, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    .line 379
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v4, Lcom/airpush/android/HttpPostData;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 380
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, p0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 382
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    .line 384
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    .line 385
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutConnection:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 389
    const/16 v2, 0x2710

    sput v2, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    .line 390
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    sget v4, Lcom/airpush/android/HttpPostData;->timeoutSocket:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 392
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpParameters:Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 394
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$5;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$5;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 403
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Lcom/airpush/android/HttpPostData$6;

    invoke-direct {v4}, Lcom/airpush/android/HttpPostData$6;-><init>()V

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 418
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v4, Lcom/airpush/android/HttpPostData;->httpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicHttpResponse;

    sput-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    .line 420
    sget-object v2, Lcom/airpush/android/HttpPostData;->httpResponse:Lorg/apache/http/message/BasicHttpResponse;

    invoke-virtual {v2}, Lorg/apache/http/message/BasicHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    sput-object v2, Lcom/airpush/android/HttpPostData;->entity:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 422
    const-string v2, "done"

    .line 456
    :goto_0
    return-object v2

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/net/SocketTimeoutException;
    const-string v2, "SocketTimeoutException Thrown"

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 427
    goto :goto_0

    .line 429
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .line 431
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v2, "ClientProtocolException Thrown"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 433
    goto :goto_0

    .line 435
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 437
    .local v0, e:Ljava/net/MalformedURLException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 438
    const-string v2, "MalformedURLException Thrown"

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 439
    goto :goto_0

    .line 440
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 442
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 443
    const-string v2, "IOException Thrown"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 444
    goto :goto_0

    .line 445
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 447
    .local v1, iex:Ljava/lang/Exception;
    sget-object v2, Lcom/airpush/android/HttpPostData;->ctx:Landroid/content/Context;

    invoke-static {v2, v5, v6}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    move-object v2, v3

    .line 448
    goto :goto_0

    .line 455
    .end local v1           #iex:Ljava/lang/Exception;
    :cond_0
    sget-wide v2, Lcom/airpush/android/HttpPostData;->timeDiff:J

    invoke-static {p1, v2, v3}, Lcom/airpush/android/Airpush;->reStartSDK(Landroid/content/Context;J)V

    .line 456
    const-string v2, "notDone"

    goto :goto_0
.end method

.method public static submitHttpRequest(Ljava/lang/String;Ljava/util/List;)Ljava/io/InputStream;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :try_start_0
    const-string v1, ""

    .line 323
    .local v1, query:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 324
    const-string v3, "utf-8"

    invoke-static {p1, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, u:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 330
    .local v0, httpConnection:Ljava/net/HttpURLConnection;
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 331
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 333
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 334
    const/16 v3, 0x4e20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 335
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 336
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 337
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 339
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 340
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 346
    .end local v0           #httpConnection:Ljava/net/HttpURLConnection;
    .end local v1           #query:Ljava/lang/String;
    .end local v2           #u:Ljava/net/URL;
    :goto_0
    return-object v3

    .line 342
    :catch_0
    move-exception v3

    .line 346
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
