.class Lcom/google/analytics/tracking/android/AdHitIdGenerator;
.super Ljava/lang/Object;
.source "AdHitIdGenerator.java"


# instance fields
.field private adMobSdkInstalled:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    const-string v1, "com.google.ads.AdRequest"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->adMobSdkInstalled:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, e:Ljava/lang/ClassNotFoundException;
    iput-boolean v2, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->adMobSdkInstalled:Z

    goto :goto_1
.end method

.method constructor <init>(Z)V
    .locals 0
    .parameter "adMobSdkInstalled"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->adMobSdkInstalled:Z

    .line 24
    return-void
.end method


# virtual methods
.method getAdHitId()I
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/analytics/tracking/android/AdHitIdGenerator;->adMobSdkInstalled:Z

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/analytics/tracking/android/AdMobInfo;->getInstance()Lcom/google/analytics/tracking/android/AdMobInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/AdMobInfo;->generateAdHitId()I

    move-result v0

    goto :goto_0
.end method
