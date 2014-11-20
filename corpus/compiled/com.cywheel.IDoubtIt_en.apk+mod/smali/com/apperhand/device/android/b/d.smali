.class public final Lcom/apperhand/device/android/b/d;
.super Ljava/lang/Object;
.source "TransportHttpApache.java"

# interfaces
.implements Lcom/apperhand/device/a/c/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/apperhand/device/a/a;

.field private final d:Lcom/apperhand/device/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apperhand/device/a/a;Lcom/apperhand/device/a/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/apperhand/device/android/b/d;->b:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/apperhand/device/android/b/d;->c:Lcom/apperhand/device/a/a;

    .line 41
    iput-object p3, p0, Lcom/apperhand/device/android/b/d;->d:Lcom/apperhand/device/a/b;

    .line 42
    iput-object p4, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/Command$Commands;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    new-instance v0, Lcom/apperhand/device/a/d/f;

    sget-object v1, Lcom/apperhand/device/a/d/f$a;->a:Lcom/apperhand/device/a/d/f$a;

    const-string v2, "Unable to handle the command. The server url is not set correctly!!!"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/a/d/f;-><init>(Lcom/apperhand/device/a/d/f$a;Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command$Commands;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command$Commands;->getInternalUri()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {v0, v4}, Lcom/apperhand/device/a/d/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    .line 58
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/apperhand/device/a/d/b;->a([B[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 59
    invoke-virtual {p1, v0}, Lcom/apperhand/common/dto/Command$Commands;->setUri(Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    return-object v0

    .line 66
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/apperhand/device/android/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/util/Map;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/apperhand/common/dto/protocol/BaseResponse;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/apperhand/common/dto/Command$Commands;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 82
    sget-object v2, Lcom/apperhand/device/android/b/b;->a:Lcom/apperhand/device/android/b/b;

    .line 83
    invoke-interface {v2, p1}, Lcom/apperhand/device/android/b/c;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v0, p0, Lcom/apperhand/device/android/b/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/apperhand/device/android/c/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v5, "device-id"

    invoke-direct {v1, v5, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "protocol-version"

    iget-object v5, p0, Lcom/apperhand/device/android/b/d;->c:Lcom/apperhand/device/a/a;

    invoke-interface {v5}, Lcom/apperhand/device/a/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "User-Agent"

    iget-object v5, p0, Lcom/apperhand/device/android/b/d;->c:Lcom/apperhand/device/a/a;

    invoke-interface {v5}, Lcom/apperhand/device/a/a;->m()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz p3, :cond_1

    .line 97
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    if-eqz v1, :cond_0

    .line 101
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    invoke-direct {v6, v0, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/apperhand/device/android/b/d;->d:Lcom/apperhand/device/a/b;

    invoke-virtual {v0}, Lcom/apperhand/device/a/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v5, "ab-ts"

    invoke-direct {v1, v5, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 115
    invoke-direct {p0, p2}, Lcom/apperhand/device/android/b/d;->a(Lcom/apperhand/common/dto/Command$Commands;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/apperhand/device/android/c/d;->a(Ljava/lang/String;[BLjava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-interface {v2, v0, p4}, Lcom/apperhand/device/android/b/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/BaseResponse;

    .line 118
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
