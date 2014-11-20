.class public final Lcom/apperhand/device/a/b/h;
.super Ljava/lang/Object;
.source "ServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/a/b/h$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/apperhand/device/a/b;Lcom/apperhand/common/dto/Command;Lcom/apperhand/device/a/a;)Lcom/apperhand/device/a/b/b;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    .line 19
    sget-object v1, Lcom/apperhand/device/a/b/h$1;->a:[I

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apperhand/common/dto/Command$Commands;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 45
    invoke-interface {p2}, Lcom/apperhand/device/a/a;->a()Lcom/apperhand/device/a/d/c;

    move-result-object v1

    sget-object v2, Lcom/apperhand/device/a/d/c$a;->b:Lcom/apperhand/device/a/d/c$a;

    const-string v3, "Uknown command [command = %s] !!!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/apperhand/device/a/d/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    new-instance v0, Lcom/apperhand/device/a/b/a;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/a;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 24
    :pswitch_1
    new-instance v0, Lcom/apperhand/device/a/b/c;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/c;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 27
    :pswitch_2
    new-instance v0, Lcom/apperhand/device/a/b/i;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/i;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 30
    :pswitch_3
    new-instance v0, Lcom/apperhand/device/a/b/j;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getCommand()Lcom/apperhand/common/dto/Command$Commands;

    move-result-object v2

    invoke-direct {v0, p0, p2, v1, v2}, Lcom/apperhand/device/a/b/j;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command$Commands;)V

    goto :goto_0

    .line 33
    :pswitch_4
    new-instance v0, Lcom/apperhand/device/a/b/f;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/f;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 36
    :pswitch_5
    new-instance v0, Lcom/apperhand/device/a/b/g;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/g;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 39
    :pswitch_6
    new-instance v0, Lcom/apperhand/device/a/b/e;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/e;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 42
    :pswitch_7
    new-instance v0, Lcom/apperhand/device/a/b/d;

    invoke-virtual {p1}, Lcom/apperhand/common/dto/Command;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1, p1}, Lcom/apperhand/device/a/b/d;-><init>(Lcom/apperhand/device/a/b;Lcom/apperhand/device/a/a;Ljava/lang/String;Lcom/apperhand/common/dto/Command;)V

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
