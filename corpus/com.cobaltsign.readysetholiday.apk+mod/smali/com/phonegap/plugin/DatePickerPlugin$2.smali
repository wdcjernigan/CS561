.class Lcom/phonegap/plugin/DatePickerPlugin$2;
.super Ljava/lang/Object;
.source "DatePickerPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonegap/plugin/DatePickerPlugin;->show(Lorg/json/JSONArray;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonegap/plugin/DatePickerPlugin;

.field private final synthetic val$callBackId:Ljava/lang/String;

.field private final synthetic val$currentCtx:Lorg/apache/cordova/DroidGap;

.field private final synthetic val$datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

.field private final synthetic val$mDay:I

.field private final synthetic val$mMonth:I

.field private final synthetic val$mYear:I


# direct methods
.method constructor <init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lorg/apache/cordova/DroidGap;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    iput-object p2, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    iput-object p3, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$callBackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$currentCtx:Lorg/apache/cordova/DroidGap;

    iput p5, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mYear:I

    iput p6, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mMonth:I

    iput p7, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mDay:I

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    new-instance v2, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;

    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    iget-object v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    iget-object v4, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$callBackId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;)V

    .line 112
    .local v2, dateSetListener:Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$currentCtx:Lorg/apache/cordova/DroidGap;

    iget v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mYear:I

    .line 113
    iget v4, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mMonth:I

    iget v5, p0, Lcom/phonegap/plugin/DatePickerPlugin$2;->val$mDay:I

    .line 112
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 114
    .local v0, dateDialog:Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 115
    return-void
.end method
