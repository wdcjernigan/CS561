.class Lcom/schaul/plugins/share/Share$ImageGetter;
.super Ljava/lang/Object;
.source "Share.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/schaul/plugins/share/Share;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/schaul/plugins/share/Share;


# direct methods
.method private constructor <init>(Lcom/schaul/plugins/share/Share;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/schaul/plugins/share/Share$ImageGetter;->this$0:Lcom/schaul/plugins/share/Share;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/schaul/plugins/share/Share;Lcom/schaul/plugins/share/Share$ImageGetter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/schaul/plugins/share/Share$ImageGetter;-><init>(Lcom/schaul/plugins/share/Share;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "source"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 80
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-object v3, Lcom/sportkamasutra/lite/SportKamasutraActivity;->assetManager:Landroid/content/res/AssetManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "www/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 81
    .local v2, open:Ljava/io/InputStream;
    const-string v3, "src"

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 83
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    .end local v2           #open:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public imageFetch(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    .local v1, o:Ljava/lang/Object;
    move-object v0, v1

    .line 99
    check-cast v0, Ljava/io/InputStream;

    .line 101
    .local v0, content:Ljava/io/InputStream;
    return-object v0
.end method
