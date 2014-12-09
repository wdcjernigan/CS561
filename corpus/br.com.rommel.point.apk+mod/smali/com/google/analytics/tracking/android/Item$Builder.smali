.class public Lcom/google/analytics/tracking/android/Item$Builder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final itemPriceInMicros:J

.field private final itemQuantity:J

.field private productCategory:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final productSKU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .parameter "productSKU"
    .parameter "productName"
    .parameter "itemPriceInMicros"
    .parameter "itemQuantity"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productCategory:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "productSKU must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemName must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productSKU:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productName:Ljava/lang/String;

    .line 76
    iput-wide p3, p0, Lcom/google/analytics/tracking/android/Item$Builder;->itemPriceInMicros:J

    .line 77
    iput-wide p5, p0, Lcom/google/analytics/tracking/android/Item$Builder;->itemQuantity:J

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productSKU:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/Item$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->itemPriceInMicros:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/Item$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->itemQuantity:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/Item$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productCategory:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/analytics/tracking/android/Item;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/google/analytics/tracking/android/Item;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/Item;-><init>(Lcom/google/analytics/tracking/android/Item$Builder;Lcom/google/analytics/tracking/android/Item$1;)V

    return-object v0
.end method

.method public setProductCategory(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Item$Builder;
    .locals 0
    .parameter "productCategory"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Item$Builder;->productCategory:Ljava/lang/String;

    .line 89
    return-object p0
.end method
