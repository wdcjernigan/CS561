.class Lcom/phonegap/CordovaChromeClient$6;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/CordovaChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/CordovaChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/phonegap/CordovaChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/phonegap/CordovaChromeClient$6;->this$0:Lcom/phonegap/CordovaChromeClient;

    iput-object p2, p0, Lcom/phonegap/CordovaChromeClient$6;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/phonegap/CordovaChromeClient$6;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 132
    return-void
.end method
