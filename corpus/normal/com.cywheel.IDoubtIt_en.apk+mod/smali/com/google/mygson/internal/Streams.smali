.class public final Lcom/google/mygson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mygson/internal/Streams$1;,
        Lcom/google/mygson/internal/Streams$AppendableWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static parse(Lcom/google/mygson/stream/JsonReader;)Lcom/google/mygson/JsonElement;
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/mygson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v1, 0x1

    .line 42
    .local v1, isEmpty:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v2, Lcom/google/mygson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v2, p0}, Lcom/google/mygson/TypeAdapter;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/mygson/JsonElement;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/mygson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 51
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 50
    .local v0, e:Ljava/io/EOFException;
    if-eqz v1, :cond_0

    .line 51
    sget-object v2, Lcom/google/mygson/JsonNull;->INSTANCE:Lcom/google/mygson/JsonNull;

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 54
    .end local v0           #e:Ljava/io/EOFException;
    :catch_1
    move-exception v0

    .line 55
    .local v0, e:Lcom/google/mygson/stream/MalformedJsonException;
    new-instance v2, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v0           #e:Lcom/google/mygson/stream/MalformedJsonException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/mygson/JsonIOException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/mygson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static write(Lcom/google/mygson/JsonElement;Lcom/google/mygson/stream/JsonWriter;)V
    .locals 1
    .parameter "element"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v0, Lcom/google/mygson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/mygson/TypeAdapter;

    invoke-virtual {v0, p1, p0}, Lcom/google/mygson/TypeAdapter;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2
    .parameter "appendable"

    .prologue
    .line 71
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/Writer;

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/google/mygson/internal/Streams$AppendableWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/mygson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/google/mygson/internal/Streams$1;)V

    move-object p0, v0

    goto :goto_0
.end method
