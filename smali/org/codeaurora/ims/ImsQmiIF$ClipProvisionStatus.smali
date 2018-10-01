.class public final Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClipProvisionStatus"
.end annotation


# static fields
.field public static final CLIP_STATUS_FIELD_NUMBER:I = 0x1

.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private clipStatus_:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private hasClipStatus:Z

.field private hasErrorDetails:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return-object p0
.end method

.method public clearClipStatus()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return v0
.end method

.method public getClipStatus()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->cachedSize:I

    return v0
.end method

.method public hasClipStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    goto :goto_0

    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setClipStatus(I)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->clipStatus_:I

    return-object p0
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasClipStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getClipStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$ClipProvisionStatus;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_1
    return-void
.end method
