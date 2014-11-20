.class public Lcom/airpush/android/CustomWebView;
.super Landroid/webkit/WebView;
.source "CustomWebView.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object v2, p0, Lcom/airpush/android/CustomWebView;->pd:Landroid/app/ProgressDialog;

    .line 16
    invoke-virtual {p0, v1}, Lcom/airpush/android/CustomWebView;->clearCache(Z)V

    .line 17
    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->clearFormData()V

    .line 18
    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->clearHistory()V

    .line 19
    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 21
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/airpush/android/CustomWebView;->requestFocus(I)Z

    .line 24
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airpush/android/CustomWebView;->pd:Landroid/app/ProgressDialog;

    .line 25
    iget-object v0, p0, Lcom/airpush/android/CustomWebView;->pd:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 26
    iput-object p1, p0, Lcom/airpush/android/CustomWebView;->ctx:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 32
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/airpush/android/CustomWebView;->goBack()V

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
