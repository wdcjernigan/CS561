.class public Lorg/apache/cordova/api/PluginEntry;
.super Ljava/lang/Object;
.source "PluginEntry.java"


# instance fields
.field public onload:Z

.field public plugin:Lorg/apache/cordova/api/IPlugin;

.field public pluginClass:Ljava/lang/String;

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "service"
    .parameter "pluginClass"
    .parameter "onload"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/api/PluginEntry;->service:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/api/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/api/PluginEntry;->onload:Z

    .line 61
    iput-object p1, p0, Lorg/apache/cordova/api/PluginEntry;->service:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/apache/cordova/api/PluginEntry;->pluginClass:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lorg/apache/cordova/api/PluginEntry;->onload:Z

    .line 64
    return-void
.end method

.method private getClassByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "clazz"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, c:Ljava/lang/Class;
    if-eqz p1, :cond_0

    .line 103
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    :cond_0
    return-object v0
.end method

.method private isCordovaPlugin(Ljava/lang/Class;)Z
    .locals 2
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 117
    if-eqz p1, :cond_1

    .line 118
    const-class v1, Lorg/apache/cordova/api/Plugin;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lorg/apache/cordova/api/IPlugin;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 120
    :cond_1
    return v0
.end method


# virtual methods
.method public createPlugin(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)Lorg/apache/cordova/api/IPlugin;
    .locals 5
    .parameter "webView"
    .parameter "ctx"

    .prologue
    .line 73
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    .line 89
    :goto_0
    return-object v2

    .line 78
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->pluginClass:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/apache/cordova/api/PluginEntry;->getClassByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, c:Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/apache/cordova/api/PluginEntry;->isCordovaPlugin(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/api/IPlugin;

    iput-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    .line 81
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    invoke-interface {v2, p2}, Lorg/apache/cordova/api/IPlugin;->setContext(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 82
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;

    invoke-interface {v2, p1}, Lorg/apache/cordova/api/IPlugin;->setView(Lorg/apache/cordova/CordovaWebView;)V

    .line 83
    iget-object v2, p0, Lorg/apache/cordova/api/PluginEntry;->plugin:Lorg/apache/cordova/api/IPlugin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0           #c:Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adding plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/cordova/api/PluginEntry;->pluginClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
