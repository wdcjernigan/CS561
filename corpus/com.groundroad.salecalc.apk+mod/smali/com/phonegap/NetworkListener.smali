.class public Lcom/phonegap/NetworkListener;
.super Ljava/lang/Object;
.source "NetworkListener.java"

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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 37
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 48
    iput-object p3, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    .line 49
    iput-object p1, p0, Lcom/phonegap/NetworkListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    .line 50
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mCtx:Lcom/phonegap/api/PhonegapActivity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lcom/phonegap/api/PhonegapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    .line 51
    iput-boolean v2, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 52
    invoke-virtual {p0, p2}, Lcom/phonegap/NetworkListener;->start(I)V

    .line 53
    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    .line 62
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 114
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "NetworkListener: The location has been updated!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    .line 116
    iput-object p1, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    .line 120
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v0, v0, Lcom/phonegap/GeoListener;->mGps:Lcom/phonegap/GpsListener;

    invoke-virtual {v0}, Lcom/phonegap/GpsListener;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    invoke-virtual {v0, p1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 83
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The provider "

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

    .line 84
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 96
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: The status of the provider "

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

    .line 97
    if-nez p2, :cond_0

    .line 98
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

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

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 101
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

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

    .line 104
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkListener: "

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
    .line 131
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 133
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, p1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/phonegap/NetworkListener;->getLocation()Landroid/location/Location;

    .line 137
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->hasData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v0, v0, Lcom/phonegap/GeoListener;->mGps:Lcom/phonegap/GpsListener;

    invoke-virtual {v0}, Lcom/phonegap/GpsListener;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->owner:Lcom/phonegap/GeoListener;

    iget-object v1, p0, Lcom/phonegap/NetworkListener;->cLoc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lcom/phonegap/GeoListener;->success(Landroid/location/Location;)V

    .line 141
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/phonegap/NetworkListener;->mLocMan:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/phonegap/NetworkListener;->running:Z

    .line 151
    return-void
.end method
