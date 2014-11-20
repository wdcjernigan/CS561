.class public final enum Lcom/apperhand/device/android/c/c;
.super Ljava/lang/Enum;
.source "LoggerDecorator.java"

# interfaces
.implements Lcom/apperhand/device/a/d/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apperhand/device/android/c/c$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/device/android/c/c;",
        ">;",
        "Lcom/apperhand/device/a/d/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apperhand/device/android/c/c;

.field private static final synthetic b:[Lcom/apperhand/device/android/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/apperhand/device/android/c/c;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/android/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/c/c;->a:Lcom/apperhand/device/android/c/c;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apperhand/device/android/c/c;

    sget-object v1, Lcom/apperhand/device/android/c/c;->a:Lcom/apperhand/device/android/c/c;

    aput-object v1, v0, v2

    sput-object v0, Lcom/apperhand/device/android/c/c;->b:[Lcom/apperhand/device/android/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/device/android/c/c;
    .locals 1
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/apperhand/device/android/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/c/c;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/device/android/c/c;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/apperhand/device/android/c/c;->b:[Lcom/apperhand/device/android/c/c;

    invoke-virtual {v0}, [Lcom/apperhand/device/android/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/device/android/c/c;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/apperhand/device/android/c/c;->a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    return-void
.end method

.method public final a(Lcom/apperhand/device/a/d/c$a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    sget-object v0, Lcom/apperhand/device/android/c/c$1;->a:[I

    invoke-virtual {p1}, Lcom/apperhand/device/a/d/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    :goto_0
    return-void

    .line 25
    :pswitch_0
    const-string v0, "apperhand"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 28
    :pswitch_1
    const-string v0, "apperhand"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 31
    :pswitch_2
    const-string v0, "apperhand"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
