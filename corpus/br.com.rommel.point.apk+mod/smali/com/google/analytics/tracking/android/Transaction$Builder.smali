.class public Lcom/google/analytics/tracking/android/Transaction$Builder;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private affiliation:Ljava/lang/String;

.field private currencyCode:Ljava/lang/String;

.field private shippingCostInMicros:J

.field private final totalCostInMicros:J

.field private totalTaxInMicros:J

.field private final transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .parameter "transactionId"
    .parameter "totalCostInMicros"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->affiliation:Ljava/lang/String;

    .line 87
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->totalTaxInMicros:J

    .line 88
    iput-wide v1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->shippingCostInMicros:J

    .line 89
    iput-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->currencyCode:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transactionId must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->transactionId:Ljava/lang/String;

    .line 103
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->totalCostInMicros:J

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/analytics/tracking/android/Transaction$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->totalCostInMicros:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->affiliation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/analytics/tracking/android/Transaction$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->totalTaxInMicros:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/analytics/tracking/android/Transaction$Builder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->shippingCostInMicros:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/analytics/tracking/android/Transaction$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->currencyCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/analytics/tracking/android/Transaction;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/google/analytics/tracking/android/Transaction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/tracking/android/Transaction;-><init>(Lcom/google/analytics/tracking/android/Transaction$Builder;Lcom/google/analytics/tracking/android/Transaction$1;)V

    return-object v0
.end method

.method public setAffiliation(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;
    .locals 0
    .parameter "affiliation"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->affiliation:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method setCurrencyCode(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;
    .locals 0
    .parameter "currencyCode"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->currencyCode:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public setShippingCostInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;
    .locals 0
    .parameter "shippingCostInMicros"

    .prologue
    .line 137
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->shippingCostInMicros:J

    .line 138
    return-object p0
.end method

.method public setTotalTaxInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;
    .locals 0
    .parameter "totalTaxInMicros"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/google/analytics/tracking/android/Transaction$Builder;->totalTaxInMicros:J

    .line 126
    return-object p0
.end method
