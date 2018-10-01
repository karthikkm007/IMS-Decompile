.class public Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ViceSaxXmlHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

.field private mDialogInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDoesDialogHaveSubElement:Z

.field private mDoesDialogLocalHaveSubElement:Z

.field private mDoesRouteSetHaveSubElement:Z

.field private mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

.field private mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalTargetSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaAttriSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRouteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    const-string/jumbo v0, "ViceSaxxLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v0, "ViceSaxxLHandler"

    const-string/jumbo v1, "ViceSaxxHandler: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public dumpDialogInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    const-string/jumbo v5, "ViceSaxxLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dumpDialogInfo["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] -> index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", dialog ID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", exclusive = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", direction = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", state = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", param name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", param val = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", remote identity = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    const-string/jumbo v5, "ViceSaxxLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dumpDialogInfo["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "] -> index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", dialog media type = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", dialog media direction = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", dialog media port = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v4, v4, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    return-object v4
.end method

.method public endDocument()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    const-string/jumbo v1, "ViceSaxxLHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ViceSaxxLHandler"

    const-string/jumbo v1, "endelment:inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sa:exclusive"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "sa:exclusive"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_SA attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "sa:exclusive"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "sa:exclusive"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "hop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "hop"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_ROUTE_SET_HOP attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "hop"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    :cond_3
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "identity"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_LOCAL_IDENTITY attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "identity"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    iput-boolean v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_5
    const-string/jumbo v0, "mediaAttributes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v0, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo v0, "dialog"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_8
    return-void

    :cond_9
    const-string/jumbo v0, "state"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "state"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_STATE attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "state"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "duration"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "duration"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_DURATION attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "duration"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "identity"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_REMOTE_IDENTITY attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "identity"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "identity"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "referred-by"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "referred-by"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_DIALOG_REFERRED_BY attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "referred-by"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "mediaType"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "mediaType"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_MEDIA_TYPE attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaType"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "mediaType"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v0, "mediaDirection"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "mediaDirection"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_MEDIA_DIRECTION attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaDirection"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "mediaDirection"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v0, "port0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v1, "port0"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ViceSaxxLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VICE_MEDIA_PORT attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "port0"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "port0"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", localname = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", qName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", attri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "dialog-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "version"

    const-string/jumbo v4, "version"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "state"

    const-string/jumbo v4, "state"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "entity"

    const-string/jumbo v4, "entity"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "entity"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "dialog"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "id"

    const-string/jumbo v4, "id"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "call-id"

    const-string/jumbo v4, "call-id"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "local-tag"

    const-string/jumbo v4, "local-tag"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "remote-tag"

    const-string/jumbo v4, "remote-tag"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "direction"

    const-string/jumbo v4, "direction"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "id"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "call-id"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "local-tag"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "remote-tag"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "direction"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v4, "direction"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "sa:exclusive"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "state"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "duration"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    :cond_3
    const-string/jumbo v2, "replaces"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v2, "replaces"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v2, "dialog"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "call-id"

    const-string/jumbo v3, "call-id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "local-tag"

    const-string/jumbo v3, "local-tag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "remote-tag"

    const-string/jumbo v3, "remote-tag"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "call-id"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "local-tag"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "remote-tag"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "referred-by"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "referred-by"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v2, "route-set"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "route-set"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v2, "hop"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "hop"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "route-set"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v2, "local"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "local"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_8
    const-string/jumbo v2, "identity"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v2, :cond_9

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "identity"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "local"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_9
    const-string/jumbo v2, "target"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "target"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "local"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "uri"

    const-string/jumbo v4, "uri"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v5, "uri"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-string/jumbo v2, "param"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v2, "param"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v2, "target"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    const-string/jumbo v2, "pname"

    const-string/jumbo v3, "pname"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pval"

    const-string/jumbo v3, "pval"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pname"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pval"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    const-string/jumbo v3, "pname"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    const-string/jumbo v3, "pval"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    :cond_b
    const-string/jumbo v2, "mediaAttributes"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaAttributes"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "local"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    :cond_c
    const-string/jumbo v2, "mediaType"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaType"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaAttributes"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_d
    const-string/jumbo v2, "mediaDirection"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaDirection"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaAttributes"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_e
    const-string/jumbo v2, "port0"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "port0"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "mediaAttributes"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    :cond_f
    const-string/jumbo v2, "remote"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "remote"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "dialog"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    :cond_10
    const-string/jumbo v2, "identity"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v2, :cond_12

    :cond_11
    :goto_0
    return-void

    :cond_12
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "identity"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "remote"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ViceSaxxLHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    goto :goto_0
.end method
