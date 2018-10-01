.class public final Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MwiMessageSummary"
.end annotation


# static fields
.field public static final MESSAGETYPE_FIELD_NUMBER:I = 0x1

.field public static final NEWMESSAGE_FIELD_NUMBER:I = 0x2

.field public static final NEWURGENT_FIELD_NUMBER:I = 0x4

.field public static final OLDMESSAGE_FIELD_NUMBER:I = 0x3

.field public static final OLDURGENT_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private hasMessageType:Z

.field private hasNewMessage:Z

.field private hasNewUrgent:Z

.field private hasOldMessage:Z

.field private hasOldUrgent:Z

.field private messageType_:I

.field private newMessage_:I

.field private newUrgent_:I

.field private oldMessage_:I

.field private oldUrgent_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return-object p0
.end method

.method public clearMessageType()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    return-object p0
.end method

.method public clearNewMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    return-object p0
.end method

.method public clearNewUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    return-object p0
.end method

.method public clearOldMessage()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    return-object p0
.end method

.method public clearOldUrgent()Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    return v0
.end method

.method public getNewMessage()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    return v0
.end method

.method public getNewUrgent()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    return v0
.end method

.method public getOldMessage()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    return v0
.end method

.method public getOldUrgent()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->cachedSize:I

    return v0
.end method

.method public hasMessageType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    return v0
.end method

.method public hasNewMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    return v0
.end method

.method public hasNewUrgent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    return v0
.end method

.method public hasOldMessage()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    return v0
.end method

.method public hasOldUrgent()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
    .end sparse-switch
.end method

.method public setMessageType(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->messageType_:I

    return-object p0
.end method

.method public setNewMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newMessage_:I

    return-object p0
.end method

.method public setNewUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->newUrgent_:I

    return-object p0
.end method

.method public setOldMessage(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldMessage_:I

    return-object p0
.end method

.method public setOldUrgent(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->oldUrgent_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasMessageType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewMessage()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldMessage()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasNewUrgent()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getNewUrgent()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->hasOldUrgent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;->getOldUrgent()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_4
    return-void
.end method
