.class Lcom/degenet/reiortiz/ReiOrtizActivity$1;
.super Ljava/lang/Object;
.source "ReiOrtizActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/degenet/reiortiz/ReiOrtizActivity;->displayAlert(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/degenet/reiortiz/ReiOrtizActivity;


# direct methods
.method constructor <init>(Lcom/degenet/reiortiz/ReiOrtizActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/degenet/reiortiz/ReiOrtizActivity$1;->this$0:Lcom/degenet/reiortiz/ReiOrtizActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 110
    return-void
.end method
