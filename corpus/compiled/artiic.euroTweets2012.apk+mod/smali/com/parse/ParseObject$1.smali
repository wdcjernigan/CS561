.class final Lcom/parse/ParseObject$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lcom/parse/ParseObject$ParseObjectFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObject$ParseObjectFactory",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public bridge synthetic getNew()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/parse/ParseObject$1;->getNew()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public getNew()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/parse/ParseUser;

    invoke-direct {v0}, Lcom/parse/ParseUser;-><init>()V

    return-object v0
.end method
