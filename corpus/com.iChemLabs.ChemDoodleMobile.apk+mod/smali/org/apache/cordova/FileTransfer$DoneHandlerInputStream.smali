.class final Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;
.super Ljava/io/FilterInputStream;
.source "FileTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/FileTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoneHandlerInputStream"
.end annotation


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 112
    iget-boolean v2, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 113
    .local v0, result:I
    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    .line 114
    return v0

    .line 112
    .end local v0           #result:I
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    goto :goto_0

    .line 113
    .restart local v0       #result:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public read([B)I
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 119
    iget-boolean v2, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 120
    .local v0, result:I
    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    .line 121
    return v0

    .line 119
    .end local v0           #result:I
    :cond_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    goto :goto_0

    .line 120
    .restart local v0       #result:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public read([BII)I
    .locals 3
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 126
    iget-boolean v2, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 127
    .local v0, result:I
    :goto_0
    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lorg/apache/cordova/FileTransfer$DoneHandlerInputStream;->done:Z

    .line 128
    return v0

    .line 126
    .end local v0           #result:I
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 127
    .restart local v0       #result:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
