.class public Lorg/apache/cordova/CordovaWebView;
.super Landroid/webkit/WebView;
.source "CordovaWebView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CordovaWebView"


# instance fields
.field baseUrl:Ljava/lang/String;

.field private bound:Z

.field public callbackServer:Lorg/apache/cordova/CallbackServer;

.field private chromeClient:Lorg/apache/cordova/CordovaChromeClient;

.field private cordova:Lorg/apache/cordova/api/CordovaInterface;

.field private keyDownCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keyUpCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field loadUrlTimeout:I

.field public pluginManager:Lorg/apache/cordova/api/PluginManager;

.field private url:Ljava/lang/String;

.field private urls:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field useBrowserHistory:Z

.field viewClient:Lorg/apache/cordova/CordovaWebViewClient;

.field private volumedownBound:Z

.field private volumeupBound:Z

.field private whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private whiteListCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    .line 73
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    .line 76
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    .line 91
    const-class v0, Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    check-cast p1, Lorg/apache/cordova/api/CordovaInterface;

    .end local p1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 99
    :goto_0
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->loadConfiguration()V

    .line 100
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->setup()V

    .line 101
    return-void

    .line 97
    .restart local p1
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    .line 73
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    .line 76
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    .line 111
    const-class v0, Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lorg/apache/cordova/api/CordovaInterface;

    .end local p1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 119
    :goto_0
    new-instance v0, Lorg/apache/cordova/CordovaChromeClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/CordovaChromeClient;)V

    .line 120
    new-instance v0, Lorg/apache/cordova/CordovaWebViewClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V

    .line 121
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->loadConfiguration()V

    .line 122
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->setup()V

    .line 123
    return-void

    .line 117
    .restart local p1
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    .line 73
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    .line 76
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    .line 135
    const-class v0, Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Lorg/apache/cordova/api/CordovaInterface;

    .end local p1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 143
    :goto_0
    new-instance v0, Lorg/apache/cordova/CordovaChromeClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/CordovaChromeClient;)V

    .line 144
    new-instance v0, Lorg/apache/cordova/CordovaWebViewClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1, p0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V

    .line 145
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->loadConfiguration()V

    .line 146
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->setup()V

    .line 147
    return-void

    .line 141
    .restart local p1
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "privateBrowsing"

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    .line 73
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    .line 76
    iput v1, p0, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    .line 159
    const-class v0, Lorg/apache/cordova/api/CordovaInterface;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    check-cast p1, Lorg/apache/cordova/api/CordovaInterface;

    .end local p1
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 167
    :goto_0
    new-instance v0, Lorg/apache/cordova/CordovaChromeClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/CordovaChromeClient;)V

    .line 168
    new-instance v0, Lorg/apache/cordova/CordovaWebViewClient;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V

    .line 169
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->loadConfiguration()V

    .line 170
    invoke-direct {p0}, Lorg/apache/cordova/CordovaWebView;->setup()V

    .line 171
    return-void

    .line 165
    .restart local p1
    :cond_0
    const-string v0, "CordovaWebView"

    const-string v1, "Your activity must implement CordovaInterface to work"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/cordova/CordovaWebView;)Lorg/apache/cordova/api/CordovaInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrlNow(Ljava/lang/String;)V

    return-void
.end method

.method private loadConfiguration()V
    .locals 14

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "cordova"

    const-string v12, "xml"

    iget-object v13, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v13}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 600
    .local v2, id:I
    if-nez v2, :cond_1

    .line 601
    const-string v10, "CordovaLog"

    const-string v11, "cordova.xml missing. Ignoring..."

    invoke-static {v10, v11}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 605
    .local v9, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, -0x1

    .line 606
    .local v1, eventType:I
    :goto_1
    const/4 v10, 0x1

    if-eq v1, v10, :cond_6

    .line 607
    const/4 v10, 0x2

    if-ne v1, v10, :cond_2

    .line 608
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, strNode:Ljava/lang/String;
    const-string v10, "access"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 610
    const/4 v10, 0x0

    const-string v11, "origin"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, origin:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "subdomains"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, subdomains:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 613
    if-eqz v7, :cond_3

    const-string v10, "true"

    invoke-virtual {v7, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0, v5, v10}, Lorg/apache/cordova/CordovaWebView;->addWhiteListEntry(Ljava/lang/String;Z)V

    .line 635
    .end local v5           #origin:Ljava/lang/String;
    .end local v6           #strNode:Ljava/lang/String;
    .end local v7           #subdomains:Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_1

    .line 613
    .restart local v5       #origin:Ljava/lang/String;
    .restart local v6       #strNode:Ljava/lang/String;
    .restart local v7       #subdomains:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 616
    .end local v5           #origin:Ljava/lang/String;
    .end local v7           #subdomains:Ljava/lang/String;
    :cond_4
    const-string v10, "log"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 617
    const/4 v10, 0x0

    const-string v11, "level"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, level:Ljava/lang/String;
    const-string v10, "CordovaLog"

    const-string v11, "Found log level %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v10, v11, v12}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    if-eqz v3, :cond_2

    .line 620
    invoke-static {v3}, Lorg/apache/cordova/api/LOG;->setLogLevel(Ljava/lang/String;)V

    goto :goto_3

    .line 623
    .end local v3           #level:Ljava/lang/String;
    :cond_5
    const-string v10, "preference"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 624
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, name:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "value"

    invoke-interface {v9, v10, v11}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, value:Ljava/lang/String;
    const-string v10, "CordovaLog"

    const-string v11, "Found preference for %s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    invoke-static {v10, v11, v12}, Lorg/apache/cordova/api/LOG;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    const-string v10, "CordovaLog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found preference for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v10, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 636
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #strNode:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    .line 638
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 639
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 644
    .end local v0           #e:Ljava/io/IOException;
    :cond_6
    const-string v10, "true"

    const-string v11, "useBrowserHistory"

    const-string v12, "false"

    invoke-virtual {p0, v11, v12}, Lorg/apache/cordova/CordovaWebView;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 645
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    .line 651
    :goto_4
    const-string v10, "true"

    const-string v11, "fullscreen"

    const-string v12, "false"

    invoke-virtual {p0, v11, v12}, Lorg/apache/cordova/CordovaWebView;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 652
    iget-object v10, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x800

    invoke-virtual {v10, v11}, Landroid/view/Window;->clearFlags(I)V

    .line 653
    iget-object v10, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v10}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const/16 v11, 0x400

    const/16 v12, 0x400

    invoke-virtual {v10, v11, v12}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .line 648
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    goto :goto_4
.end method

.method private loadUrlNow(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 418
    const-string v0, "CordovaWebView"

    const-string v1, ">>> loadUrlNow()"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private setup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    invoke-virtual {p0, v6}, Lorg/apache/cordova/CordovaWebView;->setInitialScale(I)V

    .line 180
    invoke-virtual {p0, v6}, Lorg/apache/cordova/CordovaWebView;->setVerticalScrollBarEnabled(Z)V

    .line 181
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->requestFocusFromTouch()Z

    .line 184
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 185
    .local v2, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 186
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 187
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 190
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 193
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 194
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, databasePath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 201
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 205
    :try_start_0
    new-instance v3, Lorg/apache/cordova/api/PluginManager;

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-direct {v3, p0, v4}, Lorg/apache/cordova/api/PluginManager;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/api/CordovaInterface;)V

    iput-object v3, p0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 208
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addWhiteListEntry(Ljava/lang/String;Z)V
    .locals 7
    .parameter "origin"
    .parameter "subdomains"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    :try_start_0
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 242
    const-string v1, "CordovaWebView"

    const-string v2, "Unlimited access to network resources"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    const-string v2, ".*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :goto_0
    return-void

    .line 247
    :cond_0
    if-eqz p2, :cond_2

    .line 249
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    const-string v2, "https?://"

    const-string v3, "^https?://(.*\\.)?"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    :goto_1
    const-string v1, "CordovaWebView"

    const-string v2, "Origin to allow with subdomains: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CordovaWebView"

    const-string v2, "Failed to add origin %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^https?://(.*\\.)?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_2
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    const-string v2, "https?://"

    const-string v3, "^https?://"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_2
    const-string v1, "CordovaWebView"

    const-string v2, "Origin to allow: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^https?://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public backHistory()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 502
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    .line 515
    :goto_0
    return v1

    .line 508
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 509
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 510
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bindButton(IZZ)V
    .locals 2
    .parameter "keyCode"
    .parameter "keyDown"
    .parameter "override"

    .prologue
    .line 766
    if-eqz p2, :cond_0

    .line 768
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bindButton(Ljava/lang/String;Z)V
    .locals 2
    .parameter "button"
    .parameter "override"

    .prologue
    .line 757
    const-string v0, "volumeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 758
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v0, "volumedown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bindButton(Z)V
    .locals 0
    .parameter "override"

    .prologue
    .line 752
    iput-boolean p1, p0, Lorg/apache/cordova/CordovaWebView;->bound:Z

    .line 753
    return-void
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 524
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 527
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 665
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 666
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 673
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 669
    .restart local p2
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 670
    .local v1, p:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 673
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public isBackButtonBound()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaWebView;->bound:Z

    return v0
.end method

.method public isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x1

    .line 279
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 295
    :goto_0
    return v3

    .line 284
    :cond_0
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebView;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 285
    .local v2, pit:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/regex/Pattern;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 287
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebView;->whiteListCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    .end local v0           #m:Ljava/util/regex/Matcher;
    .end local v1           #p:Ljava/util/regex/Pattern;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 305
    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "javascript:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrlNow(Ljava/lang/String;)V

    .line 321
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v1, "url"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, initUrl:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 314
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "time"

    .prologue
    .line 331
    const-string v1, "url"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/CordovaWebView;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, initUrl:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 335
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;I)V

    .line 341
    :goto_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrlIntoView(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    .line 349
    const-string v1, "CordovaWebView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> loadUrl("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->url:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->baseUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 353
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 354
    .local v6, i:I
    if-lez v6, :cond_1

    .line 355
    const/4 v1, 0x0

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaWebView;->baseUrl:Ljava/lang/String;

    .line 361
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v1}, Lorg/apache/cordova/api/PluginManager;->init()V

    .line 363
    iget-boolean v1, p0, Lorg/apache/cordova/CordovaWebView;->useBrowserHistory:Z

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .end local v6           #i:I
    :cond_0
    move-object v3, p0

    .line 370
    .local v3, me:Lorg/apache/cordova/CordovaWebView;
    iget v4, v3, Lorg/apache/cordova/CordovaWebView;->loadUrlTimeout:I

    .line 371
    .local v4, currentLoadUrlTimeout:I
    const-string v1, "loadUrlTimeoutValue"

    const-string v7, "20000"

    invoke-virtual {p0, v1, v7}, Lorg/apache/cordova/CordovaWebView;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 374
    .local v2, loadUrlTimeoutValue:I
    new-instance v5, Lorg/apache/cordova/CordovaWebView$1;

    invoke-direct {v5, p0, v3, p1}, Lorg/apache/cordova/CordovaWebView$1;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    .line 385
    .local v5, loadError:Ljava/lang/Runnable;
    new-instance v0, Lorg/apache/cordova/CordovaWebView$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/CordovaWebView$2;-><init>(Lorg/apache/cordova/CordovaWebView;ILorg/apache/cordova/CordovaWebView;ILjava/lang/Runnable;)V

    .line 403
    .local v0, timeoutCheck:Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v7, Lorg/apache/cordova/CordovaWebView$3;

    invoke-direct {v7, p0, v0, v3, p1}, Lorg/apache/cordova/CordovaWebView$3;-><init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/Runnable;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    return-void

    .line 358
    .end local v0           #timeoutCheck:Ljava/lang/Runnable;
    .end local v2           #loadUrlTimeoutValue:I
    .end local v3           #me:Lorg/apache/cordova/CordovaWebView;
    .end local v4           #currentLoadUrlTimeout:I
    .end local v5           #loadError:Ljava/lang/Runnable;
    .restart local v6       #i:I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/apache/cordova/CordovaWebView;->url:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/CordovaWebView;->baseUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public loadUrlIntoView(Ljava/lang/String;I)V
    .locals 5
    .parameter "url"
    .parameter "time"

    .prologue
    .line 433
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrlIntoView(Ljava/lang/String;)V

    .line 447
    return-void

    .line 439
    :cond_1
    const-string v0, "CordovaWebView"

    const-string v1, "DroidGap.loadUrl(%s, %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    const-string v0, "splashscreen"

    const-string v1, "show"

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 683
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebView;->keyDownCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    const/16 v1, 0x19

    if-ne p1, v1, :cond_0

    .line 687
    const-string v1, "CordovaWebView"

    const-string v2, "Down Key Hit"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v1, "javascript:cordova.fireDocumentEvent(\'volumedownbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 702
    :goto_0
    return v0

    .line 692
    :cond_0
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 693
    const-string v1, "CordovaWebView"

    const-string v2, "Up Key Hit"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v1, "javascript:cordova.fireDocumentEvent(\'volumeupbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 709
    const-string v2, "CordovaWebView"

    const-string v3, "KeyDown has been triggered on the view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 714
    iget-boolean v2, p0, Lorg/apache/cordova/CordovaWebView;->bound:Z

    if-eqz v2, :cond_1

    .line 715
    const-string v1, "javascript:cordova.fireDocumentEvent(\'backbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 747
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->backHistory()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 726
    goto :goto_0

    .line 731
    :cond_2
    const/16 v2, 0x52

    if-ne p1, v2, :cond_3

    .line 732
    const-string v0, "javascript:cordova.fireDocumentEvent(\'menubutton\');"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 733
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 736
    :cond_3
    const/16 v2, 0x54

    if-ne p1, v2, :cond_4

    .line 737
    const-string v1, "javascript:cordova.fireDocumentEvent(\'searchbutton\');"

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_4
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->keyUpCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    :cond_5
    const-string v0, "CordovaWebView"

    const-string v2, "KeyUp has been triggered on the view"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 747
    goto :goto_0
.end method

.method public peekAtUrlStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "id"
    .parameter "data"

    .prologue
    .line 468
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/api/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    return-void
.end method

.method public pushUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 490
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    return-void
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .parameter "statement"

    .prologue
    .line 456
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->callbackServer:Lorg/apache/cordova/CallbackServer;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebView;->callbackServer:Lorg/apache/cordova/CallbackServer;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackServer;->sendJavascript(Ljava/lang/String;)V

    .line 459
    :cond_0
    return-void
.end method

.method public setWebChromeClient(Lorg/apache/cordova/CordovaChromeClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 228
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->chromeClient:Lorg/apache/cordova/CordovaChromeClient;

    .line 229
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 230
    return-void
.end method

.method public setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 218
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    .line 219
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 220
    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/HashMap;)V
    .locals 7
    .parameter "url"
    .parameter "openExternal"
    .parameter "clearHistory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p4, params:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "CordovaWebView"

    const-string v3, "showWebPage(%s, %b, %b, HashMap"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    if-eqz p3, :cond_0

    .line 548
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebView;->clearHistory()V

    .line 552
    :cond_0
    if-nez p2, :cond_4

    .line 555
    const-string v2, "file://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->baseUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebView;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    :cond_1
    if-eqz p3, :cond_2

    .line 560
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->urls:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 564
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 568
    :cond_3
    const-string v2, "CordovaWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWebPage: Cannot load URL into webview since it is not in white list.  Loading into browser instead. (URL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/api/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 571
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 572
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CordovaWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 582
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_4
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 584
    iget-object v2, p0, Lorg/apache/cordova/CordovaWebView;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 585
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 586
    .restart local v0       #e:Landroid/content/ActivityNotFoundException;
    const-string v2, "CordovaWebView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/cordova/api/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
