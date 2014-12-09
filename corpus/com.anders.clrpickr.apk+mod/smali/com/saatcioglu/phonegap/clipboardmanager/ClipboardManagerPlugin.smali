.class public Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;
.super Lcom/phonegap/api/Plugin;
.source "ClipboardManagerPlugin.java"


# static fields
.field private static final actionCopy:Ljava/lang/String; = "copy"

.field private static final actionPaste:Ljava/lang/String; = "paste"

.field private static final errorParse:Ljava/lang/String; = "Couldn\'t get the text to copy"

.field private static final errorUnknown:Ljava/lang/String; = "Unknown Error"


# instance fields
.field private mClipboardManager:Landroid/text/ClipboardManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 6
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 40
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 43
    iget-object v3, p0, Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;->mClipboardManager:Landroid/text/ClipboardManager;

    if-nez v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/ClipboardManager;

    iput-object v3, p0, Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;->mClipboardManager:Landroid/text/ClipboardManager;

    .line 48
    :cond_0
    const-string v3, "copy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const-string v1, ""

    .line 51
    .local v1, arg:Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 52
    iget-object v3, p0, Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v3, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v3, v4, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 68
    .end local v1           #arg:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 53
    .restart local v1       #arg:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 54
    .local v2, e:Lorg/json/JSONException;
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    const-string v5, "Couldn\'t get the text to copy"

    invoke-direct {v3, v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 56
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->ERROR:Lcom/phonegap/api/PluginResult$Status;

    const-string v5, "Unknown Error"

    invoke-direct {v3, v4, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v1           #arg:Ljava/lang/String;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "paste"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/saatcioglu/phonegap/clipboardmanager/ClipboardManagerPlugin;->mClipboardManager:Landroid/text/ClipboardManager;

    invoke-virtual {v3}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .restart local v1       #arg:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 64
    const-string v1, ""

    .line 66
    :cond_2
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v3, v4, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v1           #arg:Ljava/lang/String;
    :cond_3
    new-instance v3, Lcom/phonegap/api/PluginResult;

    sget-object v4, Lcom/phonegap/api/PluginResult$Status;->INVALID_ACTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v3, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_0
.end method
