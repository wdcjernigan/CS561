.class final enum Lcom/parse/ParseFile$ParseFileState;
.super Ljava/lang/Enum;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ParseFileState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/ParseFile$ParseFileState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/ParseFile$ParseFileState;

.field public static final enum AWAITING_FETCH:Lcom/parse/ParseFile$ParseFileState;

.field public static final enum DATA_AVAILABLE:Lcom/parse/ParseFile$ParseFileState;

.field public static final enum DIRTY:Lcom/parse/ParseFile$ParseFileState;

.field public static final enum FETCHING:Lcom/parse/ParseFile$ParseFileState;

.field public static final enum SAVING:Lcom/parse/ParseFile$ParseFileState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/parse/ParseFile$ParseFileState;

    const-string v1, "DIRTY"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseFile$ParseFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    new-instance v0, Lcom/parse/ParseFile$ParseFileState;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseFile$ParseFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    new-instance v0, Lcom/parse/ParseFile$ParseFileState;

    const-string v1, "AWAITING_FETCH"

    invoke-direct {v0, v1, v4}, Lcom/parse/ParseFile$ParseFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->AWAITING_FETCH:Lcom/parse/ParseFile$ParseFileState;

    new-instance v0, Lcom/parse/ParseFile$ParseFileState;

    const-string v1, "FETCHING"

    invoke-direct {v0, v1, v5}, Lcom/parse/ParseFile$ParseFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    new-instance v0, Lcom/parse/ParseFile$ParseFileState;

    const-string v1, "DATA_AVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/parse/ParseFile$ParseFileState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->DATA_AVAILABLE:Lcom/parse/ParseFile$ParseFileState;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/parse/ParseFile$ParseFileState;

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->DIRTY:Lcom/parse/ParseFile$ParseFileState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->SAVING:Lcom/parse/ParseFile$ParseFileState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->AWAITING_FETCH:Lcom/parse/ParseFile$ParseFileState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->FETCHING:Lcom/parse/ParseFile$ParseFileState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/parse/ParseFile$ParseFileState;->DATA_AVAILABLE:Lcom/parse/ParseFile$ParseFileState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/parse/ParseFile$ParseFileState;->$VALUES:[Lcom/parse/ParseFile$ParseFileState;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/ParseFile$ParseFileState;
    .locals 1
    .parameter "name"

    .prologue
    .line 47
    const-class v0, Lcom/parse/ParseFile$ParseFileState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile$ParseFileState;

    return-object v0
.end method

.method public static values()[Lcom/parse/ParseFile$ParseFileState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/parse/ParseFile$ParseFileState;->$VALUES:[Lcom/parse/ParseFile$ParseFileState;

    invoke-virtual {v0}, [Lcom/parse/ParseFile$ParseFileState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/ParseFile$ParseFileState;

    return-object v0
.end method
