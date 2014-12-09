.class public Lcom/google/analytics/tracking/android/Item;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Item$1;,
        Lcom/google/analytics/tracking/android/Item$Builder;
    }
.end annotation


# instance fields
.field private final itemPriceInMicros:J

.field private final itemQuantity:J

.field private final productCategory:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final productSKU:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/Item$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    #getter for: Lcom/google/analytics/tracking/android/Item$Builder;->productSKU:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Item$Builder;->access$000(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productSKU:Ljava/lang/String;

    .line 20
    #getter for: Lcom/google/analytics/tracking/android/Item$Builder;->itemPriceInMicros:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Item$Builder;->access$100(Lcom/google/analytics/tracking/android/Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Item;->itemPriceInMicros:J

    .line 21
    #getter for: Lcom/google/analytics/tracking/android/Item$Builder;->itemQuantity:J
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Item$Builder;->access$200(Lcom/google/analytics/tracking/android/Item$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/analytics/tracking/android/Item;->itemQuantity:J

    .line 22
    #getter for: Lcom/google/analytics/tracking/android/Item$Builder;->productName:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Item$Builder;->access$300(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productName:Ljava/lang/String;

    .line 23
    #getter for: Lcom/google/analytics/tracking/android/Item$Builder;->productCategory:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/analytics/tracking/android/Item$Builder;->access$400(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productCategory:Ljava/lang/String;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/Item$Builder;Lcom/google/analytics/tracking/android/Item$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/Item;-><init>(Lcom/google/analytics/tracking/android/Item$Builder;)V

    return-void
.end method


# virtual methods
.method public getItemPriceInMicros()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Item;->itemPriceInMicros:J

    return-wide v0
.end method

.method public getItemQuantity()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Item;->itemQuantity:J

    return-wide v0
.end method

.method public getProductCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductSKU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item;->productSKU:Ljava/lang/String;

    return-object v0
.end method
