.class final Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;
.super Ljava/lang/Object;
.source "DatePickerPlugin.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugin/DatePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeSetListener"
.end annotation


# instance fields
.field private final callBackId:Ljava/lang/String;

.field private final datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

.field final synthetic this$0:Lcom/phonegap/plugin/DatePickerPlugin;


# direct methods
.method private constructor <init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "datePickerPlugin"
    .parameter "callBackId"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p2, p0, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;->datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    .line 151
    iput-object p3, p0, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;->callBackId:Ljava/lang/String;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3}, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 160
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 161
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v0, p2}, Ljava/util/Date;->setHours(I)V

    .line 162
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMinutes(I)V

    .line 164
    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;->datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$TimeSetListener;->callBackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/phonegap/plugin/DatePickerPlugin;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 166
    return-void
.end method
