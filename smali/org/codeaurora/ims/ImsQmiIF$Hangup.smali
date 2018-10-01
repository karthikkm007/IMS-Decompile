.class public final Lorg/codeaurora/ims/ImsQmiIF$Hangup;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangup"
.end annotation


# static fields
.field public static final CONF_ID_FIELD_NUMBER:I = 0x4

.field public static final CONN_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CONN_URI_FIELD_NUMBER:I = 0x3

.field public static final FAILCAUSERESPONSE_FIELD_NUMBER:I = 0x5

.field public static final MULTI_PARTY_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private confId_:I

.field private connIndex_:I

.field private connUri_:Ljava/lang/String;

.field private failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

.field private hasConfId:Z

.field private hasConnIndex:Z

.field private hasConnUri:Z

.field private hasFailCauseResponse:Z

.field private hasMultiParty:Z

.field private multiParty_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return-object p0
.end method

.method public clearConfId()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return-object p0
.end method

.method public clearConnIndex()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return-object p0
.end method

.method public clearConnUri()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object p0
.end method

.method public clearFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object p0
.end method

.method public clearMultiParty()Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return v0
.end method

.method public getConfId()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return v0
.end method

.method public getConnIndex()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return v0
.end method

.method public getConnUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object v0
.end method

.method public getMultiParty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->cachedSize:I

    return v0
.end method

.method public hasConfId()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    return v0
.end method

.method public hasConnIndex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    return v0
.end method

.method public hasConnUri()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    return v0
.end method

.method public hasFailCauseResponse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    return v0
.end method

.method public hasMultiParty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 3
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    :sswitch_5
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setConfId(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->confId_:I

    return-object p0
.end method

.method public setConnIndex(I)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connIndex_:I

    return-object p0
.end method

.method public setConnUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->connUri_:Ljava/lang/String;

    return-object p0
.end method

.method public setFailCauseResponse(Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->failCauseResponse_:Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    return-object p0
.end method

.method public setMultiParty(Z)Lorg/codeaurora/ims/ImsQmiIF$Hangup;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty:Z

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->multiParty_:Z

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasMultiParty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getMultiParty()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConnUri()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConnUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasConfId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getConfId()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->hasFailCauseResponse()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Hangup;->getFailCauseResponse()Lorg/codeaurora/ims/ImsQmiIF$CallFailCauseResponse;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_4
    return-void
.end method
