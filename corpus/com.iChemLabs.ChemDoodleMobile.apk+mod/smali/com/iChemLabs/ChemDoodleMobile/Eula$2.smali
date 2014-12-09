.class Lcom/iChemLabs/ChemDoodleMobile/Eula$2;
.super Ljava/lang/Object;
.source "Eula.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iChemLabs/ChemDoodleMobile/Eula;->show(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$2;->val$activity:Landroid/app/Activity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$2;->val$activity:Landroid/app/Activity;

    #calls: Lcom/iChemLabs/ChemDoodleMobile/Eula;->refuse(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->access$1(Landroid/app/Activity;)V

    .line 79
    return-void
.end method
