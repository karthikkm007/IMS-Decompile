.class public final Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressInfo"
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x1

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x5

.field public static final COUNTRY_FIELD_NUMBER:I = 0x3

.field public static final POSTALCODE_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private city_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private country_:Ljava/lang/String;

.field private hasCity:Z

.field private hasCountry:Z

.field private hasCountryCode:Z

.field private hasPostalCode:Z

.field private hasState:Z

.field private postalCode_:Ljava/lang/String;

.field private state_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCity()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearState()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCountry()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearPostalCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->clearCountryCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    return-object p0
.end method

.method public clearCity()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    return-object p0
.end method

.method public clearCountry()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    return-object p0
.end method

.method public clearCountryCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    return-object p0
.end method

.method public clearPostalCode()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    return-object p0
.end method

.method public clearState()Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getState()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->cachedSize:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    return-object v0
.end method

.method public hasCity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    return v0
.end method

.method public hasCountry()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    return v0
.end method

.method public hasPostalCode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 2
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setCity(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->city_:Ljava/lang/String;

    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->country_:Ljava/lang/String;

    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->countryCode_:Ljava/lang/String;

    return-object p0
.end method

.method public setPostalCode(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->postalCode_:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->state_:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasPostalCode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->hasCountryCode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$AddressInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
