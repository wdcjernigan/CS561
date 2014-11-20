.class Lcom/google/ads/mediation/admob/AdMobAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/admob/AdMobAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/admob/AdMobAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapter;Lcom/google/ads/mediation/admob/AdMobAdapter$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/admob/AdMobAdapter$a;-><init>(Lcom/google/ads/mediation/admob/AdMobAdapter;)V

    return-void
.end method


# virtual methods
.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 284
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 2
    .parameter "ad"
    .parameter "error"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1, p2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    .line 273
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 294
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 278
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 279
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .parameter "ad"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;->a(Lcom/google/ads/mediation/admob/AdMobAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/admob/AdMobAdapter$a;->a:Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 268
    return-void
.end method
