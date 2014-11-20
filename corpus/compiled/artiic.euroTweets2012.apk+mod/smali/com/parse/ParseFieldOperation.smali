.class Lcom/parse/ParseFieldOperation;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/parse/ParseFieldOperation;->setType(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/ParseFieldOperation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "newType"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parse/ParseFieldOperation;->type:Ljava/lang/String;

    .line 16
    return-void
.end method
