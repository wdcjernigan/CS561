.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;
.source "ParsePush.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field private mChannelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Lorg/json/JSONObject;

.field private mExpirationTime:Ljava/lang/Long;

.field private mExpirationTimeInterval:Ljava/lang/Long;

.field private mPushToAndroid:Z

.field private mPushToIOS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 24
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 25
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParsePush;->mPushToIOS:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParsePush;->mPushToAndroid:Z

    .line 39
    return-void
.end method


# virtual methods
.method buildCommand()Lcom/parse/ParseCommand;
    .locals 4

    .prologue
    .line 184
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "client_push"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, command:Lcom/parse/ParseCommand;
    iget-object v1, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot send a push without calling either setMessage or setData"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    const-string v1, "data"

    iget-object v2, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 191
    iget-object v1, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    if-nez v1, :cond_2

    .line 193
    const-string v1, "channel"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 201
    const-string v1, "expiration_time"

    iget-object v2, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    .line 206
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/parse/ParsePush;->mPushToIOS:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/parse/ParsePush;->mPushToAndroid:Z

    if-eqz v1, :cond_4

    .line 216
    :goto_2
    return-object v0

    .line 197
    :cond_2
    const-string v1, "channels"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 203
    const-string v1, "expiration_time_interval"

    iget-object v2, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;J)V

    goto :goto_1

    .line 208
    :cond_4
    iget-boolean v1, p0, Lcom/parse/ParsePush;->mPushToIOS:Z

    if-eqz v1, :cond_5

    .line 209
    const-string v1, "type"

    const-string v2, "ios"

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 210
    :cond_5
    iget-boolean v1, p0, Lcom/parse/ParsePush;->mPushToAndroid:Z

    if-eqz v1, :cond_6

    .line 211
    const-string v1, "type"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot push if both pushToIOS and pushToAndroid are false"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clearExpiration()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 98
    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 99
    return-void
.end method

.method public send()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/parse/ParsePush;->buildCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public sendInBackground()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->sendInBackground(Lcom/parse/SendCallback;)V

    .line 178
    return-void
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 162
    new-instance v0, Lcom/parse/ParsePush$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePush$1;-><init>(Lcom/parse/ParsePush;Lcom/parse/ParseCallback;)V

    .line 169
    .local v0, sendTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 170
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "channel cannot be null"

    invoke-static {v0, v1}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 49
    iget-object v0, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, channels:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    const-string v5, "channels collection cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, channel:Ljava/lang/String;
    if-eqz v0, :cond_1

    move v2, v3

    :goto_2
    const-string v5, "channel cannot be null"

    invoke-static {v2, v5}, Lcom/parse/gdata/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0           #channel:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    move v2, v4

    .line 58
    goto :goto_0

    .restart local v0       #channel:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    move v2, v4

    .line 60
    goto :goto_2

    .line 62
    .end local v0           #channel:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    .line 63
    iget-object v2, p0, Lcom/parse/ParsePush;->mChannelSet:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/parse/ParsePush;->mData:Lorg/json/JSONObject;

    .line 124
    return-void
.end method

.method public setExpirationTime(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 77
    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 1
    .parameter "timeInterval"

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTime:Ljava/lang/Long;

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush;->mExpirationTimeInterval:Ljava/lang/Long;

    .line 90
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .local v0, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "alert"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 0
    .parameter "pushToAndroid"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/parse/ParsePush;->mPushToAndroid:Z

    .line 115
    return-void
.end method

.method public setPushToIOS(Z)V
    .locals 0
    .parameter "pushToIOS"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/parse/ParsePush;->mPushToIOS:Z

    .line 107
    return-void
.end method
