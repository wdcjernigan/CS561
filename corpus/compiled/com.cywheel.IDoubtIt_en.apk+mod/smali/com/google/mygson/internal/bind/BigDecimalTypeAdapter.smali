.class public final Lcom/google/mygson/internal/bind/BigDecimalTypeAdapter;
.super Lcom/google/mygson/TypeAdapter;
.source "BigDecimalTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
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
    .line 33
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/BigDecimalTypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/math/BigDecimal;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 39
    const/4 v1, 0x0

    .line 42
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 33
    check-cast p2, Ljava/math/BigDecimal;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/BigDecimalTypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/math/BigDecimal;)V

    return-void
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/math/BigDecimal;)V
    .locals 0
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1, p2}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/mygson/stream/JsonWriter;

    .line 51
    return-void
.end method
