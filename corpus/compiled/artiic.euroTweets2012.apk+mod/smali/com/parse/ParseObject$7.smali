.class Lcom/parse/ParseObject$7;
.super Lcom/parse/BackgroundTask;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchInBackground(Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 925
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Lcom/parse/ParseObject;>;"
    iput-object p1, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/parse/ParseObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 928
    iget-object v0, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->fetch(Z)Lcom/parse/ParseObject;

    .line 929
    iget-object v0, p0, Lcom/parse/ParseObject$7;->this$0:Lcom/parse/ParseObject;

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/parse/ParseObject$7;->run()Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
