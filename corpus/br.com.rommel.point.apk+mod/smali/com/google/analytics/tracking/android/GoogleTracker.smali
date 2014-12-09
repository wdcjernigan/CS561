.class public Lcom/google/analytics/tracking/android/GoogleTracker;
.super Ljava/lang/Object;
.source "GoogleTracker.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Tracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/GoogleTracker$1;,
        Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;
    }
.end annotation


# static fields
.field private static final DF:Ljava/text/DecimalFormat;


# instance fields
.field private volatile exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

.field private final handler:Lcom/google/analytics/tracking/android/TrackerHandler;

.field private final model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

.field private volatile trackerClosed:Z

.field private volatile trackingStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.######"

    new-instance v2, Ljava/text/DecimalFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/analytics/tracking/android/GoogleTracker;->DF:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/analytics/tracking/android/TrackerHandler;)V
    .locals 3
    .parameter "trackingId"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackerClosed:Z

    .line 31
    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackingStarted:Z

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackingId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p2, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->handler:Lcom/google/analytics/tracking/android/TrackerHandler;

    .line 38
    new-instance v0, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;-><init>(Lcom/google/analytics/tracking/android/GoogleTracker$1;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    .line 40
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "sampleRate"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "sessionControl"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private assertTrackerOpen()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackerClosed:Z

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tracker closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method private internalSend(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "hitType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackingStarted:Z

    .line 73
    if-nez p2, :cond_0

    .line 74
    new-instance p2, Ljava/util/HashMap;

    .end local p2           #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    .restart local p2       #params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v0, "hitType"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setAll(Ljava/util/Map;Ljava/lang/Boolean;)V

    .line 78
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->handler:Lcom/google/analytics/tracking/android/TrackerHandler;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->getKeysAndValues()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/analytics/tracking/android/TrackerHandler;->sendHit(Ljava/util/Map;)V

    .line 79
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->clearTemporaryValues()V

    .line 80
    return-void
.end method

.method private static microsToCurrencyString(J)Ljava/lang/String;
    .locals 5
    .parameter "currencyInMicros"

    .prologue
    .line 207
    sget-object v0, Lcom/google/analytics/tracking/android/GoogleTracker;->DF:Ljava/text/DecimalFormat;

    long-to-double v1, p0

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public anonymizeIpEnabled()Z
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_ANONYMIZE_IP:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 320
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "anonymizeIp"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackerClosed:Z

    .line 296
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->handler:Lcom/google/analytics/tracking/android/TrackerHandler;

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/TrackerHandler;->closeTracker(Lcom/google/analytics/tracking/android/Tracker;)V

    .line 297
    return-void
.end method

.method public constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;
    .locals 4
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "eventCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "eventAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "eventLabel"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    if-eqz p4, :cond_0

    .line 200
    const-string v1, "eventValue"

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 203
    return-object v0
.end method

.method public constructException(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .parameter "exceptionDescription"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "exDescription"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "exFatal"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 248
    return-object v0
.end method

.method constructItem(Lcom/google/analytics/tracking/android/Item;Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 4
    .parameter "item"
    .parameter "trans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Item;",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "transactionId"

    invoke-virtual {p2}, Lcom/google/analytics/tracking/android/Transaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "currencyCode"

    invoke-virtual {p2}, Lcom/google/analytics/tracking/android/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v1, "itemCode"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getProductSKU()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v1, "itemName"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v1, "itemCategory"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getProductCategory()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v1, "itemPrice"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getItemPriceInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v1, "itemQuantity"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getItemQuantity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_ITEM:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 237
    return-object v0
.end method

.method public constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;
    .locals 5
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 256
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 257
    .local v2, stream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 259
    const-string v3, "rawException"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Utils;->hexEncode([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    if-eqz p1, :cond_0

    .line 262
    const-string v3, "exceptionThreadName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    const-string v3, "exFatal"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v3

    sget-object v4, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_RAW_EXCEPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v3, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 266
    return-object v1
.end method

.method public constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "network"
    .parameter "action"
    .parameter "target"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "socialNetwork"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "socialAction"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "socialTarget"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 290
    return-object v0
.end method

.method public constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "timingCategory"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "timingValue"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "timingVar"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v1, "timingLabel"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 279
    return-object v0
.end method

.method public constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;
    .locals 4
    .parameter "trans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/tracking/android/Transaction;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "transactionId"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "transactionAffiliation"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getAffiliation()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "transactionShipping"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getShippingCostInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "transactionTax"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTotalTaxInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "transactionTotal"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getTotalCostInMicros()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->microsToCurrencyString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "currencyCode"

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v1

    sget-object v2, Lcom/google/analytics/tracking/android/GAUsage$Field;->CONSTRUCT_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 223
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 343
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 344
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    invoke-virtual {v0, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 393
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstallerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_APP_INSTALLER_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 405
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appInstallerId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExceptionParser()Lcom/google/analytics/tracking/android/ExceptionParser;
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_EXCEPTION_PARSER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 417
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    return-object v0
.end method

.method public getSampleRate()D
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_SAMPLE_RATE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 326
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "sampleRate"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Utils;->safeParseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_TRACKING_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 302
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "trackingId"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseSecure()Z
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->GET_USE_SECURE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 429
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "useSecure"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "hitType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p2, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 67
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SEND:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 349
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 350
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    invoke-virtual {v0, p1, p2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setAnonymizeIp(Z)V
    .locals 3
    .parameter "anonymizeIp"

    .prologue
    .line 307
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_ANONYMIZE_IP:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 308
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "anonymizeIp"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .parameter "appId"

    .prologue
    .line 386
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 387
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public setAppInstallerId(Ljava/lang/String;)V
    .locals 2
    .parameter "appInstallerId"

    .prologue
    .line 398
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_INSTALLER_ID:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 399
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appInstallerId"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "appName"

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackingStarted:Z

    if-eqz v0, :cond_0

    .line 359
    const-string v0, "Tracking already started, setAppName call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "setting appName to empty value not allowed, call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_NAME:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 367
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAppScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "appScreen"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 92
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_SCREEN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 93
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "appVersion"

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->trackingStarted:Z

    if-eqz v0, :cond_0

    .line 377
    const-string v0, "Tracking already started, setAppVersion call ignored"

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->wDebug(Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_APP_VERSION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 381
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCampaign(Ljava/lang/String;)V
    .locals 2
    .parameter "campaign"

    .prologue
    .line 337
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_CAMPAIGN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 338
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "campaign"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setCustomDimension(ILjava/lang/String;)V
    .locals 2
    .parameter "slot"
    .parameter "value"

    .prologue
    .line 434
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slot must be > 0, ignoring setCustomDimension call for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "customDimension"

    invoke-static {v1, p1}, Lcom/google/analytics/tracking/android/Utils;->getSlottedModelField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCustomDimensionsAndMetrics(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, dimensions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p2, metrics:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 459
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 460
    .local v1, key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/google/analytics/tracking/android/GoogleTracker;->setCustomDimension(ILjava/lang/String;)V

    goto :goto_0

    .line 463
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    .line 464
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 465
    .restart local v1       #key:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v3, v2}, Lcom/google/analytics/tracking/android/GoogleTracker;->setCustomMetric(ILjava/lang/Long;)V

    goto :goto_1

    .line 468
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public setCustomMetric(ILjava/lang/Long;)V
    .locals 3
    .parameter "slot"
    .parameter "value"

    .prologue
    .line 443
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot must be > 0, ignoring setCustomMetric call for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 453
    :goto_0
    return-void

    .line 447
    :cond_0
    const/4 v0, 0x0

    .line 448
    .local v0, tmpValue:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 449
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v2, "customMetric"

    invoke-static {v2, p1}, Lcom/google/analytics/tracking/android/Utils;->getSlottedModelField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExceptionParser(Lcom/google/analytics/tracking/android/ExceptionParser;)V
    .locals 2
    .parameter "exceptionParser"

    .prologue
    .line 410
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_EXCEPTION_PARSER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 411
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    .line 412
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 2
    .parameter "referrer"

    .prologue
    .line 331
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_REFERRER:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 332
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "referrer"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method public setSampleRate(D)V
    .locals 3
    .parameter "sampleRate"

    .prologue
    .line 313
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_SAMPLE_RATE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 314
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "sampleRate"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public setStartSession(Z)V
    .locals 3
    .parameter "startSession"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 85
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_START_SESSION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 86
    iget-object v1, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v2, "sessionControl"

    if-eqz p1, :cond_0

    const-string v0, "start"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->setForNextHit(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUseSecure(Z)V
    .locals 3
    .parameter "useSecure"

    .prologue
    .line 422
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->SET_USE_SECURE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 423
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "useSecure"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .parameter "category"
    .parameter "action"
    .parameter "label"
    .parameter "value"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 120
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EVENT:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 121
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 122
    const-string v0, "event"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 123
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 124
    return-void
.end method

.method public trackException(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .parameter "threadName"
    .parameter "exception"
    .parameter "fatal"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 152
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EXCEPTION_WITH_THROWABLE:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 153
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->exceptionParser:Lcom/google/analytics/tracking/android/ExceptionParser;

    invoke-interface {v2, p1, p2}, Lcom/google/analytics/tracking/android/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, description:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 167
    invoke-virtual {p0, v0, p3}, Lcom/google/analytics/tracking/android/GoogleTracker;->trackException(Ljava/lang/String;Z)V

    .line 168
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 169
    .end local v0           #description:Ljava/lang/String;
    :goto_1
    return-void

    .line 157
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 158
    const-string v2, "exception"

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructRawException(Ljava/lang/String;Ljava/lang/Throwable;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/io/IOException;
    const-string v2, "trackException: couldn\'t serialize, sending \"Unknown Exception\""

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->w(Ljava/lang/String;)I

    .line 163
    const-string v0, "Unknown Exception"

    .restart local v0       #description:Ljava/lang/String;
    goto :goto_0
.end method

.method public trackException(Ljava/lang/String;Z)V
    .locals 2
    .parameter "description"
    .parameter "fatal"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 142
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_EXCEPTION_WITH_DESCRIPTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 143
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 144
    const-string v0, "exception"

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructException(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 145
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 146
    return-void
.end method

.method public trackSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "network"
    .parameter "action"
    .parameter "target"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 185
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_SOCIAL:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 186
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 187
    const-string v0, "social"

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructSocial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 188
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 189
    return-void
.end method

.method public trackTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "category"
    .parameter "intervalInMilliseconds"
    .parameter "name"
    .parameter "label"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 175
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_TIMING:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 176
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 177
    const-string v0, "timing"

    invoke-virtual/range {p0 .. p5}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 179
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 180
    return-void
.end method

.method public trackTransaction(Lcom/google/analytics/tracking/android/Transaction;)V
    .locals 4
    .parameter "transaction"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 129
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_TRANSACTION:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 130
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 131
    const-string v2, "tran"

    invoke-virtual {p0, p1}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructTransaction(Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Transaction;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/analytics/tracking/android/Item;

    .line 134
    .local v1, item:Lcom/google/analytics/tracking/android/Item;
    const-string v2, "item"

    invoke-virtual {p0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker;->constructItem(Lcom/google/analytics/tracking/android/Item;Lcom/google/analytics/tracking/android/Transaction;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 136
    .end local v1           #item:Lcom/google/analytics/tracking/android/Item;
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/analytics/tracking/android/GAUsage;->setDisableUsage(Z)V

    .line 137
    return-void
.end method

.method public trackView()V
    .locals 2

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 99
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_VIEW:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 103
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method public trackView(Ljava/lang/String;)V
    .locals 2
    .parameter "appScreen"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/analytics/tracking/android/GoogleTracker;->assertTrackerOpen()V

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "trackView requires a appScreen to be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/GAUsage;->getInstance()Lcom/google/analytics/tracking/android/GAUsage;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/tracking/android/GAUsage$Field;->TRACK_VIEW_WITH_APPSCREEN:Lcom/google/analytics/tracking/android/GAUsage$Field;

    invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/GAUsage;->setUsage(Lcom/google/analytics/tracking/android/GAUsage$Field;)V

    .line 113
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GoogleTracker;->model:Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;

    const-string v1, "description"

    invoke-virtual {v0, v1, p1}, Lcom/google/analytics/tracking/android/GoogleTracker$SimpleModel;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "appview"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/analytics/tracking/android/GoogleTracker;->internalSend(Ljava/lang/String;Ljava/util/Map;)V

    .line 115
    return-void
.end method
