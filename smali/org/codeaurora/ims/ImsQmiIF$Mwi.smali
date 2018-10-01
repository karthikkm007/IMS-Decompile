.class public final Lorg/codeaurora/ims/ImsQmiIF$Mwi;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mwi"
.end annotation


# static fields
.field public static final MWIMSGDETAIL_FIELD_NUMBER:I = 0x3

.field public static final MWIMSGSUMMARY_FIELD_NUMBER:I = 0x1

.field public static final UEADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasUeAddress:Z

.field private mwiMsgDetail_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field private mwiMsgSummary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field private ueAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    return-object v0
.end method


# virtual methods
.method public addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return-object p0
.end method

.method public clearMwiMsgDetail()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object p0
.end method

.method public clearMwiMsgSummary()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object p0
.end method

.method public clearUeAddress()Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v0
.end method

.method public getMwiMsgDetail(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    return-object v0
.end method

.method public getMwiMsgDetailCount()I
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgDetailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    return-object v0
.end method

.method public getMwiMsgSummary(I)Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    return-object v0
.end method

.method public getMwiMsgSummaryCount()I
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMwiMsgSummaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    const/4 v4, 0x1

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    iput v3, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->cachedSize:I

    return v3
.end method

.method public getUeAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUeAddress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    new-instance v2, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    invoke-direct {v2}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgSummary(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    :sswitch_3
    new-instance v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->addMwiMsgDetail(Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMwiMsgDetail(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgDetail_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMwiMsgSummary(ILorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->mwiMsgSummary_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUeAddress(Ljava/lang/String;)Lorg/codeaurora/ims/ImsQmiIF$Mwi;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress:Z

    iput-object p1, p0, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->ueAddress_:Ljava/lang/String;

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgSummaryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageSummary;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->hasUeAddress()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getUeAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$Mwi;->getMwiMsgDetailList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$MwiMessageDetails;

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    :cond_2
    return-void
.end method
