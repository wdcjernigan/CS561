.class Lcom/phonegap/plugin/DatePickerPlugin$1;
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

.field private final synthetic val$mHour:I

.field private final synthetic val$mMinutes:I


# direct methods
.method constructor <init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lorg/apache/cordova/DroidGap;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    iput-object p2, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    iput-object p3, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$callBackId:Ljava/lang/String;

    iput-object p4, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$currentCtx:Lorg/apache/cordova/DroidGap;

    iput p5, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$mHour:I

    iput p6, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$mMinutes:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 101
    new-instance v2, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;

    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    iget-object v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    iget-object v4, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$callBackId:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;)V

    .line 102
    .local v2, timeSetListener:Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$currentCtx:Lorg/apache/cordova/DroidGap;

    iget v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$mHour:I

    .line 103
    iget v4, p0, Lcom/phonegap/plugin/DatePickerPlugin$1;->val$mMinutes:I

    const/4 v5, 0x1

    .line 102
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 104
    .local v0, timeDialog:Landroid/app/TimePickerDialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 105
    return-void
.end method
