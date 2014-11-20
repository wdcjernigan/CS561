.class Lcom/parse/ParseUser$9;
.super Lcom/parse/BackgroundTask;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    .local p2, x0:Lcom/parse/ParseCallback;,"Lcom/parse/ParseCallback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseUser$9;->val$authData:Lorg/json/JSONObject;

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
    .line 950
    invoke-virtual {p0}, Lcom/parse/ParseUser$9;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v2, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    .line 956
    .local v2, user:Lcom/parse/ParseUser;
    :try_start_0
    #getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/ParseUser$9;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 957
    #getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v2}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 959
    iget-object v3, p0, Lcom/parse/ParseUser$9;->val$authData:Lorg/json/JSONObject;

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 960
    .local v1, oldAnonymousData:Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    #calls: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v3}, Lcom/parse/ParseUser;->access$600(Lcom/parse/ParseUser;)V

    .line 962
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/parse/ParseUser;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :try_start_1
    invoke-virtual {v2}, Lcom/parse/ParseUser;->save()V

    .line 968
    iget-object v3, p0, Lcom/parse/ParseUser$9;->val$authType:Ljava/lang/String;

    #calls: Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 976
    const/4 v3, 0x0

    return-object v3

    .line 963
    .end local v1           #oldAnonymousData:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 964
    .local v0, e:Lorg/json/JSONException;
    new-instance v3, Lcom/parse/ParseException;

    invoke-direct {v3, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 969
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #oldAnonymousData:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 970
    .local v0, e:Lcom/parse/ParseException;
    iget-object v3, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    #calls: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 971
    throw v0

    .line 972
    .end local v0           #e:Lcom/parse/ParseException;
    :catch_2
    move-exception v0

    .line 973
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/parse/ParseUser$9;->this$0:Lcom/parse/ParseUser;

    #calls: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/parse/ParseUser;->access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 974
    new-instance v3, Lcom/parse/ParseException;

    invoke-direct {v3, v0}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
