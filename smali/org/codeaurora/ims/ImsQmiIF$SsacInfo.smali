.class public final Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ImsQmiIF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsQmiIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SsacInfo"
.end annotation


# static fields
.field public static final BARRINGFACTORVIDEOSIB_FIELD_NUMBER:I = 0x7

.field public static final BARRINGFACTORVIDEO_FIELD_NUMBER:I = 0x3

.field public static final BARRINGFACTORVOICESIB_FIELD_NUMBER:I = 0x5

.field public static final BARRINGFACTORVOICE_FIELD_NUMBER:I = 0x1

.field public static final BARRINGTIMEVIDEOSIB_FIELD_NUMBER:I = 0x8

.field public static final BARRINGTIMEVIDEO_FIELD_NUMBER:I = 0x4

.field public static final BARRINGTIMEVOICESIB_FIELD_NUMBER:I = 0x6

.field public static final BARRINGTIMEVOICE_FIELD_NUMBER:I = 0x2


# instance fields
.field private barringFactorVideoSib_:I

.field private barringFactorVideo_:I

.field private barringFactorVoiceSib_:I

.field private barringFactorVoice_:I

.field private barringTimeVideoSib_:I

.field private barringTimeVideo_:I

.field private barringTimeVoiceSib_:I

.field private barringTimeVoice_:I

.field private cachedSize:I

.field private hasBarringFactorVideo:Z

.field private hasBarringFactorVideoSib:Z

.field private hasBarringFactorVoice:Z

.field private hasBarringFactorVoiceSib:Z

.field private hasBarringTimeVideo:Z

.field private hasBarringTimeVideoSib:Z

.field private hasBarringTimeVoice:Z

.field private hasBarringTimeVoiceSib:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;-><init>()V

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return-object p0
.end method

.method public clearBarringFactorVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    return-object p0
.end method

.method public clearBarringFactorVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    return-object p0
.end method

.method public clearBarringFactorVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    return-object p0
.end method

.method public clearBarringFactorVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    return-object p0
.end method

.method public clearBarringTimeVideo()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    return-object p0
.end method

.method public clearBarringTimeVideoSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    return-object p0
.end method

.method public clearBarringTimeVoice()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    return-object p0
.end method

.method public clearBarringTimeVoiceSib()Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    return-object p0
.end method

.method public getBarringFactorVideo()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    return v0
.end method

.method public getBarringFactorVideoSib()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    return v0
.end method

.method public getBarringFactorVoice()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    return v0
.end method

.method public getBarringFactorVoiceSib()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    return v0
.end method

.method public getBarringTimeVideo()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    return v0
.end method

.method public getBarringTimeVideoSib()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    return v0
.end method

.method public getBarringTimeVoice()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    return v0
.end method

.method public getBarringTimeVoiceSib()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iput v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->cachedSize:I

    return v0
.end method

.method public hasBarringFactorVideo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    return v0
.end method

.method public hasBarringFactorVideoSib()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    return v0
.end method

.method public hasBarringFactorVoice()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    return v0
.end method

.method public hasBarringFactorVoiceSib()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    return v0
.end method

.method public hasBarringTimeVideo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    return v0
.end method

.method public hasBarringTimeVideoSib()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    return v0
.end method

.method public hasBarringTimeVoice()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    return v0
.end method

.method public hasBarringTimeVoiceSib()Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

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

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
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

    invoke-virtual {p0, p1, v0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
    .end sparse-switch
.end method

.method public setBarringFactorVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideo_:I

    return-object p0
.end method

.method public setBarringFactorVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVideoSib_:I

    return-object p0
.end method

.method public setBarringFactorVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoice_:I

    return-object p0
.end method

.method public setBarringFactorVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringFactorVoiceSib_:I

    return-object p0
.end method

.method public setBarringTimeVideo(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideo_:I

    return-object p0
.end method

.method public setBarringTimeVideoSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVideoSib_:I

    return-object p0
.end method

.method public setBarringTimeVoice(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoice_:I

    return-object p0
.end method

.method public setBarringTimeVoiceSib(I)Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib:Z

    iput p1, p0, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->barringTimeVoiceSib_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoice()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoice()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideo()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideo()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVoiceSib()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVoiceSib()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVoiceSib()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_5
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringFactorVideoSib()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringFactorVideoSib()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_6
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->hasBarringTimeVideoSib()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsQmiIF$SsacInfo;->getBarringTimeVideoSib()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed32(II)V

    :cond_7
    return-void
.end method
