.class Lcom/phonegap/ContactAccessor$WhereOptions;
.super Ljava/lang/Object;
.source "ContactAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/ContactAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WhereOptions"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/ContactAccessor;

.field private where:Ljava/lang/String;

.field private whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phonegap/ContactAccessor;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/phonegap/ContactAccessor$WhereOptions;->this$0:Lcom/phonegap/ContactAccessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/phonegap/ContactAccessor$WhereOptions;->where:Ljava/lang/String;

    return-object v0
.end method

.method public getWhereArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/phonegap/ContactAccessor$WhereOptions;->whereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0
    .parameter "where"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/phonegap/ContactAccessor$WhereOptions;->where:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setWhereArgs([Ljava/lang/String;)V
    .locals 0
    .parameter "whereArgs"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/phonegap/ContactAccessor$WhereOptions;->whereArgs:[Ljava/lang/String;

    .line 220
    return-void
.end method
