.class final Lcom/google/mygson/internal/bind/TypeAdapters$12;
.super Lcom/google/mygson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/mygson/TypeAdapter",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/mygson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Character;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 317
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 318
    const/4 v1, 0x0

    .line 324
    :goto_0
    return-object v1

    .line 320
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, str:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 322
    new-instance v1, Lcom/google/mygson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting character, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TypeAdapters$12;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Character;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/mygson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/mygson/stream/JsonWriter;

    .line 329
    return-void

    .line 328
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 313
    check-cast p2, Ljava/lang/Character;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/TypeAdapters$12;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/lang/Character;)V

    return-void
.end method
