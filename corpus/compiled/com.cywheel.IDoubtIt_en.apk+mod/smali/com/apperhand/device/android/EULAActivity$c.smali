.class final Lcom/apperhand/device/android/EULAActivity$c;
.super Landroid/webkit/WebViewClient;
.source "EULAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apperhand/device/android/EULAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/apperhand/device/android/EULAActivity;


# direct methods
.method constructor <init>(Lcom/apperhand/device/android/EULAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    new-instance v1, Lcom/apperhand/device/android/EULAActivity$c$1;

    invoke-direct {v1, p0}, Lcom/apperhand/device/android/EULAActivity$c$1;-><init>(Lcom/apperhand/device/android/EULAActivity$c;)V

    invoke-virtual {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->i(Lcom/apperhand/device/android/EULAActivity;)Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->j(Lcom/apperhand/device/android/EULAActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    invoke-static {v0}, Lcom/apperhand/device/android/EULAActivity;->i(Lcom/apperhand/device/android/EULAActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:showBookmark()"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 360
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/apperhand/device/android/EULAActivity$c;->a:Lcom/apperhand/device/android/EULAActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apperhand/device/android/EULAActivity;->d(Lcom/apperhand/device/android/EULAActivity;Z)Z

    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 372
    const-string v0, "eula_more"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "javascript:showBookmark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 375
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
