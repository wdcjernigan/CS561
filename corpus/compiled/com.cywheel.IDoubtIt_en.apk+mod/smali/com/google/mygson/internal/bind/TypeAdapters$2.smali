.class final Lcom/google/mygson/internal/bind/TypeAdapters$2;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
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
    .line 73
    invoke-virtual {p0, p1}, Lcom/google/mygson/internal/bind/TypeAdapters$2;->read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/mygson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/google/mygson/stream/JsonToken;->NULL:Lcom/google/mygson/stream/JsonToken;

    if-ne v8, v9, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextNull()V

    .line 77
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 81
    .local v0, bitset:Ljava/util/BitSet;
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->beginArray()V

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, i:I
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v5

    .line 84
    .local v5, tokenType:Lcom/google/mygson/stream/JsonToken;
    :goto_1
    sget-object v8, Lcom/google/mygson/stream/JsonToken;->END_ARRAY:Lcom/google/mygson/stream/JsonToken;

    if-eq v5, v8, :cond_4

    .line 86
    sget-object v8, Lcom/google/mygson/internal/bind/TypeAdapters$30;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v5}, Lcom/google/mygson/stream/JsonToken;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 103
    new-instance v6, Lcom/google/mygson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid bitset value type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 88
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 105
    .local v3, set:Z
    :goto_2
    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 108
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 109
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->peek()Lcom/google/mygson/stream/JsonToken;

    move-result-object v5

    .line 110
    goto :goto_1

    .end local v3           #set:Z
    :cond_2
    move v3, v7

    .line 88
    goto :goto_2

    .line 91
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextBoolean()Z

    move-result v3

    .line 92
    .restart local v3       #set:Z
    goto :goto_2

    .line 94
    .end local v3           #set:Z
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, stringValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .restart local v3       #set:Z
    :goto_3
    goto :goto_2

    .end local v3           #set:Z
    :cond_3
    move v3, v7

    goto :goto_3

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v6, Lcom/google/mygson/JsonSyntaxException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/mygson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #stringValue:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 73
    check-cast p2, Ljava/util/BitSet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/mygson/internal/bind/TypeAdapters$2;->write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/google/mygson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .parameter "out"
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->nullValue()Lcom/google/mygson/stream/JsonWriter;

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->beginArray()Lcom/google/mygson/stream/JsonWriter;

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 123
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 124
    .local v1, value:I
    :goto_2
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lcom/google/mygson/stream/JsonWriter;->value(J)Lcom/google/mygson/stream/JsonWriter;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    .end local v1           #value:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 126
    :cond_2
    invoke-virtual {p1}, Lcom/google/mygson/stream/JsonWriter;->endArray()Lcom/google/mygson/stream/JsonWriter;

    goto :goto_0
.end method
