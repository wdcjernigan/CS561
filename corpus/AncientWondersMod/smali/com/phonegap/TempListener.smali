.class public Lcom/phonegap/TempListener;
.super Lcom/phonegap/api/Plugin;
.source "TempListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field mSensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/phonegap/api/Plugin;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lcom/phonegap/api/PluginResult;
    .locals 3
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 55
    sget-object v1, Lcom/phonegap/api/PluginResult$Status;->OK:Lcom/phonegap/api/PluginResult$Status;

    .line 56
    .local v1, status:Lcom/phonegap/api/PluginResult$Status;
    const-string v0, ""

    .line 58
    .local v0, result:Ljava/lang/String;
    const-string v2, "start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/phonegap/TempListener;->start()V

    .line 64
    :cond_0
    :goto_0
    new-instance v2, Lcom/phonegap/api/PluginResult;

    invoke-direct {v2, v1, v0}, Lcom/phonegap/api/PluginResult;-><init>(Lcom/phonegap/api/PluginResult$Status;Ljava/lang/String;)V

    return-object v2

    .line 61
    :cond_1
    const-string v2, "stop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/phonegap/TempListener;->stop()V

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 93
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/phonegap/TempListener;->stop()V

    .line 73
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 97
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 98
    .local v0, temp:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gotTemp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/phonegap/TempListener;->sendJavascript(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setContext(Lcom/phonegap/api/PhonegapActivity;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/phonegap/api/Plugin;->setContext(Lcom/phonegap/api/PhonegapActivity;)V

    .line 43
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/phonegap/TempListener;->sensorManager:Landroid/hardware/SensorManager;

    .line 44
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/phonegap/TempListener;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iput-object v1, p0, Lcom/phonegap/TempListener;->mSensor:Landroid/hardware/Sensor;

    .line 83
    iget-object v1, p0, Lcom/phonegap/TempListener;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/phonegap/TempListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 85
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/phonegap/TempListener;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 89
    return-void
.end method
