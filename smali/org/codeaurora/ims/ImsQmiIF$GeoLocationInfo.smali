.class public final Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoLocationInfo"
.end annotation


# static fields
.field public static final ADDRESSINFO_FIELD_NUMBER:I = 0x3

.field public static final LAT_FIELD_NUMBER:I = 0x1

.field public static final LON_FIELD_NUMBER:I = 0x2


# instance fields
.field private addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

.field private cachedSize:I

.field private hasAddressInfo:Z

.field private hasLat:Z

.field private hasLon:Z

.field private lat_:D

.field private lon_:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearLat()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearLon()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->clearAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    return-object p0
.end method

.method public clearAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object p0
.end method

.method public clearLat()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    return-object p0
.end method

.method public clearLon()Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    return-object p0
.end method

.method public getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    return v0
.end method

.method public getLat()D
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    iget-wide v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v2

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->cachedSize:I

    return v0
.end method

.method public hasAddressInfo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    return v0
.end method

.method public hasLat()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    return v0
.end method

.method public hasLon()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setAddressInfo(Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->addressInfo_:Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object p0
.end method

.method public setLat(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat:Z

    iput-wide p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lat_:D

    return-object p0
.end method

.method public setLon(D)Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon:Z

    iput-wide p1, p0, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->lon_:D

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLat()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLat()D

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasLon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getLon()D

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->hasAddressInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$GeoLocationInfo;->getAddressInfo()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_2
    return-void
.end method
