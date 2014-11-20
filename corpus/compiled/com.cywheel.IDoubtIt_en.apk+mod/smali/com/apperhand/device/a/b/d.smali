.class public final Lcom/apperhand/device/a/b/d;
.super Lcom/apperhand/device/a/b/b;
.source "EULAService.java"


# static fields
.field public static final f:Ljava/lang/Object;


# instance fields
.field private g:Lcom/apperhand/device/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/apperhand/device/a/b/d;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p4}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apperhand/device/a/b/b;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    .line 31
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->h()Lcom/apperhand/device/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    .line 32
    return-void
.end method

.method private a(Lcom/apperhand/common/dto/protocol/EULARequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA:Lcom/apperhand/common/dto/Command$Commands;

    const/4 v3, 0x0

    const-class v4, Lcom/apperhand/common/dto/protocol/EULAResponse;

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/util/Map;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/EULAResponse;
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    iget-object v2, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v2

    sget-object v3, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    const-string v4, "Unable to handle EULA command!!!!"

    invoke-interface {v2, v3, v4, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method private a(Lcom/apperhand/common/dto/EULADetails;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getFooter()[B

    move-result-object v1

    const-string v2, "new_eula_footer.html"

    invoke-interface {v0, v1, v2}, Lcom/apperhand/device/a/a/c;->a([BLjava/lang/String;)Z

    .line 115
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/EULADetails;->getBody()[B

    move-result-object v1

    const-string v2, "new_eula_body.html"

    invoke-interface {v0, v1, v2}, Lcom/apperhand/device/a/a/c;->a([BLjava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    invoke-interface {v0, p1}, Lcom/apperhand/device/a/a/c;->a(Lcom/apperhand/common/dto/EULADetails;)Z

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/apperhand/common/dto/protocol/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/apperhand/common/dto/protocol/EULARequest;

    invoke-direct {v0}, Lcom/apperhand/common/dto/protocol/EULARequest;-><init>()V

    iget-object v1, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apperhand/common/dto/protocol/EULARequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/protocol/EULARequest;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method protected final a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/util/Map;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/protocol/BaseResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    invoke-interface {v0, v1, v1}, Lcom/apperhand/device/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    const-string v1, "skip_status"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-object v0

    .line 40
    :cond_0
    sget-object v1, Lcom/apperhand/device/a/b/d;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    check-cast p1, Lcom/apperhand/common/dto/protocol/EULAResponse;

    .line 42
    invoke-virtual {p1}, Lcom/apperhand/common/dto/protocol/EULAResponse;->getDetails()Lcom/apperhand/common/dto/EULADetails;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/EULADetails;)V

    .line 46
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->g:Lcom/apperhand/device/a/a/c;

    const-string v2, "new_eula_body.html"

    const-string v3, "new_eula_footer.html"

    invoke-interface {v0, v2, v3}, Lcom/apperhand/device/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apperhand/device/a/d/f;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;

    invoke-direct {v1}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;-><init>()V

    .line 92
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    .line 94
    const-string v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/EULAAcceptDetails;

    .line 95
    invoke-virtual {v1, v0}, Lcom/apperhand/common/dto/protocol/EULAStatusRequest;->setDetails(Lcom/apperhand/common/dto/EULAAcceptDetails;)V

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v0

    sget-object v2, Lcom/apperhand/common/dto/Command$Commands;->EULA_STATUS:Lcom/apperhand/common/dto/Command$Commands;

    const/4 v3, 0x0

    const-class v4, Lcom/apperhand/common/dto/protocol/EULAResponse;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/util/Map;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/EULAResponse;

    .line 100
    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/EULAResponse;->getDetails()Lcom/apperhand/common/dto/EULADetails;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apperhand/device/a/b/d;->a(Lcom/apperhand/common/dto/EULADetails;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "Unable to send command status for command [%s]!!!!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apperhand/device/a/b/d;->c:Lcom/apperhand/common/dto/Command$Commands;

    invoke-virtual {v4}, Lcom/apperhand/common/dto/Command$Commands;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    iget-object v2, p0, Lcom/apperhand/device/a/b/d;->d:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v2

    sget-object v3, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    invoke-interface {v2, v3, v1, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
