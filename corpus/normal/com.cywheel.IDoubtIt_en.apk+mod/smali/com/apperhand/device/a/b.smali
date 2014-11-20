.class public abstract Lcom/apperhand/device/a/b;
.super Ljava/lang/Object;
.source "SDKManager.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lcom/apperhand/device/a/a;


# direct methods
.method public constructor <init>(Lcom/apperhand/device/a/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/apperhand/device/a/b;->c:Z

    .line 40
    iput-object p1, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    .line 41
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/apperhand/device/a/b;->a:J

    .line 42
    iput-boolean v2, p0, Lcom/apperhand/device/a/b;->d:Z

    .line 43
    return-void
.end method

.method private a(Ljava/lang/Throwable;Lcom/apperhand/common/dto/Command;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    const-string v2, "Unexpected error!!! "

    invoke-interface {v0, v1, v2, p1}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    instance-of v0, p1, Lcom/apperhand/device/a/d/f;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lcom/apperhand/device/a/d/f;

    .line 121
    invoke-virtual {v0}, Lcom/apperhand/device/a/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/apperhand/device/a/b/k;

    iget-object v2, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_1

    sget-object v4, Lcom/apperhand/common/dto/Command$Commands;->UNEXPECTED_EXCEPTION:Lcom/apperhand/common/dto/Command$Commands;

    :goto_1
    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/apperhand/device/a/b/k;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;Ljava/lang/Throwable;)V

    .line 133
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 134
    const-string v2, "exception_command"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v0, v1}, Lcom/apperhand/device/a/b/k;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/apperhand/device/a/d/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v1}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "Error sending unexpected exception!!!"

    invoke-interface {v1, v2, v3, v0}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    new-instance v3, Lcom/apperhand/common/dto/protocol/CommandsRequest;

    invoke-direct {v3}, Lcom/apperhand/common/dto/protocol/CommandsRequest;-><init>()V

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v4}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v4

    invoke-interface {v4}, Lcom/apperhand/device/a/d/d;->b()Ljava/util/Collection;

    move-result-object v4

    iget-object v5, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v5}, Lcom/apperhand/device/a/a;->i()Lcom/apperhand/device/a/d/d;

    move-result-object v5

    const-string v6, "ACTIVATED"

    const-string v7, "false"

    const/4 v8, 0x1

    invoke-interface {v5, v6, v7, v8}, Lcom/apperhand/device/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    invoke-virtual {v3, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setNeedSpecificParameters(Z)V

    iget-boolean v0, p0, Lcom/apperhand/device/a/b;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "first time"

    :goto_0
    invoke-virtual {v3, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setInitiationType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->j()Lcom/apperhand/common/dto/ApplicationDetails;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setApplicationDetails(Lcom/apperhand/common/dto/ApplicationDetails;)V

    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/apperhand/common/dto/protocol/CommandsRequest;->setCurrentInterval(J)V

    iget-boolean v0, p0, Lcom/apperhand/device/a/b;->c:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "first-time"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v2, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v2}, Lcom/apperhand/device/a/a;->b()Lcom/apperhand/device/a/c/a;

    move-result-object v2

    sget-object v4, Lcom/apperhand/common/dto/Command$Commands;->COMMANDS:Lcom/apperhand/common/dto/Command$Commands;

    const-class v5, Lcom/apperhand/common/dto/protocol/CommandsResponse;

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/apperhand/device/a/c/a;->a(Ljava/lang/Object;Lcom/apperhand/common/dto/Command$Commands;Ljava/util/Map;Ljava/lang/Class;)Lcom/apperhand/common/dto/protocol/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/protocol/CommandsResponse;

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->isValidResponse()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/32 v2, 0x15180

    invoke-virtual {p0, v2, v3}, Lcom/apperhand/device/a/b;->c(J)V

    iget-object v0, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v0}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v0

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->c:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "Server Error in getCommands. Next command = [86400] seconds"

    invoke-interface {v0, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/apperhand/device/a/b;->d()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apperhand/common/dto/Command;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-static {p0, v0, v1}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-interface {v3}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v3

    sget-object v4, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Command = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v6

    invoke-virtual {v6}, Lcom/apperhand/common/dto/Command$Commands;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/apperhand/device/a/b/b;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v1, v0

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v0, "schedule"

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->getCommandsInterval()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/apperhand/device/a/b;->c(J)V

    invoke-static {v0}, Lcom/apperhand/device/a/d/e;->a(Lcom/apperhand/common/dto/protocol/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/apperhand/device/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apperhand/common/dto/protocol/CommandsResponse;->getCommands()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_4
    invoke-direct {p0, v0, v1}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;Lcom/apperhand/common/dto/Command;)V

    .line 63
    :cond_5
    return-void

    .line 62
    :catch_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public abstract a(J)V
.end method

.method public final a(Lcom/apperhand/common/dto/Command;)V
    .locals 1
    .parameter

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-static {p0, p1, v0}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/apperhand/device/a/b/b;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-direct {p0, v0, p1}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0
.end method

.method public final a(Lcom/apperhand/common/dto/Command;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apperhand/common/dto/Command;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/apperhand/device/a/b;->e:Lcom/apperhand/device/a/a;

    invoke-static {p0, p1, v0}, Lcom/apperhand/device/a/b/h;->a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p2}, Lcom/apperhand/device/a/b/b;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/apperhand/device/a/b;->a(Ljava/lang/Throwable;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/apperhand/device/a/b;->c:Z

    .line 47
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract b(J)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/apperhand/device/a/b;->a(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected abstract c()J
.end method

.method public final c(J)V
    .locals 2
    .parameter

    .prologue
    .line 193
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 194
    iput-wide p1, p0, Lcom/apperhand/device/a/b;->a:J

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/apperhand/device/a/b;->b(J)V

    .line 197
    :cond_0
    return-void
.end method

.method protected abstract d()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/apperhand/device/a/b;->a:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/apperhand/device/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apperhand/device/a/b;->d:Z

    .line 216
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/apperhand/device/a/b;->d:Z

    return v0
.end method
