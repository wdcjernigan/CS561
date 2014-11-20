.class public Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.super Lcom/phonegap/api/Plugin;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;
    }
.end annotation


# static fields
.field private static CLOSE_EVENT:I = 0x0

.field private static LOCATION_CHANGED_EVENT:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "ChildBrowser"


# instance fields
.field private browserCallbackId:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private showLocationBar:Z

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showLocationBar:Z

    .line 42
    return-void
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    return v0
.end method

.method static synthetic access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Z
    .locals 1
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1, p2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    return v0
.end method

.method static synthetic access$6(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$7(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$8(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 162
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 171
    :cond_0
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    const-string v2, "input_method"

    invoke-interface {v1, v2}, Lorg/apache/cordova/api/CordovaInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 180
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 187
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 2
    .parameter "obj"
    .parameter "keepCallback"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 350
    new-instance v0, Lcom/phonegap/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 351
    .local v0, result:Lcom/phonegap/api/PluginResult;
    invoke-virtual {v0, p2}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    .line 352
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 354
    .end local v0           #result:Lcom/phonegap/api/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 7
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 64
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 65
    .local v4, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v3, ""

    .line 68
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-string v5, "showWebPage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 72
    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v6, "ChildBrowser is already open"

    invoke-direct {v2, v5, v6}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-object v2

    .line 76
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 79
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 80
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lcom/phonegap/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v5}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 82
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 83
    .local v2, pluginResult:Lcom/phonegap/api/PluginResult;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 87
    .end local v2           #pluginResult:Lcom/phonegap/api/PluginResult;
    :cond_2
    const-string v5, "close"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->closeDialog()V

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v1, obj:Lorg/json/JSONObject;
    const-string v5, "type"

    sget v6, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v4, v1}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 94
    .restart local v2       #pluginResult:Lcom/phonegap/api/PluginResult;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/phonegap/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 97
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v2           #pluginResult:Lcom/phonegap/api/PluginResult;
    :cond_3
    const-string v5, "openExternal"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 98
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->openExternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 100
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 106
    :cond_4
    :goto_1
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lcom/phonegap/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_5
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;

    move-result-object v0

    return-object v0
.end method

.method public openExternal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "usePhoneGap"

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 123
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/apache/cordova/DroidGap;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    const-string v3, "url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v3, "loadUrlTimeoutValue"

    const v4, 0xea60

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v3, "loadingDialog"

    const-string v4, "Wait,Loading web page..."

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v3, "hideLoadingDialogOnPageLoad"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3, v1}, Lorg/apache/cordova/api/CordovaInterface;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const-string v3, ""

    .line 142
    :goto_1
    return-object v3

    .line 135
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v3, "ChildBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ChildBrowser: Error loading url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 140
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "options"

    .prologue
    .line 207
    if-eqz p2, :cond_0

    .line 208
    const-string v1, "showLocationBar"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showLocationBar:Z

    .line 212
    :cond_0
    new-instance v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;

    invoke-direct {v0, p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V

    .line 339
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1, v0}, Lorg/apache/cordova/api/CordovaInterface;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    const-string v1, ""

    return-object v1
.end method
