.class Lcom/google/analytics/tracking/android/Hit;
.super Ljava/lang/Object;
.source "Hit.java"


# instance fields
.field private final hitId:J

.field private hitString:Ljava/lang/String;

.field private final hitTime:J

.field private hitUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter "hitString"
    .parameter "hitId"
    .parameter "hitTime"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->hitString:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lcom/google/analytics/tracking/android/Hit;->hitId:J

    .line 39
    iput-wide p4, p0, Lcom/google/analytics/tracking/android/Hit;->hitTime:J

    .line 40
    return-void
.end method


# virtual methods
.method getHitId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->hitId:J

    return-wide v0
.end method

.method getHitParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->hitString:Ljava/lang/String;

    return-object v0
.end method

.method getHitTime()J
    .locals 2

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/analytics/tracking/android/Hit;->hitTime:J

    return-wide v0
.end method

.method public getHitUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/analytics/tracking/android/Hit;->hitUrl:Ljava/lang/String;

    return-object v0
.end method

.method setHitString(Ljava/lang/String;)V
    .locals 0
    .parameter "hitString"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->hitString:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setHitUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "hitUrl"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/analytics/tracking/android/Hit;->hitUrl:Ljava/lang/String;

    .line 49
    return-void
.end method
