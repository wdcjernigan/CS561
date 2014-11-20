.class Lcom/parse/ParseObject$5;
.super Lcom/parse/BackgroundTask;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteEventually()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 817
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0, p2}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

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
    .line 817
    invoke-virtual {p0}, Lcom/parse/ParseObject$5;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 820
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 821
    .local v0, cache:Lcom/parse/ParseCommandCache;
    iget-object v1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->removeCommandsForNewObject(Lcom/parse/ParseObject;)V

    .line 827
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 828
    iget-object v1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->constructDeleteCommand()Lcom/parse/ParseCommand;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommandCache;->runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)V

    .line 833
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 831
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseCommandCache;->getTestHelper()Lcom/parse/ParseCommandCache$TestHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/parse/ParseCommandCache$TestHelper;->notify(I)V

    goto :goto_0
.end method
