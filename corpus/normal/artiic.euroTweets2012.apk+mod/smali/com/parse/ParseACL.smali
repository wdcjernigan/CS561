.class public Lcom/parse/ParseACL;
.super Ljava/lang/Object;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseACL$UserResolutionListener;
    }
.end annotation


# static fields
.field private static final PUBLIC_KEY:Ljava/lang/String; = "*"

.field private static final UNRESOLVED_KEY:Ljava/lang/String; = "*unresolved"

.field private static defaultACL:Lcom/parse/ParseACL;

.field private static defaultACLUsesCurrentUser:Z

.field private static defaultACLWithCurrentUser:Lcom/parse/ParseACL;

.field private static lastCurrentUser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private permissionsById:Lorg/json/JSONObject;

.field private shared:Z

.field private unresolvedUser:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseUser;)V
    .locals 1
    .parameter "owner"

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-direct {p0}, Lcom/parse/ParseACL;-><init>()V

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->resolveUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static createACLFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL;
    .locals 10
    .parameter "object"

    .prologue
    .line 90
    new-instance v1, Lcom/parse/ParseACL;

    invoke-direct {v1}, Lcom/parse/ParseACL;-><init>()V

    .line 91
    .local v1, acl:Lcom/parse/ParseACL;
    invoke-static {p0}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 94
    .local v6, userId:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 98
    .local v5, permissions:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, accessType:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {v1, v0, v6, v7}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 95
    .end local v0           #accessType:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #permissions:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could not decode ACL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 102
    .end local v2           #e:Lorg/json/JSONException;
    .end local v6           #userId:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getAccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "accessType"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 167
    .local v1, permissions:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 176
    .end local v1           #permissions:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON failure with ACL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getDefaultACL()Lcom/parse/ParseACL;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 361
    sget-boolean v1, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    if-eqz v1, :cond_3

    .line 363
    sget-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    move-object v0, v1

    .line 364
    .local v0, last:Lcom/parse/ParseUser;
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-nez v1, :cond_1

    .line 365
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    .line 376
    .end local v0           #last:Lcom/parse/ParseUser;
    :goto_1
    return-object v1

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 367
    .restart local v0       #last:Lcom/parse/ParseUser;
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 368
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    sput-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 369
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-virtual {v1, v3}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 370
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 371
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 372
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 374
    :cond_2
    sget-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    goto :goto_1

    .line 376
    .end local v0           #last:Lcom/parse/ParseUser;
    :cond_3
    sget-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_1
.end method

.method private prepareUnresolvedUser(Lcom/parse/ParseUser;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq v0, p1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v1, "*unresolved"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 282
    iput-object p1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 283
    new-instance v0, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v0, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 285
    :cond_0
    return-void
.end method

.method private resolveUser(Lcom/parse/ParseUser;)V
    .locals 5
    .parameter "user"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq p1, v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v4, "*unresolved"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setAccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "accessType"
    .parameter "userId"
    .parameter "allowed"

    .prologue
    .line 139
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 140
    .local v1, permissions:Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 141
    if-nez p3, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .end local v1           #permissions:Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    .restart local v1       #permissions:Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_2
    if-eqz p3, :cond_3

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1           #permissions:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON failure with ACL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #permissions:Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDefaultACL(Lcom/parse/ParseACL;Z)V
    .locals 2
    .parameter "acl"
    .parameter "withAccessForCurrentUser"

    .prologue
    const/4 v0, 0x0

    .line 349
    sput-object v0, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 350
    sput-object v0, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 351
    if-eqz p0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    .line 353
    sget-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 354
    sput-boolean p1, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    sput-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_0
.end method

.method private setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .parameter "user"
    .parameter "allowed"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 269
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method private setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .parameter "user"
    .parameter "allowed"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 274
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 275
    return-void
.end method


# virtual methods
.method copy()Lcom/parse/ParseACL;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0}, Lcom/parse/ParseACL;-><init>()V

    .line 61
    .local v0, copy:Lcom/parse/ParseACL;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    iput-object v2, v0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 66
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v3, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v3, v0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 69
    :cond_0
    return-object v0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 192
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 206
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .parameter "user"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 294
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .parameter "user"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 323
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .parameter "userId"

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasUnresolvedUser()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShared()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/parse/ParseACL;->shared:Z

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .parameter "allowed"

    .prologue
    .line 185
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .parameter "allowed"

    .prologue
    .line 199
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method public setReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .parameter "user"
    .parameter "allowed"

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .parameter "userId"
    .parameter "allowed"

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method setShared(Z)V
    .locals 0
    .parameter "shared"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/parse/ParseACL;->shared:Z

    .line 78
    return-void
.end method

.method public setWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .parameter "user"
    .parameter "allowed"

    .prologue
    .line 306
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 307
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .parameter "userId"
    .parameter "allowed"

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    return-object v0
.end method
