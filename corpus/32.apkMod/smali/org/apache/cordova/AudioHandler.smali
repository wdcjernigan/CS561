.class public Lorg/apache/cordova/AudioHandler;
.super Lorg/apache/cordova/api/Plugin;
.source "AudioHandler.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field pausedForPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field

.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/cordova/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "AudioHandler"

    sput-object v0, Lorg/apache/cordova/AudioHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method private release(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 180
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 186
    :goto_0
    return v1

    .line 183
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 184
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    .line 186
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
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
    const-string v5, "startRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 69
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 106
    :goto_1
    return-object v5

    .line 71
    :cond_1
    const-string v5, "stopRecordingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1

    .line 74
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v5, "startPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 75
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v5, "seekToAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 78
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v5, "pausePlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 81
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    const-string v5, "stopPlayingAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 84
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_6
    const-string v5, "setVolume"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_7

    .line 87
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->setVolume(Ljava/lang/String;F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 88
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 91
    :cond_7
    :try_start_3
    const-string v5, "getCurrentPositionAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 92
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/cordova/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v2

    .line 93
    .local v2, f:F
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 95
    .end local v2           #f:F
    :cond_8
    const-string v5, "getDurationAudio"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 96
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lorg/apache/cordova/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 97
    .restart local v2       #f:F
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 99
    .end local v2           #f:F
    :cond_9
    const-string v5, "release"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 100
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/cordova/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v0

    .line 101
    .local v0, b:Z
    new-instance v5, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v5, v4, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method

.method public getAudioOutputDevice()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 327
    iget-object v3, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 328
    .local v0, audiMgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 335
    :goto_0
    return v1

    .line 331
    :cond_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 332
    goto :goto_0

    .line 335
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .locals 3
    .parameter "id"

    .prologue
    .line 272
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 273
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    .line 276
    :goto_0
    return v1

    :cond_0
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 288
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 289
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 295
    :cond_0
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 296
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 116
    const-string v1, "getCurrentPositionAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v1, "getDurationAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 129
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 130
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    goto :goto_0

    .line 132
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 133
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 145
    const-string v2, "telephone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    const-string v2, "ringing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "offhook"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 152
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getState()I

    move-result v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v2, v3, :cond_1

    .line 153
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    goto :goto_0

    .line 161
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v2, "idle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 163
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0, v4}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    :cond_3
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 168
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-object v4
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 247
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 248
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    .line 251
    :cond_0
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "milliseconds"

    .prologue
    .line 236
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 237
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->seekToPlaying(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setAudioOutputDevice(I)V
    .locals 7
    .parameter "output"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 308
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 309
    .local v0, audiMgr:Landroid/media/AudioManager;
    if-ne p1, v6, :cond_0

    .line 310
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 318
    :goto_0
    return-void

    .line 312
    :cond_0
    if-ne p1, v5, :cond_1

    .line 313
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 316
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVolume(Ljava/lang/String;F)V
    .locals 4
    .parameter "id"
    .parameter "volume"

    .prologue
    .line 346
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 347
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->setVolume(F)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioHandler.setVolume() Error: Unknown Audio Player "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 222
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 223
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 225
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 196
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V

    .line 200
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 258
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 259
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopPlaying()V

    .line 264
    :cond_0
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 209
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 210
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 212
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_0
    return-void
.end method
