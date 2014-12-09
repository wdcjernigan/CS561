.class Lcom/iChemLabs/ChemDoodleMobile/Eula$1;
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

.field private final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/SharedPreferences;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;->val$activity:Landroid/app/Activity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;->val$preferences:Landroid/content/SharedPreferences;

    #calls: Lcom/iChemLabs/ChemDoodleMobile/Eula;->accept(Landroid/content/SharedPreferences;)V
    invoke-static {v0}, Lcom/iChemLabs/ChemDoodleMobile/Eula;->access$0(Landroid/content/SharedPreferences;)V

    .line 71
    iget-object v0, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;->val$activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/iChemLabs/ChemDoodleMobile/Eula$1;->val$activity:Landroid/app/Activity;

    check-cast v0, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;

    invoke-interface {v0}, Lcom/iChemLabs/ChemDoodleMobile/Eula$OnEulaAgreedTo;->onEulaAgreedTo()V

    .line 74
    :cond_0
    return-void
.end method
