.class final Lcom/parse/ParseUser$7;
.super Lcom/parse/SaveCallback;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/LogInCallback;

.field final synthetic val$logInWithTask:Lcom/parse/BackgroundTask;


# direct methods
.method constructor <init>(Lcom/parse/BackgroundTask;Lcom/parse/LogInCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/parse/ParseUser$7;->val$logInWithTask:Lcom/parse/BackgroundTask;

    iput-object p2, p0, Lcom/parse/ParseUser$7;->val$callback:Lcom/parse/LogInCallback;

    invoke-direct {p0}, Lcom/parse/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 875
    if-eqz p1, :cond_2

    .line 876
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_1

    .line 880
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$logInWithTask:Lcom/parse/BackgroundTask;

    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$callback:Lcom/parse/LogInCallback;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$callback:Lcom/parse/LogInCallback;

    invoke-virtual {v0, v2, p1}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$callback:Lcom/parse/LogInCallback;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$callback:Lcom/parse/LogInCallback;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/parse/LogInCallback;->internalDone(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    goto :goto_0
.end method
