.class public Lcom/schaul/plugins/share/Language;
.super Ljava/lang/Object;
.source "Language.java"


# instance fields
.field private mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;


# direct methods
.method public constructor <init>(Lcom/sportkamasutra/lite/SportKamasutraActivity;)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    .line 12
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    invoke-virtual {v0}, Lcom/sportkamasutra/lite/SportKamasutraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSound()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    iget-boolean v0, v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->soundEnabled:Z

    return v0
.end method

.method public setSound(Z)V
    .locals 1
    .parameter "sound"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    iput-boolean p1, v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->soundEnabled:Z

    .line 24
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    iget-boolean v0, v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->soundEnabled:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    iget-object v0, v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/schaul/plugins/share/Language;->mGap:Lcom/sportkamasutra/lite/SportKamasutraActivity;

    iget-object v0, v0, Lcom/sportkamasutra/lite/SportKamasutraActivity;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method
