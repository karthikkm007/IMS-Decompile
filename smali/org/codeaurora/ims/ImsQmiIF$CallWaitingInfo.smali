.class public final Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallWaitingInfo"
.end annotation


# static fields
.field public static final ERRORDETAILS_FIELD_NUMBER:I = 0x3

.field public static final SERVICE_CLASS_FIELD_NUMBER:I = 0x2

.field public static final SERVICE_STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

.field private hasErrorDetails:Z

.field private hasServiceClass:Z

.field private hasServiceStatus:Z

.field private serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

.field private serviceStatus_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->clearServiceStatus()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    return-object p0
.end method

.method public clearErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasErrorDetails:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object p0
.end method

.method public clearServiceClass()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object p0
.end method

.method public clearServiceStatus()Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    return v0
.end method

.method public getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasErrorDetails()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->cachedSize:I

    return v0
.end method

.method public getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object v0
.end method

.method public getServiceStatus()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    return v0
.end method

.method public hasErrorDetails()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasErrorDetails:Z

    return v0
.end method

.method public hasServiceClass()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    return v0
.end method

.method public hasServiceStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    goto :goto_0

    :sswitch_2
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    goto :goto_0

    :sswitch_3
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setErrorDetails(Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasErrorDetails:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->errorDetails_:Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    return-object p0
.end method

.method public setServiceClass(Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceClass_:Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    return-object p0
.end method

.method public setServiceStatus(I)Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->serviceStatus_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceStatus()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasServiceClass()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getServiceClass()Lorg/codeaurora/ims/ImsQmiIF$ServiceClass;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->hasErrorDetails()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$CallWaitingInfo;->getErrorDetails()Lorg/codeaurora/ims/ImsQmiIF$SipErrorInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_2
    return-void
.end method
