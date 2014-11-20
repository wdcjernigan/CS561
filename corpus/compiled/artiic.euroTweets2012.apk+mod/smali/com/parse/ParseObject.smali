.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$ParseObjectFactory;
    }
.end annotation


# static fields
.field static final API_VERSION:Ljava/lang/String; = "2"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseObject"

.field static final USER_CLASS_NAME:Ljava/lang/String; = "_User"

.field static final VERSION_NAME:Ljava/lang/String; = "1.0.17"

.field private static final impreciseDateFormat:Ljava/text/DateFormat;

.field private static final objectFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field dirty:Z

.field final dirtyKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenFetched:Z

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private isRunning:Ljava/lang/Boolean;

.field private objectId:Ljava/lang/String;

.field private final operations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseFieldOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    const-string v1, "https://api.parse.com"

    sput-object v1, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    .line 55
    const-string v1, "_User"

    new-instance v2, Lcom/parse/ParseObject$1;

    invoke-direct {v2}, Lcom/parse/ParseObject$1;-><init>()V

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, format:Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    sput-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "theClassName"

    .prologue
    const/4 v2, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v0}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0}, Lcom/parse/ParseObject$ParseObjectFactory;->getExpectedType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must create this type of ParseObject using ParseObject.create()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 118
    iput-boolean v2, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    .line 120
    iput-object p1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 122
    instance-of v0, p0, Lcom/parse/ParseUser;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 125
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseObject;Z)Lcom/parse/ParseObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->fetchIfNeeded(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1813
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject has no data for this key.  Call fetchIfNeeded() to get the data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1817
    :cond_0
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter "className"

    .prologue
    .line 137
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v0}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew()Lcom/parse/ParseObject;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .parameter "className"
    .parameter "objectId"

    .prologue
    const/4 v2, 0x0

    .line 157
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$ParseObjectFactory;

    invoke-interface {v1}, Lcom/parse/ParseObject$ParseObjectFactory;->getNew()Lcom/parse/ParseObject;

    move-result-object v0

    .line 162
    .local v0, result:Lcom/parse/ParseObject;
    :goto_0
    invoke-virtual {v0}, Lcom/parse/ParseObject;->clearData()V

    .line 163
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->setObjectId(Ljava/lang/String;)V

    .line 164
    iput-boolean v2, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 165
    iput-boolean v2, v0, Lcom/parse/ParseObject;->dirty:Z

    .line 166
    return-object v0

    .line 160
    .end local v0           #result:Lcom/parse/ParseObject;
    :cond_0
    new-instance v0, Lcom/parse/ParseObject;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Lcom/parse/ParseObject;
    goto :goto_0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1199
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1230
    :cond_0
    return-object p0

    .line 1202
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v4, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, className:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_4

    .line 1205
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1206
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "All objects should have the same class"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1208
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 1209
    .local v3, id:Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1210
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "All objects must exist on the server"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1213
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1215
    .end local v3           #id:Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/parse/ParseQuery;

    invoke-direct {v7, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1216
    .local v7, query:Lcom/parse/ParseQuery;
    const-string v10, "objectId"

    invoke-virtual {v7, v10, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1217
    invoke-virtual {v7}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v9

    .line 1218
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1219
    .local v8, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1220
    .local v6, o:Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1222
    .end local v6           #o:Lcom/parse/ParseObject;
    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_0

    .line 1223
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 1224
    .local v5, newObject:Lcom/parse/ParseObject;
    if-nez v5, :cond_6

    .line 1225
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Object id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v10}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " does not exist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1227
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    invoke-virtual {v5, v12, v12}, Lcom/parse/ParseObject;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v10, v11, v13}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 1228
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    iput-boolean v12, v10, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v14, 0x1

    .line 1128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v4, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1130
    .local v0, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 1131
    .local v7, object:Lcom/parse/ParseObject;
    invoke-virtual {v7}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1132
    if-eqz v0, :cond_1

    invoke-virtual {v7}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1133
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "All objects should have the same class"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1135
    :cond_1
    invoke-virtual {v7}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1136
    invoke-virtual {v7}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 1137
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1138
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1143
    .end local v3           #id:Ljava/lang/String;
    .end local v7           #object:Lcom/parse/ParseObject;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_4

    .line 1165
    :cond_3
    return-object p0

    .line 1147
    :cond_4
    new-instance v8, Lcom/parse/ParseQuery;

    invoke-direct {v8, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 1148
    .local v8, query:Lcom/parse/ParseQuery;
    const-string v11, "objectId"

    invoke-virtual {v8, v11, v4}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 1149
    invoke-virtual {v8}, Lcom/parse/ParseQuery;->find()Ljava/util/List;

    move-result-object v10

    .line 1150
    .local v10, results:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1151
    .local v9, resultMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1152
    .local v6, o:Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1154
    .end local v6           #o:Lcom/parse/ParseObject;
    :cond_5
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 1155
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1154
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1158
    :cond_6
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 1159
    .local v5, newObject:Lcom/parse/ParseObject;
    if-nez v5, :cond_7

    .line 1160
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Object id "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v11}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " does not exist"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1162
    :cond_7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    invoke-virtual {v5, v14, v14}, Lcom/parse/ParseObject;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 1163
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/parse/ParseObject;

    iput-boolean v14, v11, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_3
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1179
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$10;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1185
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1186
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/FindCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1242
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$11;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1248
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1249
    return-void
.end method

.method private fetchIfNeeded(Z)Lcom/parse/ParseObject;
    .locals 1
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    :goto_0
    return-object p0

    .line 939
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->fetch(Z)Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method static findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V
    .locals 6
    .parameter "data"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, unsaved:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 550
    check-cast v2, Ljava/util/List;

    .line 551
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, elem:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_0

    .line 554
    .end local v0           #elem:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_1

    move-object v3, p0

    .line 556
    check-cast v3, Ljava/util/Map;

    .line 557
    .local v3, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 558
    .restart local v0       #elem:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    goto :goto_1

    .line 560
    .end local v0           #elem:Ljava/lang/Object;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    instance-of v5, p0, Lcom/parse/ParseObject;

    if-eqz v5, :cond_2

    move-object v4, p0

    .line 561
    check-cast v4, Lcom/parse/ParseObject;

    .line 562
    .local v4, object:Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 563
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 564
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v4           #object:Lcom/parse/ParseObject;
    :cond_2
    return-void
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 4
    .parameter "mayCopy"

    .prologue
    .line 1742
    const-string v2, "ACL"

    invoke-direct {p0, v2}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1743
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    const-string v3, "ACL"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1744
    .local v0, acl:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1745
    const/4 v1, 0x0

    .line 1756
    .end local v0           #acl:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1747
    .restart local v0       #acl:Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, Lcom/parse/ParseACL;

    if-nez v2, :cond_1

    .line 1748
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "only ACLs can be stored in the ACL key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1750
    :cond_1
    if-eqz p1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/parse/ParseACL;

    invoke-virtual {v2}, Lcom/parse/ParseACL;->isShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1751
    check-cast v0, Lcom/parse/ParseACL;

    .end local v0           #acl:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    .line 1752
    .local v1, copy:Lcom/parse/ParseACL;
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    const-string v3, "ACL"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_0

    .line 1756
    .end local v1           #copy:Lcom/parse/ParseACL;
    .restart local v0       #acl:Ljava/lang/Object;
    :cond_2
    check-cast v0, Lcom/parse/ParseACL;

    .end local v0           #acl:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 175
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v6, 0x0

    .line 194
    const-class v8, Lcom/parse/ParseObject;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 195
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 217
    :goto_0
    monitor-exit v8

    return-object v6

    .line 203
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v2, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v2, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v7, v9

    new-array v0, v7, [B

    .line 205
    .local v0, bytes:[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 206
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 207
    new-instance v4, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v4, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .local v4, fileContent:Ljava/lang/String;
    :try_start_2
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    .local v5, tokener:Lorg/json/JSONTokener;
    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v6, v7

    goto :goto_0

    .line 208
    .end local v0           #bytes:[B
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .end local v4           #fileContent:Ljava/lang/String;
    .end local v5           #tokener:Lorg/json/JSONTokener;
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/IOException;
    goto :goto_0

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #bytes:[B
    .restart local v2       #f:Ljava/io/RandomAccessFile;
    .restart local v4       #fileContent:Ljava/lang/String;
    .restart local v5       #tokener:Lorg/json/JSONTokener;
    :catch_1
    move-exception v1

    .line 217
    .local v1, e:Lorg/json/JSONException;
    goto :goto_0

    .line 194
    .end local v0           #bytes:[B
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #f:Ljava/io/RandomAccessFile;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fileContent:Ljava/lang/String;
    .end local v5           #tokener:Lorg/json/JSONTokener;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 5
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 298
    .local v1, object:Lorg/json/JSONObject;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 308
    :goto_0
    return-object v2

    .line 303
    :cond_0
    :try_start_0
    const-string v4, "classname"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    .line 304
    .local v2, parseObject:Lcom/parse/ParseObject;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->clearData()V

    .line 305
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v2           #parseObject:Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .local v0, e:Lorg/json/JSONException;
    move-object v2, v3

    .line 308
    goto :goto_0
.end method

.method private static declared-synchronized impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .parameter "encoded"

    .prologue
    .line 181
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    monitor-exit v2

    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.ParseObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1777
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static registerFactory(Ljava/lang/String;Lcom/parse/ParseObject$ParseObjectFactory;)V
    .locals 1
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject$ParseObjectFactory",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, factory:Lcom/parse/ParseObject$ParseObjectFactory;,"Lcom/parse/ParseObject$ParseObjectFactory<*>;"
    sget-object v0, Lcom/parse/ParseObject;->objectFactories:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    invoke-virtual {v15}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1078
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    invoke-virtual {v15}, Lcom/parse/ParseUser;->finishedRunning()V

    .line 1079
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    invoke-virtual {v15}, Lcom/parse/ParseUser;->save()V

    .line 1080
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1081
    .end local p0           #objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local v11, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v15

    invoke-interface {v11, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 p0, v11

    .line 1085
    .end local v11           #objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local p0       #objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1086
    .local v2, dirtyCommands:Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v3, dirtyObjects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .local v4, dirtyOps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject;

    .line 1089
    .local v10, object:Lcom/parse/ParseObject;
    invoke-virtual {v10}, Lcom/parse/ParseObject;->validateSave()V

    .line 1090
    iget-object v15, v10, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-static {v15}, Lcom/parse/ParseObject;->saveChildren(Ljava/lang/Object;)V

    .line 1091
    invoke-virtual {v10}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;

    move-result-object v1

    .line 1092
    .local v1, command:Lcom/parse/ParseCommand;
    if-eqz v1, :cond_1

    .line 1093
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v8

    .line 1094
    .local v8, jsonCommand:Lorg/json/JSONObject;
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1095
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object v15, v1, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    .end local v1           #command:Lcom/parse/ParseCommand;
    .end local v8           #jsonCommand:Lorg/json/JSONObject;
    .end local v10           #object:Lcom/parse/ParseObject;
    :cond_2
    new-instance v9, Lcom/parse/ParseCommand;

    const-string v15, "multi"

    invoke-direct {v9, v15}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v9, multiCommand:Lcom/parse/ParseCommand;
    const-string v15, "commands"

    invoke-virtual {v9, v15, v2}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 1103
    invoke-virtual {v9}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONArray;

    .line 1106
    .local v14, results:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_3

    .line 1107
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1109
    .local v12, op:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1110
    .local v13, result:Lorg/json/JSONObject;
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/parse/ParseObject;

    invoke-virtual {v15, v12, v13}, Lcom/parse/ParseObject;->handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1111
    .end local v13           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 1112
    .local v5, e:Lorg/json/JSONException;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1115
    .end local v5           #e:Lorg/json/JSONException;
    .end local v12           #op:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V

    .line 1283
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1262
    .local p0, objects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    move-object v0, p0

    .line 1263
    .local v0, finalObjects:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$12;

    invoke-direct {v1, p1, v0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseCallback;Ljava/util/List;)V

    .line 1270
    .local v1, saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v1}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1271
    return-void
.end method

.method static saveChildren(Ljava/lang/Object;)V
    .locals 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 571
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    invoke-static {p0, v0}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 572
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 573
    invoke-static {v0}, Lcom/parse/ParseObject;->saveAll(Ljava/util/List;)V

    .line 574
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 575
    .local v2, object:Lcom/parse/ParseObject;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->finishedRunning()V

    goto :goto_0

    .line 578
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #object:Lcom/parse/ParseObject;
    :cond_0
    return-void
.end method

.method static declared-synchronized saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .parameter "context"
    .parameter "filename"
    .parameter "object"

    .prologue
    .line 226
    const-class v4, Lcom/parse/ParseObject;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/parse/Parse;->setContextIfNeeded(Landroid/content/Context;)V

    .line 227
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, file:Ljava/io/File;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 230
    .local v2, out:Ljava/io/FileOutputStream;
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 231
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .end local v2           #out:Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v4

    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0

    .line 234
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 226
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method addToHashedObjects(Ljava/lang/Object;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v2, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v2, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t serialize container value to JSON."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected checkIfRunning()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 241
    return-void
.end method

.method protected checkIfRunning(Z)V
    .locals 3
    .parameter "grabLock"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 248
    :cond_0
    if-eqz p1, :cond_1

    .line 249
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 251
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    return-void
.end method

.method clearData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    iput-object v1, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 354
    iget-object v0, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 355
    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 357
    iget-object v0, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 358
    iget-object v0, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 359
    iput-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 361
    iput-object v1, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 362
    return-void
.end method

.method constructDeleteCommand()Lcom/parse/ParseCommand;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 980
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v3, "delete"

    invoke-direct {v0, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 981
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 982
    const-string v3, "classname"

    iget-object v4, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 985
    .local v1, data:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "objectId"

    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    const-string v3, "data"

    invoke-virtual {v0, v3, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 990
    return-object v0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    .local v2, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructSaveCommand()Lcom/parse/ParseCommand;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    const/4 v0, 0x0

    .line 603
    :goto_0
    return-object v0

    .line 588
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/parse/ParseObject;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v2

    .line 591
    .local v2, objectJSON:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v3, "create"

    .line 592
    .local v3, op:Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, v3}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 595
    const-string v4, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :try_start_0
    const-string v4, "data"

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not decode data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 591
    .end local v0           #command:Lcom/parse/ParseCommand;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v3           #op:Ljava/lang/String;
    :cond_1
    const-string v3, "update"

    goto :goto_1
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->delete(Z)V

    .line 1008
    return-void
.end method

.method protected delete(Z)V
    .locals 2
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1011
    if-eqz p1, :cond_0

    .line 1012
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1016
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1018
    iget-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    .line 1028
    :goto_0
    return-void

    .line 1022
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->constructDeleteCommand()Lcom/parse/ParseCommand;

    move-result-object v0

    .line 1023
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    .line 1024
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    goto :goto_0

    .end local v0           #command:Lcom/parse/ParseCommand;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v1
.end method

.method public deleteEventually()V
    .locals 2

    .prologue
    .line 817
    new-instance v0, Lcom/parse/ParseObject$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 836
    .local v0, runEventuallyTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 837
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 838
    return-void
.end method

.method public deleteInBackground()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->deleteInBackground(Lcom/parse/DeleteCallback;)V

    .line 1059
    return-void
.end method

.method public deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 1039
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 1040
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1042
    new-instance v0, Lcom/parse/ParseObject$9;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 1049
    .local v0, deleteTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 1050
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->fetch(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method protected fetch(Z)Lcom/parse/ParseObject;
    .locals 6
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 884
    if-eqz p1, :cond_0

    .line 885
    invoke-virtual {p0, v4}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 889
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 890
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot refresh an object that hasn\'t been saved to the server."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v4

    .line 894
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseCommand;

    const-string v4, "get"

    invoke-direct {v0, v4}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;)V

    .line 895
    .local v0, command:Lcom/parse/ParseCommand;
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->enableRetrying()V

    .line 896
    const-string v4, "classname"

    iget-object v5, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 899
    .local v1, data:Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "objectId"

    iget-object v5, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 903
    :try_start_3
    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Lcom/parse/ParseCommand;->put(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 904
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 906
    .local v3, result:Lorg/json/JSONObject;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 907
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 910
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    return-object p0

    .line 900
    .end local v3           #result:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 901
    .local v2, e:Lorg/json/JSONException;
    :try_start_4
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 952
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->fetchIfNeeded(Z)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 966
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/parse/GetCallback;->internalDone(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    .line 968
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 970
    new-instance v0, Lcom/parse/ParseObject$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 976
    .local v0, fetchTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseObject;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 977
    return-void
.end method

.method public fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 923
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 925
    new-instance v0, Lcom/parse/ParseObject$7;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 932
    .local v0, refreshTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Lcom/parse/ParseObject;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 933
    return-void
.end method

.method protected finishedRunning()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    monitor-enter v1

    .line 256
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->isRunning:Ljava/lang/Boolean;

    .line 257
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "key"

    .prologue
    .line 1793
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1794
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1795
    const/4 v2, 0x0

    .line 1809
    :cond_0
    :goto_0
    return-object v2

    .line 1798
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1799
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Lcom/parse/ParseACL;

    if-eqz v3, :cond_0

    const-string v3, "ACL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1800
    check-cast v0, Lcom/parse/ParseACL;

    .line 1801
    .local v0, acl:Lcom/parse/ParseACL;
    invoke-virtual {v0}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1802
    invoke-virtual {v0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v1

    .line 1803
    .local v1, copy:Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    const-string v4, "ACL"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1804
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 1805
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v2

    goto :goto_0
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 1738
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1648
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1649
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1656
    :cond_0
    :goto_0
    return v1

    .line 1652
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1653
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 1656
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1457
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1458
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1466
    :goto_0
    return-object v0

    .line 1461
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1462
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, [B

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1463
    goto :goto_0

    .line 1466
    :cond_1
    check-cast v0, [B

    .end local v0           #value:Ljava/lang/Object;
    check-cast v0, [B

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1667
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1668
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1675
    :goto_0
    return-object v0

    .line 1671
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1672
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Date;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1673
    goto :goto_0

    .line 1675
    :cond_1
    check-cast v0, Ljava/util/Date;

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .parameter "key"

    .prologue
    .line 1618
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 1619
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 1620
    const-wide/16 v1, 0x0

    .line 1622
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1603
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 1604
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 1605
    const/4 v1, 0x0

    .line 1607
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1496
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1497
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 1512
    :goto_0
    return-object v1

    .line 1500
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1502
    .local v1, value:Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/List;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 1504
    check-cast v0, Ljava/util/List;

    .line 1505
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/parse/Parse;->encodeAsJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1506
    .local v1, value:Lorg/json/JSONArray;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1509
    .end local v0           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v1           #value:Lorg/json/JSONArray;
    :cond_1
    instance-of v3, v1, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    move-object v1, v2

    .line 1510
    goto :goto_0

    .line 1512
    :cond_2
    check-cast v1, Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1577
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1578
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1592
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1583
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 1584
    invoke-static {v0}, Lcom/parse/Parse;->encodeJSONObject(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1585
    .local v0, value:Lorg/json/JSONObject;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1588
    .end local v0           #value:Lorg/json/JSONObject;
    :cond_1
    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 1589
    goto :goto_0

    .line 1592
    :cond_2
    check-cast v0, Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1524
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-object v0

    .line 1527
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1529
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 1530
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 1531
    .local v1, value:Ljava/util/List;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1534
    .end local v1           #value:Ljava/util/List;
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1538
    check-cast v0, Ljava/util/List;

    .line 1539
    .local v0, returnValue:Ljava/util/List;,"Ljava/util/List<TT;>;"
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 1633
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 1634
    .local v0, number:Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 1635
    const-wide/16 v1, 0x0

    .line 1637
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1551
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1566
    :cond_0
    :goto_0
    return-object v0

    .line 1554
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1556
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 1557
    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #value:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 1558
    .local v1, value:Ljava/util/Map;
    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1561
    .end local v1           #value:Ljava/util/Map;
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1565
    check-cast v0, Ljava/util/Map;

    .line 1566
    .local v0, returnValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;TV;>;"
    goto :goto_0
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1477
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1478
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1485
    :goto_0
    return-object v0

    .line 1481
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1482
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Number;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1483
    goto :goto_0

    .line 1485
    :cond_1
    check-cast v0, Ljava/lang/Number;

    goto :goto_0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1723
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1724
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1731
    :goto_0
    return-object v0

    .line 1727
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1728
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Lcom/parse/ParseGeoPoint;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1729
    goto :goto_0

    .line 1731
    :cond_1
    check-cast v0, Lcom/parse/ParseGeoPoint;

    goto :goto_0
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .parameter "key"

    .prologue
    .line 1689
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1690
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 1691
    const/4 v0, 0x0

    .line 1693
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .parameter "key"

    .prologue
    .line 1707
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1708
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 1709
    const/4 v0, 0x0

    .line 1711
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 1438
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 1439
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1446
    :goto_0
    return-object v0

    .line 1442
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1443
    .local v0, value:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 1444
    goto :goto_0

    .line 1446
    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method protected handleSaveResult(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .parameter "op"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 667
    const-string v2, "create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "user_signup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 668
    .local v0, justCreated:Z
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/parse/ParseObject;->mergeObject(Lorg/json/JSONObject;Z)V

    .line 669
    iget-object v2, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 670
    iget-object v2, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 671
    iput-boolean v1, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 672
    iget-object v1, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 673
    return-void

    .end local v0           #justCreated:Z
    :cond_1
    move v0, v1

    .line 667
    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1312
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChangedContainers()Z
    .locals 4

    .prologue
    .line 471
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 473
    .local v2, object:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->isKeyDirty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 474
    const/4 v3, 0x1

    .line 478
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #object:Ljava/lang/Object;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method hasDirtyChildren()Z
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .local v0, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 467
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 1368
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 1369
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 4
    .parameter "key"
    .parameter "amount"

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1381
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Number;

    if-nez v2, :cond_0

    .line 1382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t increment a key that isn\'t a number."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1385
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1386
    iget-object v2, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1387
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/parse/Parse;->addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1417
    :goto_0
    return-void

    .line 1389
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v2, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    .line 1397
    .local v1, operation:Lcom/parse/ParseFieldOperation;
    if-eqz v1, :cond_4

    .line 1398
    instance-of v2, v1, Lcom/parse/ParseIncrementOperation;

    if-nez v2, :cond_3

    .line 1399
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t increment a key that has another pending operation (likely deletion)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, v1

    .line 1403
    check-cast v0, Lcom/parse/ParseIncrementOperation;

    .line 1404
    .local v0, incrementOperation:Lcom/parse/ParseIncrementOperation;
    invoke-virtual {v0}, Lcom/parse/ParseIncrementOperation;->getAmount()Ljava/lang/Number;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/parse/Parse;->addNumbers(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/parse/ParseIncrementOperation;->setAmount(Ljava/lang/Number;)V

    .line 1410
    :goto_1
    invoke-virtual {v0}, Lcom/parse/ParseIncrementOperation;->getAmount()Ljava/lang/Number;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1411
    iget-object v2, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    iget-object v2, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1406
    .end local v0           #incrementOperation:Lcom/parse/ParseIncrementOperation;
    :cond_4
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0}, Lcom/parse/ParseIncrementOperation;-><init>()V

    .line 1407
    .restart local v0       #incrementOperation:Lcom/parse/ParseIncrementOperation;
    invoke-virtual {v0, p2}, Lcom/parse/ParseIncrementOperation;->setAmount(Ljava/lang/Number;)V

    goto :goto_1

    .line 1414
    :cond_5
    iget-object v2, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    iget-object v2, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isDataAvailable()Z
    .locals 1

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    return v0
.end method

.method isDirty()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method isDirty(Z)Z
    .locals 1
    .parameter "considerChildren"

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChangedContainers()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyDirty(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->refreshCacheIfNecessary(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
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
    .line 325
    iget-object v0, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method mergeObject(Lorg/json/JSONObject;Z)V
    .locals 14
    .parameter "object"
    .parameter "justCreated"

    .prologue
    .line 369
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 373
    :try_start_0
    const-string v11, "id"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 374
    iget-object v11, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v11, :cond_0

    .line 375
    const-string v11, "id"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 378
    :cond_0
    const-string v11, "created_at"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 379
    const-string v11, "created_at"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, createdAtString:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 381
    invoke-static {v1}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 384
    .end local v1           #createdAtString:Ljava/lang/String;
    :cond_1
    const-string v11, "updated_at"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 385
    const-string v11, "updated_at"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 386
    .local v9, updatedAtString:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 387
    invoke-static {v9}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 390
    .end local v9           #updatedAtString:Ljava/lang/String;
    :cond_2
    const-string v11, "pointers"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 391
    const-string v11, "pointers"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 392
    .local v7, newPointers:Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 393
    .local v5, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 394
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 395
    .local v4, key:Ljava/lang/String;
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 396
    .local v8, pointerArray:Lorg/json/JSONArray;
    iget-object v11, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7           #newPointers:Lorg/json/JSONObject;
    .end local v8           #pointerArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 460
    .local v3, e:Lorg/json/JSONException;
    new-instance v11, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 400
    .end local v3           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v11, "data"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 401
    const-string v11, "data"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 402
    .local v6, newData:Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 403
    .restart local v5       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 404
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 405
    .restart local v4       #key:Ljava/lang/String;
    iget-object v11, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v11, "objectId"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 408
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    goto :goto_1

    .line 411
    :cond_5
    const-string v11, "createdAt"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 412
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 413
    if-eqz p2, :cond_4

    .line 414
    iget-object v11, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v11, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 418
    :cond_6
    const-string v11, "updatedAt"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 419
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/Parse;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    iput-object v11, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 422
    :cond_7
    const-string v11, "ACL"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 423
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 424
    .local v0, acl:Lcom/parse/ParseACL;
    iget-object v11, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    const-string v12, "ACL"

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_1

    .line 428
    .end local v0           #acl:Lcom/parse/ParseACL;
    :cond_8
    const-string v11, "__type"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "className"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 432
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 433
    .local v10, value:Ljava/lang/Object;
    invoke-static {v10}, Lcom/parse/Parse;->decodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 435
    .local v2, decodedObject:Ljava/lang/Object;
    if-eqz v2, :cond_b

    .line 437
    invoke-static {v2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 438
    instance-of v11, v2, Lorg/json/JSONArray;

    if-eqz v11, :cond_9

    .line 439
    check-cast v2, Lorg/json/JSONArray;

    .end local v2           #decodedObject:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    .line 441
    :cond_9
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 443
    :cond_a
    iget-object v11, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v11, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 445
    .restart local v2       #decodedObject:Ljava/lang/Object;
    :cond_b
    invoke-static {v10}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 446
    instance-of v11, v10, Lorg/json/JSONArray;

    if-eqz v11, :cond_c

    .line 447
    check-cast v10, Lorg/json/JSONArray;

    .end local v10           #value:Ljava/lang/Object;
    invoke-static {v10}, Lcom/parse/Parse;->convertArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v10

    .line 449
    :cond_c
    invoke-virtual {p0, v10}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 451
    :cond_d
    iget-object v11, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v11, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 456
    .end local v2           #decodedObject:Ljava/lang/Object;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6           #newData:Lorg/json/JSONObject;
    :cond_e
    const-string v11, "dirty"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 457
    const-string v11, "dirty"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/parse/ParseObject;->dirty:Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 462
    :cond_f
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1329
    if-nez p1, :cond_0

    .line 1330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1333
    :cond_0
    if-nez p2, :cond_1

    .line 1334
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_1
    instance-of v0, p2, Lcom/parse/ParseFile;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseFile must be saved before being set on a ParseObject."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_2
    invoke-static {p2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_3
    iget-object v0, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseDeleteOperation;

    if-eqz v0, :cond_4

    .line 1348
    iget-object v0, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    :cond_4
    invoke-static {p2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1353
    invoke-virtual {p0, p2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 1356
    :cond_5
    iget-object v0, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    iget-object v0, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    return-void
.end method

.method public refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 849
    return-void
.end method

.method refreshCacheIfNecessary(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 495
    iget-object v4, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    .local v2, object:Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseJSONCacheItem;

    .line 504
    .local v3, oldCacheItem:Lcom/parse/ParseJSONCacheItem;
    if-nez v3, :cond_2

    .line 505
    iget-object v4, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    :cond_2
    const/4 v1, 0x0

    .line 512
    .local v1, newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :try_start_0
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    invoke-direct {v1, v2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .restart local v1       #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 518
    :cond_3
    iget-object v4, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v4, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    .end local v1           #newCacheItem:Lcom/parse/ParseJSONCacheItem;
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method public refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 860
    new-instance v0, Lcom/parse/ParseObject$6;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/RefreshCallback;)V

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->fetchInBackground(Lcom/parse/GetCallback;)V

    .line 869
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback;)V

    .line 1827
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 1292
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 1293
    iget-object v1, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1295
    .local v0, object:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/parse/ParseObject;->dirtyKeys:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1297
    iget-object v1, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    new-instance v2, Lcom/parse/ParseDeleteOperation;

    invoke-direct {v2}, Lcom/parse/ParseDeleteOperation;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v1, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    iget-object v1, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    :cond_0
    return-void
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->save(Z)V

    .line 689
    return-void
.end method

.method protected save(Z)V
    .locals 3
    .parameter "needsLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 693
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 697
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 698
    const-string v1, "ACL"

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->save()V

    .line 700
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseACL;->hasUnresolvedUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ACL has an unresolved ParseUser. Save or sign up before attempting to serialize the ACL."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    throw v1

    .line 707
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-static {v1}, Lcom/parse/ParseObject;->saveChildren(Ljava/lang/Object;)V

    .line 709
    invoke-virtual {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 710
    .local v0, command:Lcom/parse/ParseCommand;
    if-nez v0, :cond_2

    .line 721
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    .line 723
    :goto_0
    return-void

    .line 714
    :cond_2
    :try_start_2
    new-instance v1, Lcom/parse/ParseObject$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$2;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 719
    invoke-virtual {v0}, Lcom/parse/ParseCommand;->perform()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 721
    invoke-virtual {p0}, Lcom/parse/ParseObject;->finishedRunning()V

    goto :goto_0
.end method

.method public saveEventually()V
    .locals 8

    .prologue
    .line 770
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v5, unsavedChildren:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v6, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-static {v6, v5}, Lcom/parse/ParseObject;->findUnsavedChildren(Ljava/lang/Object;Ljava/util/List;)V

    .line 773
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 774
    .local v4, object:Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 775
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to saveEventually a ParseObject with a relation to a new, unsaved ParseObject."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 780
    .end local v4           #object:Lcom/parse/ParseObject;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 781
    .restart local v4       #object:Lcom/parse/ParseObject;
    invoke-virtual {v4}, Lcom/parse/ParseObject;->saveEventually()V

    goto :goto_0

    .line 784
    .end local v4           #object:Lcom/parse/ParseObject;
    :cond_2
    invoke-static {}, Lcom/parse/Parse;->getCommandCache()Lcom/parse/ParseCommandCache;

    move-result-object v0

    .line 785
    .local v0, cache:Lcom/parse/ParseCommandCache;
    const/4 v1, 0x0

    .line 787
    .local v1, command:Lcom/parse/ParseCommand;
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->constructSaveCommand()Lcom/parse/ParseCommand;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    new-instance v6, Lcom/parse/ParseObject$4;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$4;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v6}, Lcom/parse/ParseCommand;->setInternalCallback(Lcom/parse/ParseCommand$InternalCallback;)V

    .line 796
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseCommandCache;->runEventually(Lcom/parse/ParseCommand;Lcom/parse/ParseObject;)V

    .line 797
    return-void

    .line 788
    :catch_0
    move-exception v2

    .line 789
    .local v2, exception:Lcom/parse/ParseException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unable to saveEventually."

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public saveInBackground()V
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 752
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 734
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->checkIfRunning(Z)V

    .line 736
    new-instance v0, Lcom/parse/ParseObject$3;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$3;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseCallback;)V

    .line 743
    .local v0, saveTask:Lcom/parse/BackgroundTask;,"Lcom/parse/BackgroundTask<Ljava/lang/Void;>;"
    invoke-static {v0}, Lcom/parse/BackgroundTask;->executeTask(Lcom/parse/BackgroundTask;)I

    .line 744
    return-void
.end method

.method saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "filename"

    .prologue
    const/4 v2, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t serialize a dirty object to disk."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/parse/ParseObject;->toJSONObject(ZZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    .local v0, object:Lorg/json/JSONObject;
    invoke-static {p1, p2, v0}, Lcom/parse/ParseObject;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 275
    return-void
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .parameter "acl"

    .prologue
    .line 1763
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1764
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 1
    .parameter "newObjectId"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkIfRunning()V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseObject;->dirty:Z

    .line 544
    iput-object p1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 545
    return-void
.end method

.method toJSONObject(ZZ)Lorg/json/JSONObject;
    .locals 9
    .parameter "includeDates"
    .parameter "allKeys"

    .prologue
    .line 618
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 619
    .local v5, objectJSON:Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 623
    .local v0, dataJSON:Lorg/json/JSONObject;
    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 624
    .local v3, key:Ljava/lang/String;
    if-nez p2, :cond_1

    invoke-virtual {p0, v3}, Lcom/parse/ParseObject;->isKeyDirty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 628
    :cond_1
    iget-object v7, p0, Lcom/parse/ParseObject;->data:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 631
    .local v4, object:Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 632
    iget-object v7, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v7}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "could not serialize object to JSON"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 634
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #key:Ljava/lang/String;
    .restart local v4       #object:Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/parse/Parse;->maybeReferenceAndEncode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 639
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #object:Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 640
    .restart local v3       #key:Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ParseObject;->operations:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseFieldOperation;

    .line 641
    .local v6, operation:Lcom/parse/ParseFieldOperation;
    invoke-static {v6}, Lcom/parse/Parse;->maybeEncodeJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 644
    .end local v3           #key:Ljava/lang/String;
    .end local v6           #operation:Lcom/parse/ParseFieldOperation;
    :cond_4
    if-eqz p1, :cond_6

    .line 645
    iget-object v7, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v7, :cond_5

    .line 646
    const-string v7, "createdAt"

    iget-object v8, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v8}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    :cond_5
    iget-object v7, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v7, :cond_6

    .line 649
    const-string v7, "updatedAt"

    iget-object v8, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v8}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    :cond_6
    iget-object v7, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 654
    const-string v7, "objectId"

    iget-object v8, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 657
    :cond_7
    const-string v7, "data"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    const-string v7, "classname"

    iget-object v8, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 663
    return-object v5
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback;)V

    .line 1831
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 995
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method
