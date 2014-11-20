.class final Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/mygson/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/google/mygson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/google/mygson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/google/mygson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/mygson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;Lcom/google/mygson/Gson;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/mygson/TypeAdapter;Lcom/google/mygson/internal/ObjectConstructor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "keyType"
    .parameter
    .parameter "valueType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/TypeAdapter",
            "<TV;>;",
            "Lcom/google/mygson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, keyTypeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TK;>;"
    .local p6, valueTypeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TV;>;"
    .local p7, constructor:Lcom/google/mygson/internal/ObjectConstructor;,"Lcom/google/mygson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    .line 154
    new-instance v0, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/mygson/TypeAdapter;

    .line 156
    new-instance v0, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcom/google/mygson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/mygson/Gson;Lcom/google/mygson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    .line 158
    iput-object p7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/mygson/internal/ObjectConstructor;

    .line 159
    return-void
.end method

.method private keyToString(Lcom/google/mygson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "keyElement"

    .prologue
    .line 247
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/mygson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-virtual {p1}, Lcom/google/mygson/JsonElement;->getAsJsonPrimitive()Lcom/google/mygson/JsonPrimitive;

    move-result-object v0

    .line 249
    .local v0, primitive:Lcom/google/mygson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .end local v0           #primitive:Lcom/google/mygson/JsonPrimitive;
    :goto_0
    return-object v1

    .line 251
    .restart local v0       #primitive:Lcom/google/mygson/JsonPrimitive;
    :cond_0
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/google/mygson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 256
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 258
    .end local v0           #primitive:Lcom/google/mygson/JsonPrimitive;
    :cond_3
    invoke-virtual {p1}, Lcom/google/mygson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    const-string v1, "null"

    goto :goto_0

    .line 261
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/Map;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v2

    .line 163
    .local v2, peek:Lcom/google/mygson/stream/JsonToken;
    sget-object v5, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v2, v5, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 165
    const/4 v1, 0x0

    .line 196
    :goto_0
    return-object v1

    .line 168
    :cond_0
    iget-object v5, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/mygson/internal/ObjectConstructor;

    invoke-interface {v5}, Lcom/google/mygson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 170
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    sget-object v5, Lcom/google/mygson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/mygson/stream/JsonToken;

    if-ne v2, v5, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 172
    :goto_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 174
    iget-object v5, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 175
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    .line 176
    .local v4, value:Ljava/lang/Object;,"TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, replaced:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_1

    .line 178
    new-instance v5, Lcom/google/mygson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    goto :goto_1

    .line 182
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #replaced:Ljava/lang/Object;,"TV;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginObject()V

    .line 185
    :cond_4
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 186
    sget-object v5, Lcom/google/mygson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/mygson/internal/JsonReaderInternalAccess;

    invoke-virtual {v5, p1}, Lcom/google/mygson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/google/mygson/stream/JsonReader;)V

    .line 187
    iget-object v5, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 188
    .restart local v0       #key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    .restart local v4       #value:Ljava/lang/Object;,"TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 190
    .restart local v3       #replaced:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_4

    .line 191
    new-instance v5, Lcom/google/mygson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #replaced:Ljava/lang/Object;,"TV;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_5
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endObject()V

    goto/16 :goto_0
.end method

.method public bridge synthetic write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 9
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    .local p0, this:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p2, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 244
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;

    #getter for: Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z
    invoke-static {v7}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginObject()Lcom/google/mygson/stream/JsonWriter;

    .line 207
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/mygson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    .line 209
    iget-object v7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 211
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endObject()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 215
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    .line 216
    .local v1, hasComplexKeys:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v5, keys:Ljava/util/List;,"Ljava/util/List<Lcom/google/mygson/JsonElement;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v6, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    #calls: Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->toJsonTree(Lcom/google/mygson/TypeAdapter;Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    invoke-static {v7, v8}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;->access$100(Lcom/google/mygson/TypeAdapter;Ljava/lang/Object;)Lcom/google/mygson/JsonElement;

    move-result-object v4

    .line 221
    .local v4, keyElement:Lcom/google/mygson/JsonElement;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v4}, Lcom/google/mygson/JsonElement;->isJsonArray()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/google/mygson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_3
    or-int/2addr v1, v7

    .line 224
    goto :goto_2

    .line 223
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 226
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4           #keyElement:Lcom/google/mygson/JsonElement;
    :cond_5
    if-eqz v1, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginArray()Lcom/google/mygson/stream/JsonWriter;

    .line 228
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginArray()Lcom/google/mygson/stream/JsonWriter;

    .line 230
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/mygson/JsonElement;

    invoke-static {v7, p1}, Lcom/google/mygson/internal/Streams;->write(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V

    .line 231
    iget-object v7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endArray()Lcom/google/mygson/stream/JsonWriter;

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    :cond_6
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endArray()Lcom/google/mygson/stream/JsonWriter;

    goto/16 :goto_0

    .line 236
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginObject()Lcom/google/mygson/stream/JsonWriter;

    .line 237
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 238
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mygson/JsonElement;

    .line 239
    .restart local v4       #keyElement:Lcom/google/mygson/JsonElement;
    invoke-direct {p0, v4}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/google/mygson/JsonElement;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/mygson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    .line 240
    iget-object v7, p0, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/mygson/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 242
    .end local v4           #keyElement:Lcom/google/mygson/JsonElement;
    :cond_8
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endObject()Lcom/google/mygson/stream/JsonWriter;

    goto/16 :goto_0
.end method
