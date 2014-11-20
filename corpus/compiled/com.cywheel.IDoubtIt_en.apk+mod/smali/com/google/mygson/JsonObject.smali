.class public final Lcom/google/mygson/JsonObject;
.super Lcom/google/mygson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/mygson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/mygson/JsonElement;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "value"

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mygson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/google/mygson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V
    .locals 2
    .parameter "property"
    .parameter "value"

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/mygson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/google/mygson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/JsonObject;->add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V

    .line 102
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/google/mygson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/JsonObject;->add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V

    .line 113
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/google/mygson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/JsonObject;->add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V

    .line 91
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "property"
    .parameter "value"

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/google/mygson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/JsonObject;->add(Ljava/lang/String;Lcom/google/mygson/JsonElement;)V

    .line 80
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/mygson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 191
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/google/mygson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/mygson/JsonObject;

    .end local p1
    iget-object v0, p1, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public get(Ljava/lang/String;)Lcom/google/mygson/JsonElement;
    .locals 2
    .parameter "memberName"

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonElement;

    .line 154
    .local v0, member:Lcom/google/mygson/JsonElement;
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    .line 156
    .end local v0           #member:Lcom/google/mygson/JsonElement;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/mygson/JsonArray;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonArray;

    return-object v0
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/mygson/JsonObject;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonObject;

    return-object v0
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/mygson/JsonPrimitive;
    .locals 1
    .parameter "memberName"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonPrimitive;

    return-object v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "memberName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "property"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/mygson/JsonObject;->members:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/JsonElement;

    return-object v0
.end method
