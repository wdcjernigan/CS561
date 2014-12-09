.class public Lcom/phonegap/DroidGap$GapClient;
.super Landroid/webkit/WebChromeClient;
.source "DroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/DroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GapClient"
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/phonegap/DroidGap;


# direct methods
.method public constructor <init>(Lcom/phonegap/DroidGap;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "ctx"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/phonegap/DroidGap$GapClient;->this$0:Lcom/phonegap/DroidGap;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 702
    iput-object p2, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Landroid/content/Context;

    .line 703
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 715
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 716
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 717
    const-string v1, "Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 719
    const v1, 0x104000a

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$1;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$1;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 726
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 727
    const/4 v1, 0x1

    return v1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 740
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/phonegap/DroidGap$GapClient;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 741
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 742
    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 743
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 744
    const v1, 0x104000a

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$2;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$2;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    const/high16 v1, 0x104

    new-instance v2, Lcom/phonegap/DroidGap$GapClient$3;

    invoke-direct {v2, p0, p4}, Lcom/phonegap/DroidGap$GapClient$3;-><init>(Lcom/phonegap/DroidGap$GapClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 756
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 757
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 758
    const/4 v1, 0x1

    return v1
.end method
