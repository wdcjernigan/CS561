.class final Lcom/parse/ParseObject$12;
.super Lcom/parse/BackgroundTask;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$finalObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1263
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p2, p0, Lcom/parse/ParseObject$12;->val$finalObjects:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-virtual {p0}, Lcom/parse/ParseObject$12;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/parse/ParseObject$12;->val$finalObjects:Ljava/util/List;

    invoke-static {v0}, Lcom/parse/ParseObject;->saveAll(Ljava/util/List;)V

    .line 1267
    const/4 v0, 0x0

    return-object v0
.end method
