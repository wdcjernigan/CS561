.class public final Lcom/google/mygson/Gson;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/mygson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/google/mygson/JsonDeserializationContext;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/google/mygson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/mygson/reflect/TypeToken",
            "<*>;",
            "Lcom/google/mygson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/google/mygson/Gson$7;

    invoke-direct {v0}, Lcom/google/mygson/Gson$7;-><init>()V

    sput-object v0, Lcom/google/mygson/internal/GsonInternalAccess;->INSTANCE:Lcom/google/mygson/internal/GsonInternalAccess;

    .line 389
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 180
    sget-object v1, Lcom/google/mygson/internal/Excluder;->DEFAULT:Lcom/google/mygson/internal/Excluder;

    sget-object v2, Lcom/google/mygson/FieldNamingPolicy;->IDENTITY:Lcom/google/mygson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/google/mygson/LongSerializationPolicy;->DEFAULT:Lcom/google/mygson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/google/mygson/Gson;-><init>(Lcom/google/mygson/internal/Excluder;Lcom/google/mygson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/mygson/LongSerializationPolicy;Ljava/util/List;)V

    .line 184
    return-void
.end method

.method constructor <init>(Lcom/google/mygson/internal/Excluder;Lcom/google/mygson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/mygson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 7
    .parameter "excluder"
    .parameter "fieldNamingPolicy"
    .parameter
    .parameter "serializeNulls"
    .parameter "complexMapKeySerialization"
    .parameter "generateNonExecutableGson"
    .parameter "htmlSafe"
    .parameter "prettyPrinting"
    .parameter "serializeSpecialFloatingPointValues"
    .parameter "longSerializationPolicy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/internal/Excluder;",
            "Lcom/google/mygson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/mygson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/google/mygson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/mygson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p3, instanceCreators:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/mygson/InstanceCreator<*>;>;"
    .local p11, typeAdapterFactories:Ljava/util/List;,"Ljava/util/List<Lcom/google/mygson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v4, Lcom/google/mygson/Gson$1;

    invoke-direct {v4, p0}, Lcom/google/mygson/Gson$1;-><init>(Lcom/google/mygson/Gson;)V

    iput-object v4, p0, Lcom/google/mygson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 118
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lcom/google/mygson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 129
    new-instance v4, Lcom/google/mygson/Gson$2;

    invoke-direct {v4, p0}, Lcom/google/mygson/Gson$2;-><init>(Lcom/google/mygson/Gson;)V

    iput-object v4, p0, Lcom/google/mygson/Gson;->deserializationContext:Lcom/google/mygson/JsonDeserializationContext;

    .line 136
    new-instance v4, Lcom/google/mygson/Gson$3;

    invoke-direct {v4, p0}, Lcom/google/mygson/Gson$3;-><init>(Lcom/google/mygson/Gson;)V

    iput-object v4, p0, Lcom/google/mygson/Gson;->serializationContext:Lcom/google/mygson/JsonSerializationContext;

    .line 192
    new-instance v4, Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-direct {v4, p3}, Lcom/google/mygson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/google/mygson/Gson;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    .line 193
    iput-boolean p4, p0, Lcom/google/mygson/Gson;->serializeNulls:Z

    .line 194
    iput-boolean p6, p0, Lcom/google/mygson/Gson;->generateNonExecutableJson:Z

    .line 195
    iput-boolean p7, p0, Lcom/google/mygson/Gson;->htmlSafe:Z

    .line 196
    iput-boolean p8, p0, Lcom/google/mygson/Gson;->prettyPrinting:Z

    .line 198
    new-instance v3, Lcom/google/mygson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v4, p0, Lcom/google/mygson/Gson;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-direct {v3, v4, p2, p1}, Lcom/google/mygson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/google/mygson/internal/ConstructorConstructor;Lcom/google/mygson/FieldNamingStrategy;Lcom/google/mygson/internal/Excluder;)V

    .line 201
    .local v3, reflectiveTypeAdapterFactory:Lcom/google/mygson/TypeAdapterFactory;
    new-instance v1, Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-direct {v1}, Lcom/google/mygson/internal/ConstructorConstructor;-><init>()V

    .line 202
    .local v1, constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v2, factories:Ljava/util/List;,"Ljava/util/List<Lcom/google/mygson/TypeAdapterFactory;>;"
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    move-object/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/google/mygson/Gson;->longAdapter(Lcom/google/mygson/LongSerializationPolicy;)Lcom/google/mygson/TypeAdapter;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/google/mygson/Gson;->doubleAdapter(Z)Lcom/google/mygson/TypeAdapter;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    move/from16 v0, p9

    invoke-direct {p0, v0}, Lcom/google/mygson/Gson;->floatAdapter(Z)Lcom/google/mygson/TypeAdapter;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-class v4, Ljava/math/BigDecimal;

    new-instance v5, Lcom/google/mygson/internal/bind/BigDecimalTypeAdapter;

    invoke-direct {v5}, Lcom/google/mygson/internal/bind/BigDecimalTypeAdapter;-><init>()V

    invoke-static {v4, v5}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    const-class v4, Ljava/math/BigInteger;

    new-instance v5, Lcom/google/mygson/internal/bind/BigIntegerTypeAdapter;

    invoke-direct {v5}, Lcom/google/mygson/internal/bind/BigIntegerTypeAdapter;-><init>()V

    invoke-static {v4, v5}, Lcom/google/mygson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/mygson/TypeAdapter;)Lcom/google/mygson/TypeAdapterFactory;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v4, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, p11

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 230
    new-instance v4, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;

    invoke-direct {v4, v1}, Lcom/google/mygson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/google/mygson/internal/ConstructorConstructor;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v4, Lcom/google/mygson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v4, Lcom/google/mygson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v4, Lcom/google/mygson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v4, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {v4, v1, p5}, Lcom/google/mygson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/google/mygson/internal/ConstructorConstructor;Z)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v4, Lcom/google/mygson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v4, Lcom/google/mygson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/mygson/Gson;->factories:Ljava/util/List;

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/google/mygson/Gson;D)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/mygson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/mygson/Gson;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/mygson/Gson;->factories:Ljava/util/List;

    return-object v0
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/google/mygson/stream/JsonReader;)V
    .locals 3
    .parameter "obj"
    .parameter "reader"

    .prologue
    .line 728
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/mygson/stream/JsonToken;->END_DOCUMENT:Lcom/google/mygson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 729
    new-instance v1, Lcom/google/mygson/JsonIOException;

    const-string v2, "JSON document was not fully consumed."

    invoke-direct {v1, v2}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/mygson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Lcom/google/mygson/stream/MalformedJsonException;
    new-instance v1, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 733
    .end local v0           #e:Lcom/google/mygson/stream/MalformedJsonException;
    :catch_1
    move-exception v0

    .line 734
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lcom/google/mygson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 736
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .parameter "value"

    .prologue
    .line 300
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " behavior, use GsonBuilder.serializeSpecialDoubleValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/google/mygson/TypeAdapter;
    .locals 1
    .parameter "serializeSpecialFloatingPointValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/mygson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    sget-object v0, Lcom/google/mygson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/mygson/TypeAdapter;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mygson/Gson$4;

    invoke-direct {v0, p0}, Lcom/google/mygson/Gson$4;-><init>(Lcom/google/mygson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/google/mygson/TypeAdapter;
    .locals 1
    .parameter "serializeSpecialFloatingPointValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/mygson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    if-eqz p1, :cond_0

    .line 277
    sget-object v0, Lcom/google/mygson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/mygson/TypeAdapter;

    .line 279
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mygson/Gson$5;

    invoke-direct {v0, p0}, Lcom/google/mygson/Gson$5;-><init>(Lcom/google/mygson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/google/mygson/LongSerializationPolicy;)Lcom/google/mygson/TypeAdapter;
    .locals 1
    .parameter "longSerializationPolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mygson/LongSerializationPolicy;",
            ")",
            "Lcom/google/mygson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    sget-object v0, Lcom/google/mygson/LongSerializationPolicy;->DEFAULT:Lcom/google/mygson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 309
    sget-object v0, Lcom/google/mygson/internal/bind/TypeAdapters;->LONG:Lcom/google/mygson/TypeAdapter;

    .line 311
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mygson/Gson$6;

    invoke-direct {v0, p0}, Lcom/google/mygson/Gson$6;-><init>(Lcom/google/mygson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/google/mygson/stream/JsonWriter;
    .locals 2
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    iget-boolean v1, p0, Lcom/google/mygson/Gson;->generateNonExecutableJson:Z

    if-eqz v1, :cond_0

    .line 592
    const-string v1, ")]}\'\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 594
    :cond_0
    new-instance v0, Lcom/google/mygson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/google/mygson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 595
    .local v0, jsonWriter:Lcom/google/mygson/stream/JsonWriter;
    iget-boolean v1, p0, Lcom/google/mygson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 596
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/google/mygson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 598
    :cond_1
    iget-boolean v1, p0, Lcom/google/mygson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 599
    return-object v0
.end method


# virtual methods
.method public fromJson(Lcom/google/mygson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 792
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/Gson;->fromJson(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 793
    .local v0, object:Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/mygson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Lcom/google/mygson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 816
    if-nez p1, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/mygson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/google/mygson/internal/bind/JsonTreeReader;-><init>(Lcom/google/mygson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/Gson;->fromJson(Lcom/google/mygson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromJson(Lcom/google/mygson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 5
    .parameter "reader"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;,
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 748
    const/4 v1, 0x1

    .line 749
    .local v1, isEmpty:Z
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 750
    .local v2, oldLenient:Z
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    .line 752
    :try_start_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    .line 753
    const/4 v1, 0x0

    .line 754
    invoke-static {p2}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v3

    .line 755
    .local v3, typeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    invoke-virtual {v3, p1}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 771
    invoke-virtual {p1, v2}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    .end local v3           #typeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    :goto_0
    return-object v4

    .line 756
    :catch_0
    move-exception v0

    .line 761
    .local v0, e:Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 762
    const/4 v4, 0x0

    .line 771
    invoke-virtual {p1, v2}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    goto :goto_0

    .line 764
    :cond_0
    :try_start_1
    new-instance v4, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 771
    .end local v0           #e:Ljava/io/EOFException;
    :catchall_0
    move-exception v4

    invoke-virtual {p1, v2}, Lcom/google/mygson/stream/JsonReader;->setLenient(Z)V

    throw v4

    .line 765
    :catch_1
    move-exception v0

    .line 766
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    new-instance v4, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 767
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 769
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v4, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonSyntaxException;,
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 693
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/mygson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/mygson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 694
    .local v0, jsonReader:Lcom/google/mygson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/Gson;->fromJson(Lcom/google/mygson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, object:Ljava/lang/Object;
    invoke-static {v1, v0}, Lcom/google/mygson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/mygson/stream/JsonReader;)V

    .line 696
    invoke-static {p2}, Lcom/google/mygson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;,
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 720
    new-instance v0, Lcom/google/mygson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/mygson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 721
    .local v0, jsonReader:Lcom/google/mygson/stream/JsonReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/Gson;->fromJson(Lcom/google/mygson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 722
    .local v1, object:Ljava/lang/Object;,"TT;"
    invoke-static {v1, v0}, Lcom/google/mygson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/google/mygson/stream/JsonReader;)V

    .line 723
    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 642
    .local p2, classOfT:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    .local v0, object:Ljava/lang/Object;
    invoke-static {p2}, Lcom/google/mygson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .parameter "json"
    .parameter "typeOfT"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 666
    if-nez p1, :cond_0

    .line 667
    const/4 v1, 0x0

    .line 671
    :goto_0
    return-object v1

    .line 669
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 670
    .local v0, reader:Ljava/io/StringReader;
    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 671
    .local v1, target:Ljava/lang/Object;,"TT;"
    goto :goto_0
.end method

.method public getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, type:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    iget-object v7, p0, Lcom/google/mygson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mygson/TypeAdapter;

    .line 338
    .local v0, cached:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    if-eqz v0, :cond_0

    .line 362
    .end local v0           #cached:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    :goto_0
    return-object v0

    .line 342
    .restart local v0       #cached:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    :cond_0
    iget-object v7, p0, Lcom/google/mygson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 344
    .local v6, threadCalls:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/mygson/reflect/TypeToken<*>;Lcom/google/mygson/Gson$FutureTypeAdapter<*>;>;"
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/mygson/Gson$FutureTypeAdapter;

    .line 345
    .local v5, ongoingCall:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    if-eqz v5, :cond_1

    move-object v0, v5

    .line 346
    goto :goto_0

    .line 349
    :cond_1
    new-instance v1, Lcom/google/mygson/Gson$FutureTypeAdapter;

    invoke-direct {v1}, Lcom/google/mygson/Gson$FutureTypeAdapter;-><init>()V

    .line 350
    .local v1, call:Lcom/google/mygson/Gson$FutureTypeAdapter;,"Lcom/google/mygson/Gson$FutureTypeAdapter<TT;>;"
    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v7, p0, Lcom/google/mygson/Gson;->factories:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/mygson/TypeAdapterFactory;

    .line 353
    .local v3, factory:Lcom/google/mygson/TypeAdapterFactory;
    invoke-interface {v3, p0, p1}, Lcom/google/mygson/TypeAdapterFactory;->create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v2

    .line 354
    .local v2, candidate:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {v1, v2}, Lcom/google/mygson/Gson$FutureTypeAdapter;->setDelegate(Lcom/google/mygson/TypeAdapter;)V

    .line 356
    iget-object v7, p0, Lcom/google/mygson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v7, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    .line 360
    .end local v2           #candidate:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<TT;>;"
    .end local v3           #factory:Lcom/google/mygson/TypeAdapterFactory;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GSON cannot handle "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .end local v4           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    invoke-interface {v6, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v7
.end method

.method public getAdapter(Ljava/lang/Class;)Lcom/google/mygson/TypeAdapter;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lcom/google/mygson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "jsonElement"

    .prologue
    .line 564
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 565
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/Gson;->toJson(Lcom/google/mygson/JsonElement;Ljava/lang/Appendable;)V

    .line 566
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/google/mygson/Gson;->toJson(Lcom/google/mygson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 479
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 480
    .local v0, writer:Ljava/io/StringWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toJson(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V
    .locals 5
    .parameter "jsonElement"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p2}, Lcom/google/mygson/stream/JsonWriter;->isLenient()Z

    move-result v2

    .line 608
    .local v2, oldLenient:Z
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 609
    invoke-virtual {p2}, Lcom/google/mygson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v1

    .line 610
    .local v1, oldHtmlSafe:Z
    iget-boolean v4, p0, Lcom/google/mygson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v4}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 611
    invoke-virtual {p2}, Lcom/google/mygson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 612
    .local v3, oldSerializeNulls:Z
    iget-boolean v4, p0, Lcom/google/mygson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v4}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 614
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/mygson/internal/Streams;->write(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    invoke-virtual {p2, v2}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 619
    invoke-virtual {p2, v1}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 620
    invoke-virtual {p2, v3}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 622
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lcom/google/mygson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {p2, v2}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 619
    invoke-virtual {p2, v1}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 620
    invoke-virtual {p2, v3}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v4
.end method

.method public toJson(Lcom/google/mygson/JsonElement;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "jsonElement"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    invoke-static {p2}, Lcom/google/mygson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/mygson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/mygson/stream/JsonWriter;

    move-result-object v1

    .line 580
    .local v1, jsonWriter:Lcom/google/mygson/stream/JsonWriter;
    invoke-virtual {p0, p1, v1}, Lcom/google/mygson/Gson;->toJson(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    return-void

    .line 581
    .end local v1           #jsonWriter:Lcom/google/mygson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 582
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .parameter "src"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/google/mygson/Gson;->toJson(Lcom/google/mygson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/mygson/stream/JsonWriter;)V
    .locals 6
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {p2}, Lcom/google/mygson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/mygson/reflect/TypeToken;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/mygson/Gson;->getAdapter(Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .line 539
    .local v0, adapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<*>;"
    invoke-virtual {p3}, Lcom/google/mygson/stream/JsonWriter;->isLenient()Z

    move-result v3

    .line 540
    .local v3, oldLenient:Z
    const/4 v5, 0x1

    invoke-virtual {p3, v5}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 541
    invoke-virtual {p3}, Lcom/google/mygson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 542
    .local v2, oldHtmlSafe:Z
    iget-boolean v5, p0, Lcom/google/mygson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v5}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 543
    invoke-virtual {p3}, Lcom/google/mygson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v4

    .line 544
    .local v4, oldSerializeNulls:Z
    iget-boolean v5, p0, Lcom/google/mygson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v5}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 546
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    invoke-virtual {p3, v3}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 551
    invoke-virtual {p3, v2}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 552
    invoke-virtual {p3, v4}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 554
    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lcom/google/mygson/JsonIOException;

    invoke-direct {v5, v1}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual {p3, v3}, Lcom/google/mygson/stream/JsonWriter;->setLenient(Z)V

    .line 551
    invoke-virtual {p3, v2}, Lcom/google/mygson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 552
    invoke-virtual {p3, v4}, Lcom/google/mygson/stream/JsonWriter;->setSerializeNulls(Z)V

    throw v5
.end method

.method public toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 3
    .parameter "src"
    .parameter "typeOfSrc"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 524
    :try_start_0
    invoke-static {p3}, Lcom/google/mygson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/mygson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/mygson/stream/JsonWriter;

    move-result-object v1

    .line 525
    .local v1, jsonWriter:Lcom/google/mygson/stream/JsonWriter;
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/mygson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    return-void

    .line 526
    .end local v1           #jsonWriter:Lcom/google/mygson/stream/JsonWriter;
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toJsonTree(Ljava/lang/Object;)Lcom/google/mygson/JsonElement;
    .locals 1
    .parameter "src"

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    sget-object v0, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    .line 418
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mygson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/mygson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/google/mygson/JsonElement;
    .locals 2
    .parameter "src"
    .parameter "typeOfSrc"

    .prologue
    .line 438
    new-instance v0, Lcom/google/mygson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/google/mygson/internal/bind/JsonTreeWriter;-><init>()V

    .line 439
    .local v0, writer:Lcom/google/mygson/internal/bind/JsonTreeWriter;
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/mygson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/mygson/stream/JsonWriter;)V

    .line 440
    invoke-virtual {v0}, Lcom/google/mygson/internal/bind/JsonTreeWriter;->get()Lcom/google/mygson/JsonElement;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "serializeNulls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/mygson/Gson;->serializeNulls:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "factories:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mygson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",instanceCreators:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mygson/Gson;->constructorConstructor:Lcom/google/mygson/internal/ConstructorConstructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 854
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
