.class final enum Lcom/apperhand/device/android/a$a;
.super Ljava/lang/Enum;
.source "EULAManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apperhand/device/android/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apperhand/device/android/a$a;

.field public static final enum b:Lcom/apperhand/device/android/a$a;

.field public static final enum c:Lcom/apperhand/device/android/a$a;

.field private static final synthetic d:[Lcom/apperhand/device/android/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/apperhand/device/android/a$a;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/apperhand/device/android/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/a$a;->a:Lcom/apperhand/device/android/a$a;

    new-instance v0, Lcom/apperhand/device/android/a$a;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/apperhand/device/android/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/a$a;->b:Lcom/apperhand/device/android/a$a;

    new-instance v0, Lcom/apperhand/device/android/a$a;

    const-string v1, "TERMINATE"

    invoke-direct {v0, v1, v4}, Lcom/apperhand/device/android/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apperhand/device/android/a$a;->c:Lcom/apperhand/device/android/a$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apperhand/device/android/a$a;

    sget-object v1, Lcom/apperhand/device/android/a$a;->a:Lcom/apperhand/device/android/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apperhand/device/android/a$a;->b:Lcom/apperhand/device/android/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apperhand/device/android/a$a;->c:Lcom/apperhand/device/android/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apperhand/device/android/a$a;->d:[Lcom/apperhand/device/android/a$a;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apperhand/device/android/a$a;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/apperhand/device/android/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apperhand/device/android/a$a;

    return-object v0
.end method

.method public static values()[Lcom/apperhand/device/android/a$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/apperhand/device/android/a$a;->d:[Lcom/apperhand/device/android/a$a;

    invoke-virtual {v0}, [Lcom/apperhand/device/android/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apperhand/device/android/a$a;

    return-object v0
.end method
