.class final Lcom/parse/ParseUser$5;
.super Lcom/parse/BackgroundTask;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/BackgroundTask",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    .local p1, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Lcom/parse/ParseUser;>;"
    iput-object p2, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$5;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/parse/BackgroundTask;-><init>(Lcom/parse/ParseCallback;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/parse/ParseUser;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 826
    new-instance v2, Lcom/parse/ParseUser;

    invoke-direct {v2}, Lcom/parse/ParseUser;-><init>()V

    .line 828
    .local v2, user:Lcom/parse/ParseUser;
    :try_start_0
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/ParseUser$5;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    #calls: Lcom/parse/ParseUser;->constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$300(Lcom/parse/ParseUser;)Lcom/parse/ParseCommand;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 834
    .local v1, result:Lorg/json/JSONObject;
    const-string v3, "create"

    invoke-virtual {v2, v3, v1}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 835
    iget-object v3, p0, Lcom/parse/ParseUser$5;->val$authType:Ljava/lang/String;

    #calls: Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 836
    #calls: Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V
    invoke-static {v2}, Lcom/parse/ParseUser;->access$500(Lcom/parse/ParseUser;)V

    .line 837
    return-object v2

    .line 830
    .end local v1           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lcom/parse/ParseException;

    invoke-direct {v3, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/parse/ParseUser$5;->run()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
