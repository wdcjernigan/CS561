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
    .line 186
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 189
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 190
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    .line 192
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 10
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 64
    sget-object v7, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 65
    .local v7, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v5, ""

    .line 68
    .local v5, result:Ljava/lang/String;
    :try_start_0
    const-string v8, "startRecordingAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    :goto_0
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v7, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 112
    :goto_1
    return-object v8

    .line 71
    :cond_1
    const-string v8, "stopRecordingAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 72
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    sget-object v9, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v8, v9}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_1

    .line 74
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v8, "startPlayingAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v8, "seekToAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getInt(I)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->seekToAudio(Ljava/lang/String;I)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v8, "pausePlayingAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 81
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_5
    const-string v8, "stopPlayingAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 84
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_6
    const-string v8, "setVolume"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_7

    .line 87
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->setVolume(Ljava/lang/String;F)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 88
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 91
    :cond_7
    :try_start_3
    const-string v8, "getCurrentPositionAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 92
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/cordova/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)F

    move-result v3

    .line 93
    .local v3, f:F
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v7, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 95
    .end local v3           #f:F
    :cond_8
    const-string v8, "getDurationAudio"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 96
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lorg/apache/cordova/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    .line 97
    .restart local v3       #f:F
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v7, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 99
    .end local v3           #f:F
    :cond_9
    const-string v8, "create"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 100
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, id:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, src:Ljava/lang/String;
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    invoke-direct {v0, p0, v4, v6}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v8, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 105
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    .end local v4           #id:Ljava/lang/String;
    .end local v6           #src:Ljava/lang/String;
    :cond_a
    const-string v8, "release"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    const/4 v8, 0x0

    invoke-virtual {p2, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/apache/cordova/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v1

    .line 107
    .local v1, b:Z
    new-instance v8, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v8, v7, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Z)V
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

    .line 332
    iget-object v3, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 333
    .local v0, audiMgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 340
    :goto_0
    return v1

    .line 336
    :cond_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 337
    goto :goto_0

    .line 340
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)F
    .locals 3
    .parameter "id"

    .prologue
    .line 277
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 278
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getCurrentPosition()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    .line 281
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
    .line 293
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 294
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    .line 302
    :goto_0
    return v1

    .line 300
    :cond_0
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->getDuration(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string v1, "getCurrentPositionAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    const-string v1, "getDurationAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 135
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

    .line 136
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->destroy()V

    goto :goto_0

    .line 138
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    :cond_0
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 139
    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "id"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 151
    const-string v2, "telephone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    const-string v2, "ringing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "offhook"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
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

    .line 158
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->getState()I

    move-result v2

    sget-object v3, Lorg/apache/cordova/AudioPlayer$STATE;->MEDIA_RUNNING:Lorg/apache/cordova/AudioPlayer$STATE;

    invoke-virtual {v3}, Lorg/apache/cordova/AudioPlayer$STATE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 159
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    goto :goto_0

    .line 167
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v2, "idle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
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

    .line 169
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-virtual {v0, v4}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    :cond_3
    iget-object v2, p0, Lorg/apache/cordova/AudioHandler;->pausedForPhone:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 174
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-object v4
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 252
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 253
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->pausePlaying()V

    .line 256
    :cond_0
    return-void
.end method

.method public seekToAudio(Ljava/lang/String;I)V
    .locals 2
    .parameter "id"
    .parameter "milliseconds"

    .prologue
    .line 241
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 242
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->seekToPlaying(I)V

    .line 245
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

    .line 313
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 314
    .local v0, audiMgr:Landroid/media/AudioManager;
    if-ne p1, v6, :cond_0

    .line 315
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 323
    :goto_0
    return-void

    .line 317
    :cond_0
    if-ne p1, v5, :cond_1

    .line 318
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 321
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
    .line 351
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 352
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->setVolume(F)V

    .line 357
    :goto_0
    return-void

    .line 355
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
    .line 227
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 228
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 201
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 202
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lorg/apache/cordova/AudioPlayer;

    .end local v0           #audio:Lorg/apache/cordova/AudioPlayer;
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/cordova/AudioPlayer;-><init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .restart local v0       #audio:Lorg/apache/cordova/AudioPlayer;
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    invoke-virtual {v0, p2}, Lorg/apache/cordova/AudioPlayer;->startRecording(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 263
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 264
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopPlaying()V

    .line 269
    :cond_0
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 214
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/AudioPlayer;

    .line 215
    .local v0, audio:Lorg/apache/cordova/AudioPlayer;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 217
    iget-object v1, p0, Lorg/apache/cordova/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    return-void
.end method
