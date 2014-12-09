.class public Lcom/google/analytics/tracking/android/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Transaction$1;,
        Lcom/google/analytics/tracking/android/Transaction$Builder;
    }
.end annotation


# instance fields
.field private final affiliation:Ljava/lang/String;

.field private final currencyCode:Ljava/lang/String;

.field private final items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/tracking/android/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final shippingCostInMicros:J

.field private final totalCostInMicros:J

.field private final totalTaxInMicros:J

.field private final transactionId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->transactionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$000(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->transactionId:Ljava/lang/String;

    .line 28
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->totalCostInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$100(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->totalCostInMicros:J

    .line 29
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->affiliation:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$200(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->affiliation:Ljava/lang/String;

    .line 30
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->totalTaxInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$300(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->totalTaxInMicros:J

    .line 31
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->shippingCostInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$400(Lcom/google/analytics/tracking/android/Transaction$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->shippingCostInMicros:J

    .line 32
    #getter for: Lcom/google/analytics/tracking/android/Transaction$Builder;->currencyCode:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Transaction$Builder;->access$500(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->currencyCode:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->items:Ljava/util/Map;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Transaction$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/Transaction;-><init>(Lcom/google/analytics/tracking/android/Transaction$Builder;)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/google/analytics/tracking/android/Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->items:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/analytics/tracking/android/Item;->getProductSKU()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public getAffiliation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->currencyCode:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/analytics/tracking/android/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/Transaction;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getShippingCostInMicros()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->shippingCostInMicros:J

    return-wide v0
.end method

.method public getTotalCostInMicros()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->totalCostInMicros:J

    return-wide v0
.end method

.method public getTotalTaxInMicros()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction;->totalTaxInMicros:J

    return-wide v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method
