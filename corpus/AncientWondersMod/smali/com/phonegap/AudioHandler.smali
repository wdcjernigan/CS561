.class public Lcom/phonegap/AudioHandler;
.super Lcom/phonegap/api/Plugin;
.source "AudioHandler.java"


# instance fields
.field players:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/phonegap/AudioPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    .line 42
    return-void
.end method

.method private release(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 131
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 137
    :goto_0
    return v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 135
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->destroy()V

    .line 137
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 53
    sget-object v5, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 54
    .local v5, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v4, ""

    .line 57
    .local v4, result:Ljava/lang/String;
    :try_start_0
    const-string v6, "startRecordingAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/AudioHandler;->startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    new-instance v6, Lcom/phonegap/api/PluginResult;

    invoke-direct {v6, v5, v4}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    .line 87
    :goto_1
    return-object v6

    .line 60
    :cond_1
    const-string v6, "stopRecordingAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/AudioHandler;->stopRecordingAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    new-instance v6, Lcom/phonegap/api/PluginResult;

    sget-object v7, Lcom/phonegap/api/PluginResult$Status;->JSON_EXCEPTION:Lcom/phonegap/api/PluginResult$Status;

    invoke-direct {v6, v7}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;)V

    goto :goto_1

    .line 63
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v6, "startPlayingAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 64
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/AudioHandler;->startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_3
    const-string v6, "pausePlayingAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/AudioHandler;->pausePlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v6, "stopPlayingAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/AudioHandler;->stopPlayingAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_5
    const-string v6, "getCurrentPositionAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 73
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/AudioHandler;->getCurrentPositionAudio(Ljava/lang/String;)J

    move-result-wide v2

    .line 74
    .local v2, l:J
    new-instance v6, Lcom/phonegap/api/PluginResult;

    long-to-float v7, v2

    invoke-direct {v6, v5, v7}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V

    goto :goto_1

    .line 76
    .end local v2           #l:J
    :cond_6
    const-string v6, "getDurationAudio"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 77
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/AudioHandler;->getDurationAudio(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 78
    .restart local v2       #l:J
    new-instance v6, Lcom/phonegap/api/PluginResult;

    long-to-float v7, v2

    invoke-direct {v6, v5, v7}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;F)V

    goto/16 :goto_1

    .line 80
    .end local v2           #l:J
    :cond_7
    const-string v6, "release"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/phonegap/AudioHandler;->release(Ljava/lang/String;)Z

    move-result v0

    .line 82
    .local v0, b:Z
    new-instance v6, Lcom/phonegap/api/PluginResult;

    invoke-direct {v6, v5, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public getAudioOutputDevice()I
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 271
    iget-object v3, p0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 272
    .local v0, audiMgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 279
    :goto_0
    return v1

    .line 275
    :cond_0
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 276
    goto :goto_0

    .line 279
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentPositionAudio(Ljava/lang/String;)J
    .locals 3
    .parameter "id"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 218
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->getCurrentPosition()J

    move-result-wide v1

    .line 221
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDurationAudio(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "id"
    .parameter "file"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 235
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->getDuration(Ljava/lang/String;)J

    move-result-wide v1

    .line 243
    :goto_0
    return-wide v1

    .line 241
    :cond_0
    new-instance v0, Lcom/phonegap/AudioPlayer;

    .end local v0           #audio:Lcom/phonegap/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 242
    .restart local v0       #audio:Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->getDuration(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public isSynch(Ljava/lang/String;)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 98
    const-string v1, "getCurrentPositionAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    const-string v1, "getDurationAudio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 111
    iget-object v4, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 112
    .local v3, s:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 113
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 116
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->destroy()V

    goto :goto_0

    .line 118
    .end local v0           #audio:Lcom/phonegap/AudioPlayer;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/phonegap/AudioPlayer;>;"
    :cond_0
    iget-object v4, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 119
    return-void
.end method

.method public pausePlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 190
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 191
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->pausePlaying()V

    .line 194
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

    .line 253
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 254
    .local v0, audiMgr:Landroid/media/AudioManager;
    if-ne p1, v6, :cond_0

    .line 255
    invoke-virtual {v0, v4, v6, v3}, Landroid/media/AudioManager;->setRouting(III)V

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    if-ne p1, v5, :cond_1

    .line 258
    invoke-virtual {v0, v4, v5, v3}, Landroid/media/AudioManager;->setRouting(III)V

    goto :goto_0

    .line 261
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioHandler.setAudioOutputDevice() Error: Unknown output device."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlayingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 177
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/phonegap/AudioPlayer;

    .end local v0           #audio:Lcom/phonegap/AudioPlayer;
    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 179
    .restart local v0       #audio:Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_0
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public startRecordingAudio(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "file"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/phonegap/AudioPlayer;

    invoke-direct {v0, p0, p1}, Lcom/phonegap/AudioPlayer;-><init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V

    .line 152
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v0, p2}, Lcom/phonegap/AudioPlayer;->startRecording(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopPlayingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 203
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->stopPlaying()V

    .line 208
    :cond_0
    return-void
.end method

.method public stopRecordingAudio(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 162
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phonegap/AudioPlayer;

    .line 163
    .local v0, audio:Lcom/phonegap/AudioPlayer;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/phonegap/AudioPlayer;->stopRecording()V

    .line 165
    iget-object v1, p0, Lcom/phonegap/AudioHandler;->players:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-void
.end method
