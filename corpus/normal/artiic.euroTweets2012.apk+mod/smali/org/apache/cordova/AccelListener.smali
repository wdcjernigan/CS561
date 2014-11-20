.class public Lorg/apache/cordova/AccelListener;
.super Lorg/apache/cordova/api/Plugin;
.source "AccelListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static ERROR_FAILED_TO_START:I

.field public static RUNNING:I

.field public static STARTING:I

.field public static STOPPED:I


# instance fields
.field private accuracy:I

.field private callbackId:Ljava/lang/String;

.field private mSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private status:I

.field private timestamp:J

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/AccelListener;->STOPPED:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/AccelListener;->STARTING:I

    .line 51
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/AccelListener;->RUNNING:I

    .line 52
    const/4 v0, 0x3

    sput v0, Lorg/apache/cordova/AccelListener;->ERROR_FAILED_TO_START:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/AccelListener;->accuracy:I

    .line 68
    iput v1, p0, Lorg/apache/cordova/AccelListener;->x:F

    .line 69
    iput v1, p0, Lorg/apache/cordova/AccelListener;->y:F

    .line 70
    iput v1, p0, Lorg/apache/cordova/AccelListener;->z:F

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/cordova/AccelListener;->timestamp:J

    .line 72
    sget v0, Lorg/apache/cordova/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 73
    return-void
.end method

.method private fail(ILjava/lang/String;)V
    .locals 4
    .parameter "code"
    .parameter "message"

    .prologue
    .line 238
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v2, errorObj:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "code"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v3, "message"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v3, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 246
    .local v1, err:Lorg/apache/cordova/api/PluginResult;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 248
    iget-object v3, p0, Lorg/apache/cordova/AccelListener;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/apache/cordova/AccelListener;->error(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 249
    return-void

    .line 242
    .end local v1           #err:Lorg/apache/cordova/api/PluginResult;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private getAccelerationJSON()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v1, r:Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "x"

    iget v3, p0, Lorg/apache/cordova/AccelListener;->x:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 267
    const-string v2, "y"

    iget v3, p0, Lorg/apache/cordova/AccelListener;->y:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 268
    const-string v2, "z"

    iget v3, p0, Lorg/apache/cordova/AccelListener;->z:F

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 269
    const-string v2, "timestamp"

    iget-wide v3, p0, Lorg/apache/cordova/AccelListener;->timestamp:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 260
    iput p1, p0, Lorg/apache/cordova/AccelListener;->status:I

    .line 261
    return-void
.end method

.method private start()I
    .locals 11

    .prologue
    const-wide/16 v9, 0x64

    const-wide/16 v7, 0x0

    .line 138
    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v5, Lorg/apache/cordova/AccelListener;->RUNNING:I

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v5, Lorg/apache/cordova/AccelListener;->STARTING:I

    if-ne v4, v5, :cond_1

    .line 139
    :cond_0
    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    .line 172
    :goto_0
    return v4

    .line 142
    :cond_1
    sget v4, Lorg/apache/cordova/AccelListener;->STARTING:I

    invoke-direct {p0, v4}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 145
    iget-object v4, p0, Lorg/apache/cordova/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 148
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 149
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    iput-object v4, p0, Lorg/apache/cordova/AccelListener;->mSensor:Landroid/hardware/Sensor;

    .line 150
    iget-object v4, p0, Lorg/apache/cordova/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lorg/apache/cordova/AccelListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v6, 0x2

    invoke-virtual {v4, p0, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 151
    sget v4, Lorg/apache/cordova/AccelListener;->STARTING:I

    invoke-direct {p0, v4}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 159
    const-wide/16 v2, 0x7d0

    .line 160
    .local v2, timeout:J
    :goto_1
    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v5, Lorg/apache/cordova/AccelListener;->STARTING:I

    if-ne v4, v5, :cond_3

    cmp-long v4, v2, v7

    if-lez v4, :cond_3

    .line 161
    sub-long/2addr v2, v9

    .line 163
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 153
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #timeout:J
    :cond_2
    sget v4, Lorg/apache/cordova/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v4}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 154
    sget v4, Lorg/apache/cordova/AccelListener;->ERROR_FAILED_TO_START:I

    const-string v5, "No sensors found to register accelerometer listening to."

    invoke-direct {p0, v4, v5}, Lorg/apache/cordova/AccelListener;->fail(ILjava/lang/String;)V

    .line 155
    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    goto :goto_0

    .line 168
    .restart local v2       #timeout:J
    :cond_3
    cmp-long v4, v2, v7

    if-nez v4, :cond_4

    .line 169
    sget v4, Lorg/apache/cordova/AccelListener;->ERROR_FAILED_TO_START:I

    invoke-direct {p0, v4}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 170
    sget v4, Lorg/apache/cordova/AccelListener;->ERROR_FAILED_TO_START:I

    const-string v5, "Accelerometer could not be started."

    invoke-direct {p0, v4, v5}, Lorg/apache/cordova/AccelListener;->fail(ILjava/lang/String;)V

    .line 172
    :cond_4
    iget v4, p0, Lorg/apache/cordova/AccelListener;->status:I

    goto :goto_0
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 179
    iget v0, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v1, Lorg/apache/cordova/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lorg/apache/cordova/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 182
    :cond_0
    sget v0, Lorg/apache/cordova/AccelListener;->STOPPED:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/cordova/AccelListener;->accuracy:I

    .line 184
    return-void
.end method

.method private win()V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0}, Lorg/apache/cordova/AccelListener;->getAccelerationJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 254
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 256
    iget-object v1, p0, Lorg/apache/cordova/AccelListener;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/AccelListener;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 257
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 5
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 95
    sget-object v2, Lorg/apache/cordova/api/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/api/PluginResult$Status;

    .line 96
    .local v2, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v0, ""

    .line 97
    .local v0, message:Ljava/lang/String;
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 98
    .local v1, result:Lorg/apache/cordova/api/PluginResult;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 100
    const-string v3, "start"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    iput-object p3, p0, Lorg/apache/cordova/AccelListener;->callbackId:Ljava/lang/String;

    .line 102
    iget v3, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v4, Lorg/apache/cordova/AccelListener;->RUNNING:I

    if-eq v3, v4, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/apache/cordova/AccelListener;->start()I

    .line 116
    .end local v1           #result:Lorg/apache/cordova/api/PluginResult;
    :cond_0
    :goto_0
    return-object v1

    .line 108
    .restart local v1       #result:Lorg/apache/cordova/api/PluginResult;
    :cond_1
    const-string v3, "stop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    iget v3, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v4, Lorg/apache/cordova/AccelListener;->RUNNING:I

    if-ne v3, v4, :cond_0

    .line 110
    invoke-direct {p0}, Lorg/apache/cordova/AccelListener;->stop()V

    goto :goto_0

    .line 114
    :cond_2
    new-instance v1, Lorg/apache/cordova/api/PluginResult;

    .end local v1           #result:Lorg/apache/cordova/api/PluginResult;
    sget-object v3, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v1, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget v0, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v1, Lorg/apache/cordova/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 202
    iput p2, p0, Lorg/apache/cordova/AccelListener;->accuracy:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/apache/cordova/AccelListener;->stop()V

    .line 125
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 212
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget v0, p0, Lorg/apache/cordova/AccelListener;->status:I

    sget v1, Lorg/apache/cordova/AccelListener;->STOPPED:I

    if-eq v0, v1, :cond_0

    .line 221
    sget v0, Lorg/apache/cordova/AccelListener;->RUNNING:I

    invoke-direct {p0, v0}, Lorg/apache/cordova/AccelListener;->setStatus(I)V

    .line 223
    iget v0, p0, Lorg/apache/cordova/AccelListener;->accuracy:I

    if-lt v0, v3, :cond_0

    .line 226
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/cordova/AccelListener;->timestamp:J

    .line 227
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/cordova/AccelListener;->x:F

    .line 228
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/cordova/AccelListener;->y:F

    .line 229
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iput v0, p0, Lorg/apache/cordova/AccelListener;->z:F

    .line 231
    invoke-direct {p0}, Lorg/apache/cordova/AccelListener;->win()V

    goto :goto_0
.end method

.method public setContext(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lorg/apache/cordova/api/Plugin;->setContext(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 83
    const-string v0, "sensor"

    invoke-interface {p1, v0}, Lorg/apache/cordova/api/CordovaInterface;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/apache/cordova/AccelListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 84
    return-void
.end method
