.class final Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;
.super Ljava/lang/Object;
.source "DatePickerPlugin.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonegap/plugin/DatePickerPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DateSetListener"
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
    .line 130
    iput-object p1, p0, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;->this$0:Lcom/phonegap/plugin/DatePickerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;->datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    .line 132
    iput-object p3, p0, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;->callBackId:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;-><init>(Lcom/phonegap/plugin/DatePickerPlugin;Lcom/phonegap/plugin/DatePickerPlugin;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, returnDate:Ljava/lang/String;
    iget-object v1, p0, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;->datePickerPlugin:Lcom/phonegap/plugin/DatePickerPlugin;

    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v3, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/phonegap/plugin/DatePickerPlugin$DateSetListener;->callBackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/phonegap/plugin/DatePickerPlugin;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 142
    return-void
.end method
