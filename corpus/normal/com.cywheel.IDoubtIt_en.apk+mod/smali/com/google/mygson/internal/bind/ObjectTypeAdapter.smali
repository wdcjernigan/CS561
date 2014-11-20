.class public final Lcom/google/mygson/internal/bind/ObjectTypeAdapter;
.super Lcom/google/mygson/TypeAdapter;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/internal/bind/ObjectTypeAdapter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/mygson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/google/mygson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/mygson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/google/mygson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/google/mygson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/google/mygson/Gson;)V
    .locals 0
    .parameter "gson"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/mygson/Gson;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mygson/Gson;Lcom/google/mygson/internal/bind/ObjectTypeAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/mygson/Gson;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v2

    .line 55
    .local v2, token:Lcom/google/mygson/stream/JsonToken;
    sget-object v3, Lcom/google/mygson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v2}, Lcom/google/mygson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 88
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 57
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    .line 85
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    return-object v0

    .line 66
    :pswitch_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginObject()V

    .line 68
    :goto_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 72
    goto :goto_1

    .line 75
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 81
    :pswitch_4
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 84
    :pswitch_5
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 85
    const/4 v0, 0x0

    goto :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;->gson:Lcom/google/mygson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/mygson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .line 99
    .local v0, typeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<Ljava/lang/Object;>;"
    instance-of v1, v0, Lcom/google/mygson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginObject()Lcom/google/mygson/stream/JsonWriter;

    .line 101
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endObject()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
