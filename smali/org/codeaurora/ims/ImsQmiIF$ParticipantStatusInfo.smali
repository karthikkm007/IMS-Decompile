.class public final Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParticipantStatusInfo"
.end annotation


# static fields
.field public static final CALLID_FIELD_NUMBER:I = 0x1

.field public static final ISECT_FIELD_NUMBER:I = 0x5

.field public static final OPERATION_FIELD_NUMBER:I = 0x2

.field public static final PARTICIPANTURI_FIELD_NUMBER:I = 0x4

.field public static final SIPSTATUS_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private callId_:I

.field private hasCallId:Z

.field private hasIsEct:Z

.field private hasOperation:Z

.field private hasParticipantUri:Z

.field private hasSipStatus:Z

.field private isEct_:Z

.field private operation_:I

.field private participantUri_:Ljava/lang/String;

.field private sipStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return-object p0
.end method

.method public clearCallId()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    return-object p0
.end method

.method public clearIsEct()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    return-object p0
.end method

.method public clearOperation()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    return-object p0
.end method

.method public clearParticipantUri()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    return-object p0
.end method

.method public clearSipStatus()Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return v0
.end method

.method public getCallId()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    return v0
.end method

.method public getIsEct()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    return v0
.end method

.method public getOperation()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    return v0
.end method

.method public getParticipantUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->cachedSize:I

    return v0
.end method

.method public getSipStatus()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    return v0
.end method

.method public hasCallId()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    return v0
.end method

.method public hasIsEct()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    return v0
.end method

.method public hasOperation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    return v0
.end method

.method public hasParticipantUri()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    return v0
.end method

.method public hasSipStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1d -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setCallId(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->callId_:I

    return-object p0
.end method

.method public setIsEct(Z)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct:Z

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->isEct_:Z

    return-object p0
.end method

.method public setOperation(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->operation_:I

    return-object p0
.end method

.method public setParticipantUri(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->participantUri_:Ljava/lang/String;

    return-object p0
.end method

.method public setSipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->sipStatus_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasCallId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getCallId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getOperation()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasSipStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getSipStatus()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasParticipantUri()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getParticipantUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->hasIsEct()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ParticipantStatusInfo;->getIsEct()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    :cond_4
    return-void
.end method
