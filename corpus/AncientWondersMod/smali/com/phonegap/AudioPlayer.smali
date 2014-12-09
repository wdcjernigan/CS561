.class public Lcom/phonegap/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERROR_ALREADY_RECORDING:I

.field private static MEDIA_ERROR_PAUSE_STATE:I

.field private static MEDIA_ERROR_PLAY_MODE_SET:I

.field private static MEDIA_ERROR_RECORD_MODE_SET:I

.field private static MEDIA_ERROR_RESUME_STATE:I

.field private static MEDIA_ERROR_STARTING_PLAYBACK:I

.field private static MEDIA_ERROR_STARTING_RECORDING:I

.field private static MEDIA_ERROR_STOP_STATE:I

.field private static MEDIA_NONE:I

.field private static MEDIA_PAUSED:I

.field private static MEDIA_RUNNING:I

.field private static MEDIA_STARTING:I

.field private static MEDIA_STATE:I

.field private static MEDIA_STOPPED:I


# instance fields
.field private audioFile:Ljava/lang/String;

.field private duration:J

.field private handler:Lcom/phonegap/AudioHandler;

.field private id:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private prepareOnly:Z

.field private recorder:Landroid/media/MediaRecorder;

.field private state:I

.field private tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_NONE:I

    .line 32
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    .line 33
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    .line 34
    sput v3, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    .line 35
    sput v4, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    .line 38
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_STATE:I

    .line 39
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_DURATION:I

    .line 40
    const/16 v0, 0x9

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    .line 43
    sput v1, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PLAY_MODE_SET:I

    .line 44
    sput v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_ALREADY_RECORDING:I

    .line 45
    sput v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_RECORDING:I

    .line 46
    sput v4, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RECORD_MODE_SET:I

    .line 47
    const/4 v0, 0x5

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_PLAYBACK:I

    .line 48
    const/4 v0, 0x6

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RESUME_STATE:I

    .line 49
    const/4 v0, 0x7

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PAUSE_STATE:I

    .line 50
    const/16 v0, 0x8

    sput v0, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STOP_STATE:I

    return-void
.end method

.method public constructor <init>(Lcom/phonegap/AudioHandler;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_NONE:I

    iput v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    .line 55
    iput-object v2, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/phonegap/AudioPlayer;->duration:J

    .line 58
    iput-object v2, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 59
    iput-object v2, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 61
    iput-object v2, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 71
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    .line 72
    iput-object p2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    .line 76
    const-string v0, "/sdcard/tmprecording.mp3"

    iput-object v0, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 390
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    if-eq v0, p1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 394
    :cond_0
    iput p1, p0, Lcom/phonegap/AudioPlayer;->state:I

    .line 395
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/phonegap/AudioPlayer;->stopPlaying()V

    .line 87
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 88
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/phonegap/AudioPlayer;->stopRecording()V

    .line 92
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 93
    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 95
    :cond_1
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 285
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getDuration(Ljava/lang/String;)J
    .locals 2
    .parameter "file"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 317
    const-wide/16 v0, -0x2

    .line 332
    :goto_0
    return-wide v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 322
    iget-wide v0, p0, Lcom/phonegap/AudioPlayer;->duration:J

    goto :goto_0

    .line 327
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 328
    invoke-virtual {p0, p1}, Lcom/phonegap/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 332
    iget-wide v0, p0, Lcom/phonegap/AudioPlayer;->duration:J

    goto :goto_0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 297
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 144
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mPlayer"

    .prologue
    .line 272
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 273
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mPlayer"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 373
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer.onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 377
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 380
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mPlayer"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 346
    iget-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 352
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/phonegap/AudioPlayer;->duration:J

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/AudioPlayer;->prepareOnly:Z

    .line 360
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_DURATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/phonegap/AudioPlayer;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 242
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 244
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: pausePlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PAUSE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 9
    .parameter "file"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RECORD_MODE_SET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    if-ne v0, v1, :cond_5

    .line 179
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 186
    :goto_1
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1}, Lcom/phonegap/AudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 192
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 193
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 194
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v6

    .line 216
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 217
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_PLAYBACK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 199
    :cond_3
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, f:Ljava/lang/String;
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    iget-object v0, v0, Lcom/phonegap/AudioHandler;->ctx:Lcom/phonegap/api/PhonegapActivity;

    invoke-virtual {v0}, Lcom/phonegap/api/PhonegapActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 202
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 207
    .end local v7           #f:Ljava/lang/String;
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 208
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 209
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 212
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/phonegap/AudioPlayer;->duration:J

    goto/16 :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 225
    :cond_5
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STARTING:I

    if-ne v0, v1, :cond_7

    .line 226
    :cond_6
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 227
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    goto/16 :goto_0

    .line 230
    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: startPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_RESUME_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 4
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 104
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioPlayer Error: Can\'t record in play mode."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_PLAY_MODE_SET:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 110
    iput-object p1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 111
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 112
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 113
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 114
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 115
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 118
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 119
    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v1}, Lcom/phonegap/AudioPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 126
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STARTING_RECORDING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "AudioPlayer Error: Already recording."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_ALREADY_RECORDING:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 256
    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 258
    sget v0, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: stopPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/phonegap/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/phonegap/AudioPlayer;->handler:Lcom/phonegap/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneGap.Media.onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_ERROR_STOP_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phonegap/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 152
    :try_start_0
    iget v1, p0, Lcom/phonegap/AudioPlayer;->state:I

    sget v2, Lcom/phonegap/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v1, v2, :cond_0

    .line 153
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 154
    sget v1, Lcom/phonegap/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v1}, Lcom/phonegap/AudioPlayer;->setState(I)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/phonegap/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/phonegap/AudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
