.class Lcom/parse/ParseIncrementOperation;
.super Lcom/parse/ParseFieldOperation;
.source "ParseIncrementOperation.java"


# instance fields
.field private amount:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "Increment"

    invoke-direct {p0, v0}, Lcom/parse/ParseFieldOperation;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    return-object v0
.end method

.method public setAmount(Ljava/lang/Number;)V
    .locals 0
    .parameter "newAmount"

    .prologue
    .line 11
    iput-object p1, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 12
    return-void
.end method
