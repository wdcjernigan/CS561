.class Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$3;
.super Ljava/lang/Object;
.source "ChildBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;


# direct methods
.method constructor <init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$3;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1$3;->this$1:Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;

    #getter for: Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->this$0:Lcom/phonegap/plugins/childBrowser/ChildBrowser;
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;->access$0(Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;)Lcom/phonegap/plugins/childBrowser/ChildBrowser;

    move-result-object v0

    #calls: Lcom/phonegap/plugins/childBrowser/ChildBrowser;->goForward()V
    invoke-static {v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->access$6(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    .line 302
    return-void
.end method
