.class public final Lorg/codeaurora/ims/ImsQmiIF$Info;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation


# static fields
.field public static final ACCTECHSTATUS_FIELD_NUMBER:I = 0x7

.field public static final CALLTYPE_FIELD_NUMBER:I = 0x3

.field public static final ISVALID_FIELD_NUMBER:I = 0x1

.field public static final RESTRICTCAUSE_FIELD_NUMBER:I = 0x6

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final USERDATA_FIELD_NUMBER:I = 0x5


# instance fields
.field private accTechStatus_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private callType_:I

.field private hasCallType:Z

.field private hasIsValid:Z

.field private hasRestrictCause:Z

.field private hasStatus:Z

.field private hasType:Z

.field private hasUserdata:Z

.field private isValid_:Z

.field private restrictCause_:I

.field private status_:I

.field private type_:I

.field private userdata_:Lcom/google/protobuf/micro/ByteStringMicro;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    iput v1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Info;

    return-object v0
.end method


# virtual methods
.method public addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return-object p0
.end method

.method public clearAccTechStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    return-object p0
.end method

.method public clearCallType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return-object p0
.end method

.method public clearIsValid()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return-object p0
.end method

.method public clearRestrictCause()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return-object p0
.end method

.method public clearStatus()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return-object p0
.end method

.method public clearType()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return-object p0
.end method

.method public clearUserdata()Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object p0
.end method

.method public getAccTechStatus(I)Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    return-object v0
.end method

.method public getAccTechStatusCount()I
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccTechStatusList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return v0
.end method

.method public getIsValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return v0
.end method

.method public getRestrictCause()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/lit8 v2, v3, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v3

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_6
    iput v2, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->cachedSize:I

    return v2
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return v0
.end method

.method public getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasCallType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    return v0
.end method

.method public hasIsValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    return v0
.end method

.method public hasRestrictCause()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    return v0
.end method

.method public hasUserdata()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Info;->setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    :sswitch_7
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Info;->addAccTechStatus(Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public setAccTechStatus(ILorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->accTechStatus_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setCallType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->callType_:I

    return-object p0
.end method

.method public setIsValid(Z)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid:Z

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->isValid_:Z

    return-object p0
.end method

.method public setRestrictCause(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->restrictCause_:I

    return-object p0
.end method

.method public setStatus(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->status_:I

    return-object p0
.end method

.method public setType(I)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->type_:I

    return-object p0
.end method

.method public setUserdata(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/codeaurora/ims/ImsQmiIF$Info;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Info;->userdata_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasIsValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getIsValid()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasCallType()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getCallType()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getStatus()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasUserdata()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getUserdata()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->hasRestrictCause()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getRestrictCause()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Info;->getAccTechStatusList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$StatusForAccessTech;

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    :cond_6
    return-void
.end method
