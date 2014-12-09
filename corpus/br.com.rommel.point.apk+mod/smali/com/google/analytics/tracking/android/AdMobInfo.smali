.class Lcom/google/analytics/tracking/android/AdMobInfo;
.super Ljava/lang/Object;
.source "AdMobInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/AdMobInfo$AdMobKey;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;


# instance fields
.field private adHitId:I

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/analytics/tracking/android/AdMobInfo;

    invoke-direct {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->random:Ljava/util/Random;

    .line 34
    return-void
.end method

.method static getInstance()Lcom/google/analytics/tracking/android/AdMobInfo;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/analytics/tracking/android/AdMobInfo;->INSTANCE:Lcom/google/analytics/tracking/android/AdMobInfo;

    return-object v0
.end method


# virtual methods
.method generateAdHitId()I
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->random:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->adHitId:I

    .line 56
    iget v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->adHitId:I

    return v0
.end method

.method getAdHitId()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->adHitId:I

    return v0
.end method

.method getJoinIds()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method setAdHitId(I)V
    .locals 0
    .parameter "adHitId"

    .prologue
    .line 60
    iput p1, p0, Lcom/google/analytics/tracking/android/AdMobInfo;->adHitId:I

    .line 61
    return-void
.end method
