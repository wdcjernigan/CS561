.class final Lcom/google/mygson/internal/bind/TypeAdapters$20;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lcom/google/mygson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mygson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/mygson/Gson;Lcom/google/mygson/reflect/TypeToken;)Lcom/google/mygson/TypeAdapter;
    .locals 3
    .parameter "gson"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/mygson/Gson;",
            "Lcom/google/mygson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/google/mygson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p2, typeToken:Lcom/google/mygson/reflect/TypeToken;,"Lcom/google/mygson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lcom/google/mygson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/sql/Timestamp;

    if-eq v1, v2, :cond_0

    .line 473
    const/4 v1, 0x0

    .line 477
    :goto_0
    return-object v1

    .line 476
    :cond_0
    const-class v1, Ljava/util/Date;

    invoke-virtual {p1, v1}, Lcom/google/mygson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/mygson/TypeAdapter;

    move-result-object v0

    .line 477
    .local v0, dateTypeAdapter:Lcom/google/mygson/TypeAdapter;,"Lcom/google/mygson/TypeAdapter<Ljava/util/Date;>;"
    new-instance v1, Lcom/google/mygson/internal/bind/TypeAdapters$20$1;

    invoke-direct {v1, p0, v0}, Lcom/google/mygson/internal/bind/TypeAdapters$20$1;-><init>(Lcom/google/mygson/internal/bind/TypeAdapters$20;Lcom/google/mygson/TypeAdapter;)V

    goto :goto_0
.end method
