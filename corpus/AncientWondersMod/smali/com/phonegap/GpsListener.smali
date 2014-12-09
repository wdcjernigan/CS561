.class public Lcom/phonegap/GpsListener;
.super Ljava/lang/Object;
.source "GpsListener.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private cLoc:Landroid/location/Location;

.field private hasData:Z

.field private mCtx:Lcom/phonegap/api/PhonegapActivity;

.field private mLocMan:Landroid/location/LocationManager;

.field private owner:Lcom/phonegap/GeoListener;

.field private running:Z


# direct methods
.method public constructor <init>(Lcom/phonegap/api/PhonegapActivity;ILcom/phonegap/GeoListener;)V
    .locals 3
    .parameter "ctx"
    .parameter "interval"
    .parameter "m"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v2, p0, Lcom/phonegap/GpsListener;->hasData:Z

    .line 30
    iput-boolean v2, p0, Lcom/phonegap/GpsListener;->running:Z

    .line 41
    iput-object p3, p0, Lcom/phonegap/GpsListener;->owner:Lcom/phonegap/GeoListener;

    .line 42
    iput-object p1, p0, Lcom/phonegap/GpsListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    .line 43
    iget-object v0, p0, Lcom/phonegap/GpsListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/phonegap/GpsListener;->mLocMan:Landroid/location/LocationManager;

    .line 44
    iput-boolean v2, p0, Lcom/phonegap/GpsListener;->running:Z

    .line 45
    invoke-virtual {p0, p2}, Lcom/phonegap/GpsListener;->start(I)V

    .line 46
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/phonegap/GpsListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/GpsListener;->cLoc:Landroid/location/Location;

    .line 55
    iget-object v0, p0, Lcom/phonegap/GpsListener;->cLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/GpsListener;->hasData:Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/phonegap/GpsListener;->cLoc:Landroid/location/Location;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/phonegap/GpsListener;->hasData:Z

    return v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 108
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "GpsListener: The location has been updated!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/GpsListener;->hasData:Z

    .line 110
    iput-object p1, p0, Lcom/phonegap/GpsListener;->cLoc:Landroid/location/Location;

    .line 111
    iget-object v0, p0, Lcom/phonegap/GpsListener;->owner:Lcom/phonegap/GeoListener;

    invoke-virtual {v0, p1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 112
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/phonegap/GpsListener;->owner:Lcom/phonegap/GeoListener;

    sget v1, Lcom/phonegap/GeoListener;->POSITION_UNAVAILABLE:I

    const-string v2, "GPS provider disabled."

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/GeoListener;->fail(ILjava/lang/String;)V

    .line 68
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 76
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsListener: The provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsListener: The status of the provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    if-nez p2, :cond_0

    .line 91
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is OUT OF SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/phonegap/GpsListener;->owner:Lcom/phonegap/GeoListener;

    sget v1, Lcom/phonegap/GeoListener;->POSITION_UNAVAILABLE:I

    const-string v2, "GPS out of service."

    invoke-virtual {v0, v1, v2}, Lcom/phonegap/GeoListener;->fail(ILjava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GpsListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is Available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 6
    .parameter "interval"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/phonegap/GpsListener;->running:Z

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/GpsListener;->running:Z

    .line 131
    iget-object v0, p0, Lcom/phonegap/GpsListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, p1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/phonegap/GpsListener;->getLocation()Landroid/location/Location;

    .line 135
    iget-boolean v0, p0, Lcom/phonegap/GpsListener;->hasData:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/phonegap/GpsListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v1, p0, Lcom/phonegap/GpsListener;->cLoc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 139
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/phonegap/GpsListener;->running:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/phonegap/GpsListener;->mLocMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 148
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/GpsListener;->running:Z

    .line 149
    return-void
.end method
