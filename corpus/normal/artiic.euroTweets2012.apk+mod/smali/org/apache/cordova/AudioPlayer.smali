.class public Lorg/apache/cordova/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioPlayer"

.field private static MEDIA_DURATION:I

.field private static MEDIA_ERROR:I

.field private static MEDIA_ERR_ABORTED:I

.field private static MEDIA_ERR_DECODE:I

.field private static MEDIA_ERR_NETWORK:I

.field private static MEDIA_ERR_NONE_ACTIVE:I

.field private static MEDIA_ERR_NONE_SUPPORTED:I

.field public static MEDIA_NONE:I

.field public static MEDIA_PAUSED:I

.field private static MEDIA_POSITION:I

.field public static MEDIA_RUNNING:I

.field public static MEDIA_STARTING:I

.field private static MEDIA_STATE:I

.field public static MEDIA_STOPPED:I


# instance fields
.field private audioFile:Ljava/lang/String;

.field private duration:F

.field private handler:Lorg/apache/cordova/AudioHandler;

.field private id:Ljava/lang/String;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private prepareOnly:Z

.field private recorder:Landroid/media/MediaRecorder;

.field private state:I

.field private tempFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 48
    sput v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_NONE:I

    .line 49
    sput v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    .line 50
    sput v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    .line 51
    sput v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    .line 52
    sput v5, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    .line 55
    sput v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STATE:I

    .line 56
    sput v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_DURATION:I

    .line 57
    sput v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    .line 58
    const/16 v0, 0x9

    sput v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    .line 61
    sput v4, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    .line 62
    sput v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    .line 63
    sput v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NETWORK:I

    .line 64
    sput v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_DECODE:I

    .line 65
    sput v5, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_SUPPORTED:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/AudioHandler;Ljava/lang/String;)V
    .locals 2
    .parameter "handler"
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_NONE:I

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    .line 70
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 71
    const/high16 v0, -0x4080

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    .line 73
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 74
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 86
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    .line 87
    iput-object p2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmprecording.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache/tmprecording.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    goto :goto_0
.end method

.method private getDurationInSeconds()F
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    return v0
.end method

.method private setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 443
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    if-eq v0, p1, :cond_0

    .line 444
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_STATE:I

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

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 447
    :cond_0
    iput p1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    .line 448
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 102
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 104
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 106
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 107
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 109
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 111
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 112
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 114
    :cond_3
    return-void
.end method

.method public getCurrentPosition()J
    .locals 5

    .prologue
    .line 323
    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v1, v2, :cond_1

    .line 324
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 325
    .local v0, curPos:I
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 326
    int-to-long v1, v0

    .line 329
    .end local v0           #curPos:I
    :goto_0
    return-wide v1

    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getDuration(Ljava/lang/String;)F
    .locals 1
    .parameter "file"

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 361
    const/high16 v0, -0x4000

    .line 376
    :goto_0
    return v0

    .line 365
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 366
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    return v0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 341
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    :cond_0
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveFile(Ljava/lang/String;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, f:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v3, v3, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cache/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mPlayer"

    .prologue
    .line 314
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 315
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mPlayer"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 426
    const-string v0, "AudioPlayer"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 430
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 433
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mPlayer"

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 390
    iget-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 396
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 404
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_DURATION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 284
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 286
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: pausePlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekToPlaying(I)V
    .locals 4
    .parameter "milliseconds"

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 273
    const-string v0, "AudioPlayer"

    const-string v1, "Send a onStatus update for the new seek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_POSITION:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 466
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 11
    .parameter "file"

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "AudioPlayer"

    const-string v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    if-ne v0, v1, :cond_6

    .line 203
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 210
    :goto_1
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 214
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 216
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 217
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 218
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v6

    .line 247
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 223
    :cond_3
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, f:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->ctx:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 226
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 238
    .end local v7           #f:Ljava/lang/String;
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 239
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 240
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 243
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto/16 :goto_0

    .line 229
    :cond_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v10, fp:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 232
    .local v9, fileInputStream:Ljava/io/FileInputStream;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_2

    .line 235
    .end local v9           #fileInputStream:Ljava/io/FileInputStream;
    :cond_5
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

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

    .line 256
    .end local v10           #fp:Ljava/io/File;
    :cond_6
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    if-ne v0, v1, :cond_8

    .line 257
    :cond_7
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 258
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    goto/16 :goto_0

    .line 261
    :cond_8
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: startPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 4
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Can\'t record in play mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 129
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 130
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 131
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 132
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 133
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 134
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 137
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 138
    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 145
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Already recording."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", { \"code\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_ABORTED:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public stopPlaying()V
    .locals 3

    .prologue
    .line 298
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 299
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 300
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v0, "AudioPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer Error: stopPlaying() called during invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cordova.require(\'cordova/plugin/Media\').onStatus(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERROR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", { \"code\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_ERR_NONE_ACTIVE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "});"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/AudioHandler;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 176
    :try_start_0
    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v1, v2, :cond_0

    .line 177
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 178
    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 180
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/cordova/AudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
