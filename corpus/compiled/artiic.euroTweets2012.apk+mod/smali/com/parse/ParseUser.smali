.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "_User"

.field private static final CURRENT_USER_FILENAME:Ljava/lang/String; = "currentUser"

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/auth/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z


# instance fields
.field private final authData:Lorg/json/JSONObject;

.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z

.field private final linkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private password:Ljava/lang/String;

.field private final readOnlyLinkedServiceNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "_User"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 51
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 52
    iput-boolean v1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    .line 55
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseUser;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseUser;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseUser;)Lcom/parse/ParseCommand;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$700(Lcom/parse/ParseUser;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLaziness(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V

    return-void
.end method

.method private static checkApplicationContext()V
    .locals 2

    .prologue
    .line 718
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(context, oauthKey, oauthSecret) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_0
    return-void
.end method

.method private static constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_login"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 522
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "user_password"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-object v0
.end method

.method private static constructPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;
    .locals 2
    .parameter "email"

    .prologue
    .line 400
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v1, "user_request_password_reset"

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-object v0
.end method

.method private constructSignUpCommand()Lcom/parse/ParseCommand;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/parse/ParseUser;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 362
    .local v0, command:Lcom/parse/ParseCommand;
    const-string v1, "user_signup"

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setOp(Ljava/lang/String;)V

    .line 363
    return-object v0
.end method

.method private constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 367
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v5, "user_signup_or_login"

    invoke-direct {v0, v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {p0, v6, v6}, Lcom/parse/ParseUser;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v3

    .line 372
    .local v3, params:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 373
    .local v2, keys:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 374
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, key:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 377
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_0

    .line 378
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 386
    :catch_0
    move-exception v5

    goto :goto_0

    .line 379
    .restart local v4       #value:Ljava/lang/Object;
    :cond_0
    instance-of v5, v4, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 380
    check-cast v4, Lorg/json/JSONArray;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 381
    .restart local v4       #value:Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 382
    check-cast v4, Ljava/lang/String;

    .end local v4           #value:Ljava/lang/Object;
    invoke-virtual {v0, v1, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    .restart local v4       #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v1           #key:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 393
    const-string v5, "user_password"

    iget-object v6, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_4
    return-object v0
.end method

.method static disableAutomaticUser()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1025
    return-void
.end method

.method public static enableAutomaticUser()V
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1037
    return-void
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 603
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 605
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v1, :cond_0

    .line 606
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 627
    :goto_0
    return-object v1

    .line 608
    :cond_0
    sget-boolean v1, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v1, :cond_2

    .line 609
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 612
    :cond_1
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 617
    :cond_2
    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 618
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentUser"

    invoke-static {v1, v2}, Lcom/parse/ParseUser;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 619
    .local v0, user:Lcom/parse/ParseObject;
    if-nez v0, :cond_4

    .line 620
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 621
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->lazyLogIn()V

    .line 623
    :cond_3
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 625
    :cond_4
    check-cast v0, Lcom/parse/ParseUser;

    .end local v0           #user:Lcom/parse/ParseObject;
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 626
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iput-boolean v3, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 627
    sget-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 1

    .prologue
    .line 1040
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    return v0
.end method

.method private linkWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "authenticator"
    .parameter "callback"

    .prologue
    .line 989
    new-instance v0, Lcom/parse/ParseUser$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseUser$10;-><init>(Lcom/parse/ParseUser;Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V

    invoke-interface {p1, v0}, Lcom/parse/auth/ParseAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 1002
    return-void
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 6
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p0, :cond_0

    .line 547
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify a username for the user to log in with"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 550
    :cond_0
    if-nez p1, :cond_1

    .line 551
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must specify a password for the user to log in with"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 554
    :cond_1
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->constructLogInCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 556
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v1

    .line 558
    .local v1, result:Ljava/lang/Object;
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 559
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x65

    const-string v5, "invalid login credentials"

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 561
    :cond_2
    new-instance v2, Lcom/parse/ParseUser;

    invoke-direct {v2}, Lcom/parse/ParseUser;-><init>()V

    .line 562
    .local v2, user:Lcom/parse/ParseUser;
    iget-object v3, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v2, v3, v1}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 563
    invoke-static {v2}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    .line 564
    return-object v2
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "callback"

    .prologue
    .line 586
    new-instance v0, Lcom/parse/ParseUser$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v0, logInTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 594
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/parse/ParseUser;
    .locals 3
    .parameter "authType"
    .parameter "authData"

    .prologue
    const/4 v2, 0x1

    .line 59
    new-instance v1, Lcom/parse/ParseUser;

    invoke-direct {v1}, Lcom/parse/ParseUser;-><init>()V

    .line 60
    .local v1, user:Lcom/parse/ParseUser;
    iput-boolean v2, v1, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 61
    iput-boolean v2, v1, Lcom/parse/ParseUser;->isLazy:Z

    .line 63
    :try_start_0
    iget-object v2, v1, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v2, v1, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    sput-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 69
    const/4 v2, 0x0

    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 70
    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static logInWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "authenticator"
    .parameter "callback"

    .prologue
    .line 934
    new-instance v0, Lcom/parse/ParseUser$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$8;-><init>(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V

    invoke-interface {p0, v0}, Lcom/parse/auth/ParseAuthenticationProvider;->authenticate(Lcom/parse/auth/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 947
    return-void
.end method

.method static logInWith(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    .line 815
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-static {v0, p1}, Lcom/parse/ParseUser;->logInWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/LogInCallback;)V

    .line 819
    return-void
.end method

.method static logInWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/LogInCallback;)V
    .locals 4
    .parameter "authType"
    .parameter "authData"
    .parameter "callback"

    .prologue
    .line 823
    new-instance v1, Lcom/parse/ParseUser$5;

    invoke-direct {v1, p2, p0, p1}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 842
    .local v1, logInWithTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 843
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    new-instance v0, Lcom/parse/ParseUser$6;

    invoke-direct {v0, p2, p0, p1}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 870
    .local v0, claimTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 895
    .end local v0           #claimTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseUser;>;"
    :goto_0
    return-void

    .line 872
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$7;

    invoke-direct {v3, v1, p2}, Lcom/parse/ParseUser$7;-><init>(Lcom/parse/BackgroundTask;Lcom/parse/LogInCallback;)V

    invoke-virtual {v2, p0, p1, v3}, Lcom/parse/ParseUser;->linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V

    goto :goto_0

    .line 894
    :cond_1
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    goto :goto_0
.end method

.method public static logOut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 651
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v3, :cond_1

    .line 652
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v3}, Lcom/parse/ParseUser;->getLinkedServiceNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    .local v0, authType:Ljava/lang/String;
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-virtual {v3, v0}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    .end local v0           #authType:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 656
    sget-object v3, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    iput-object v5, v3, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 659
    :cond_1
    const/4 v3, 0x1

    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 660
    sput-object v5, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 661
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "currentUser"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 662
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 663
    return-void
.end method

.method private logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1011
    invoke-interface {p1}, Lcom/parse/auth/ParseAuthenticationProvider;->deauthenticate()V

    .line 1012
    return-void
.end method

.method static registerAuthenticationProvider(Lcom/parse/auth/ParseAuthenticationProvider;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 807
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    invoke-interface {p0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    .line 812
    :cond_0
    return-void
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {p0}, Lcom/parse/ParseUser;->constructPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseCommand;

    move-result-object v0

    .line 683
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .parameter "email"
    .parameter "callback"

    .prologue
    .line 703
    new-instance v0, Lcom/parse/ParseUser$3;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseCallback;Ljava/lang/String;)V

    .line 710
    .local v0, task:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 711
    return-void
.end method

.method private resolveLaziness(Z)V
    .locals 4
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 930
    :goto_0
    return-void

    .line 901
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 903
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->signUp(Z)V

    .line 904
    iput-boolean v3, p0, Lcom/parse/ParseUser;->isLazy:Z

    goto :goto_0

    .line 907
    :cond_1
    if-eqz p1, :cond_2

    .line 908
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 912
    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpOrLoginCommand()Lcom/parse/ParseCommand;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 913
    .local v1, result:Lorg/json/JSONObject;
    const-string v2, "is_new"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 915
    const-string v2, "create"

    invoke-virtual {p0, v2, v1}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 916
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 917
    iget-object v2, p0, Lcom/parse/ParseUser;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 918
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    .line 919
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parse/ParseUser;->isLazy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    :goto_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto :goto_0

    .line 923
    :cond_3
    :try_start_1
    new-instance v0, Lcom/parse/ParseUser;

    invoke-direct {v0}, Lcom/parse/ParseUser;-><init>()V

    .line 924
    .local v0, newUser:Lcom/parse/ParseUser;
    const-string v2, "create"

    invoke-virtual {v0, v2, v1}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 925
    invoke-static {v0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 928
    .end local v0           #newUser:Lcom/parse/ParseUser;
    .end local v1           #result:Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    throw v2
.end method

.method private restoreAnonymity(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "anonymousData"

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static saveCurrentUser(Lcom/parse/ParseUser;)V
    .locals 3
    .parameter "user"

    .prologue
    const/4 v2, 0x1

    .line 632
    invoke-static {}, Lcom/parse/ParseUser;->checkApplicationContext()V

    .line 633
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eq v0, p0, :cond_0

    .line 634
    invoke-static {}, Lcom/parse/ParseUser;->logOut()V

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    .line 637
    iput-boolean v2, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 638
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v1, "currentUser"

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseUser;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 639
    sput-boolean v2, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 640
    sput-object p0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 641
    return-void
.end method

.method private stripAnonymity()V
    .locals 4

    .prologue
    .line 253
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    const-string v2, "anonymous"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v2, "anonymous"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 262
    :cond_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private synchronizeAllAuthData()V
    .locals 2

    .prologue
    .line 749
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 751
    .local v0, authTypes:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 755
    .end local v0           #authTypes:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 4
    .parameter "authType"

    .prologue
    .line 734
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    .line 737
    .local v0, provider:Lcom/parse/auth/ParseAuthenticationProvider;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-interface {v0}, Lcom/parse/auth/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    move-result v1

    .line 739
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 740
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method cleanUpAuthData()V
    .locals 4

    .prologue
    .line 182
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 187
    iget-object v2, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 188
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    sget-object v2, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/auth/ParseAuthenticationProvider;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/parse/auth/ParseAuthenticationProvider;->restoreAuthentication(Lorg/json/JSONObject;)Z

    goto :goto_0

    .line 193
    .end local v1           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method clearData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 130
    iput-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 131
    iput-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    .line 132
    invoke-super {p0}, Lcom/parse/ParseObject;->clearData()V

    .line 133
    return-void
.end method

.method constructDeleteCommand()Lcom/parse/ParseCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 353
    invoke-super {p0}, Lcom/parse/ParseObject;->constructDeleteCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 354
    .local v0, command:Lcom/parse/ParseCommand;
    iget-object v1, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 355
    const-string v1, "session_token"

    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-object v0
.end method

.method constructSaveCommand()Lcom/parse/ParseCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-super {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 333
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_1

    .line 334
    const/4 v0, 0x0

    .line 348
    .end local v0           #command:Lcom/parse/ParseCommand;
    :cond_0
    :goto_0
    return-object v0

    .line 337
    .restart local v0       #command:Lcom/parse/ParseCommand;
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 338
    const-string v1, "user_password"

    iget-object v2, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 342
    const-string v1, "session_token"

    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_3
    iget-object v1, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    const-string v1, "auth_data"

    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object p0

    .line 321
    :cond_1
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 322
    invoke-virtual {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    .line 324
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLinkedServiceNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/parse/ParseUser;->readOnlyLinkedServiceNames:Ljava/util/Set;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCurrentUser()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    return v0
.end method

.method isLazy()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    return v0
.end method

.method linkWith(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    .line 982
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No authentication provider could be found for the provided authType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_0
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0, p2}, Lcom/parse/ParseUser;->linkWith(Lcom/parse/auth/ParseAuthenticationProvider;Lcom/parse/SaveCallback;)V

    .line 986
    return-void
.end method

.method linkWith(Ljava/lang/String;Lorg/json/JSONObject;Lcom/parse/SaveCallback;)V
    .locals 1
    .parameter "authType"
    .parameter "authData"
    .parameter "callback"

    .prologue
    .line 950
    new-instance v0, Lcom/parse/ParseUser$9;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/parse/ParseUser$9;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseCallback;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 979
    return-void
.end method

.method logOutWith(Ljava/lang/String;)V
    .locals 1
    .parameter "authType"

    .prologue
    .line 1005
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    sget-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/auth/ParseAuthenticationProvider;

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->logOutWith(Lcom/parse/auth/ParseAuthenticationProvider;)V

    .line 1008
    :cond_0
    return-void
.end method

.method mergeObject(Lorg/json/JSONObject;Z)V
    .locals 6
    .parameter "object"
    .parameter "justCreated"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 141
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    :try_start_0
    const-string v4, "session_token"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    :cond_0
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    :try_start_1
    const-string v4, "auth_data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 154
    .local v3, newData:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 155
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 159
    iget-object v4, p0, Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_1
    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #newData:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 144
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 145
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 168
    .end local v0           #e:Lorg/json/JSONException;
    :cond_2
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    :try_start_2
    const-string v4, "is_new"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 175
    :cond_3
    return-void

    .line 171
    :catch_2
    move-exception v0

    .line 172
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 245
    const-string v0, "username"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 249
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 88
    const-string v0, "username"

    if-ne p1, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public save(Z)V
    .locals 1
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLaziness(Z)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->save(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    .line 304
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .parameter "email"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 233
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 221
    iput-object p1, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z

    .line 223
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkIfRunning()V

    .line 203
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->signUp(Z)V

    .line 424
    return-void
.end method

.method protected signUp(Z)V
    .locals 7
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 427
    if-eqz p1, :cond_0

    .line 428
    invoke-virtual {p0, v3}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 433
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Username cannot be missing or blank"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    throw v3

    .line 436
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 437
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Password cannot be missing or blank"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_5

    .line 446
    :try_start_2
    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    const-string v4, "anonymous"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v4, :cond_4

    .line 447
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/parse/ParseUser;->save(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 484
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    .line 486
    :goto_0
    return-void

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, e:Lorg/json/JSONException;
    :try_start_3
    new-instance v3, Lcom/parse/ParseException;

    invoke-direct {v3, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 455
    .end local v1           #e:Lorg/json/JSONException;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot sign up a user that has already signed up."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    :cond_5
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 461
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/parse/ParseUser;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/parse/ParseUser;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 462
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    iget-object v3, v3, Lcom/parse/ParseUser;->dirtyKeys:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/parse/ParseUser;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 463
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/parse/ParseUser;->dirty:Z

    .line 464
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseUser;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 465
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParseUser;->save()V

    .line 467
    const-string v3, "create"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/parse/ParseUser;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 468
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 484
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto :goto_0

    .line 472
    :cond_6
    :try_start_4
    invoke-direct {p0}, Lcom/parse/ParseUser;->constructSignUpCommand()Lcom/parse/ParseCommand;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 473
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_7

    .line 484
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto :goto_0

    .line 477
    :cond_7
    :try_start_5
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 479
    .local v2, result:Lorg/json/JSONObject;
    iget-object v3, v0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/parse/ParseUser;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 481
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUser(Lcom/parse/ParseUser;)V

    .line 482
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parse/ParseUser;->isNew:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 484
    invoke-virtual {p0}, Lcom/parse/ParseUser;->finishedRunning()V

    goto/16 :goto_0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 507
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->checkIfRunning(Z)V

    .line 509
    new-instance v0, Lcom/parse/ParseUser$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseCallback;)V

    .line 516
    .local v0, signUpTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 517
    return-void
.end method

.method toJSONObject(ZZ)Lorg/json/JSONObject;
    .locals 4
    .parameter "includeDates"
    .parameter "allKeys"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    .local v1, objectJSON:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 104
    :try_start_0
    const-string v2, "session_token"

    iget-object v3, p0, Lcom/parse/ParseUser;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 112
    :try_start_1
    const-string v2, "auth_data"

    iget-object v3, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :cond_1
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not encode value for key: sessionToken"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0       #e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "could not attach key: auth_data"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method unlinkFrom(Ljava/lang/String;)Z
    .locals 3
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 790
    if-nez p1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->save()V

    move v0, v1

    .line 801
    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method unlinkFromInBackground(Ljava/lang/String;)V
    .locals 1
    .parameter "authType"

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V

    .line 759
    return-void
.end method

.method unlinkFromInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "authType"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 762
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseUser;->dirty:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    new-instance v0, Lcom/parse/ParseUser$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lcom/parse/SaveCallback;)V

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 787
    :cond_0
    :goto_1
    return-void

    .line 784
    :cond_1
    if-eqz p2, :cond_0

    .line 785
    invoke-virtual {p2, v1, v1}, Lcom/parse/SaveCallback;->internalDone(Ljava/lang/Void;Lcom/parse/ParseException;)V

    goto :goto_1

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method validateDelete()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_0
    return-void
.end method

.method validateSave()V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_1
    return-void
.end method
