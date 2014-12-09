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

    iget-object v1, p1, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

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
    .line 411
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
    .line 440
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    if-eq v0, p1, :cond_0

    .line 441
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

    .line 444
    :cond_0
    iput p1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    .line 445
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 101
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 103
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 106
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 108
    :cond_2
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lorg/apache/cordova/AudioPlayer;->stopRecording()V

    .line 110
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 111
    iput-object v2, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 113
    :cond_3
    return-void
.end method

.method public getCurrentPosition()J
    .locals 5

    .prologue
    .line 320
    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v1, v2, :cond_1

    .line 321
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 322
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

    .line 323
    int-to-long v1, v0

    .line 326
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
    .line 357
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 358
    const/high16 v0, -0x4000

    .line 373
    :goto_0
    return v0

    .line 362
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 363
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 369
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->startPlaying(Ljava/lang/String;)V

    .line 373
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    return v0
.end method

.method public isStreaming(Ljava/lang/String;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 338
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    const/4 v0, 0x1

    .line 342
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
    .line 158
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, f:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
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

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v3, v3, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

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
    .line 311
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 312
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mPlayer"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 423
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

    .line 426
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 427
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 430
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

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mPlayer"

    .prologue
    .line 384
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 387
    iget-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 393
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 397
    :cond_0
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    .line 398
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/AudioPlayer;->prepareOnly:Z

    .line 401
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

    .line 403
    return-void
.end method

.method public pausePlaying()V
    .locals 3

    .prologue
    .line 281
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 283
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 289
    :goto_0
    return-void

    .line 286
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

    .line 287
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
    .line 268
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 270
    const-string v0, "AudioPlayer"

    const-string v1, "Send a onStatus update for the new seek"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
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

    .line 273
    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 463
    return-void
.end method

.method public startPlaying(Ljava/lang/String;)V
    .locals 11
    .parameter "file"

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "AudioPlayer"

    const-string v1, "AudioPlayer Error: Can\'t play in record mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
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

    .line 262
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    if-ne v0, v1, :cond_6

    .line 201
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 208
    :goto_1
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 211
    invoke-virtual {p0, p1}, Lorg/apache/cordova/AudioPlayer;->isStreaming(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 214
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 215
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 216
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v6

    .line 244
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
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

    .line 206
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    goto :goto_1

    .line 221
    :cond_3
    const-string v0, "/android_asset/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 223
    .local v7, f:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->handler:Lorg/apache/cordova/AudioHandler;

    iget-object v0, v0, Lorg/apache/cordova/AudioHandler;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 224
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 236
    .end local v7           #f:Ljava/lang/String;
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    :goto_2
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 237
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 238
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 241
    invoke-direct {p0}, Lorg/apache/cordova/AudioPlayer;->getDurationInSeconds()F

    move-result v0

    iput v0, p0, Lorg/apache/cordova/AudioPlayer;->duration:F

    goto/16 :goto_0

    .line 227
    :cond_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v10, fp:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 230
    .local v9, fileInputStream:Ljava/io/FileInputStream;
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_2

    .line 233
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

    .line 253
    .end local v10           #fp:Ljava/io/File;
    :cond_6
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STARTING:I

    if-ne v0, v1, :cond_8

    .line 254
    :cond_7
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 255
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    goto/16 :goto_0

    .line 258
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

    .line 259
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

    .line 121
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Can\'t record in play mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
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

    .line 149
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_1

    .line 127
    iput-object p1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    .line 128
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    .line 129
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 130
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 131
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 132
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lorg/apache/cordova/AudioPlayer;->tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 134
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 135
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 136
    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 143
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

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 146
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const-string v1, "AudioPlayer"

    const-string v2, "AudioPlayer Error: Already recording."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
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
    .line 295
    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_PAUSED:I

    if-ne v0, v1, :cond_1

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/AudioPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 297
    sget v0, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 303
    :goto_0
    return-void

    .line 300
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

    .line 301
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
    .line 172
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 174
    :try_start_0
    iget v1, p0, Lorg/apache/cordova/AudioPlayer;->state:I

    sget v2, Lorg/apache/cordova/AudioPlayer;->MEDIA_RUNNING:I

    if-ne v1, v2, :cond_0

    .line 175
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 176
    sget v1, Lorg/apache/cordova/AudioPlayer;->MEDIA_STOPPED:I

    invoke-direct {p0, v1}, Lorg/apache/cordova/AudioPlayer;->setState(I)V

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/AudioPlayer;->audioFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/cordova/AudioPlayer;->moveFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
