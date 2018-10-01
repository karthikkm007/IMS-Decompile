.class public Lorg/codeaurora/ims/parser/SAXXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXXMLHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mConfDescSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

.field private mConfUriEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfUriSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfuri:Lorg/codeaurora/ims/parser/Element;

.field private mInConfDescription:Z

.field private mInUser:Z

.field private mIsDisconnectInfo:Z

.field private mIsEndPoint:Z

.field private mIsEnpointInfo:Z

.field private mIsJoiningInfo:Z

.field private mIsUserCallInfo:Z

.field private mIsassociated:Z

.field private mIscallinfo:Z

.field private mIsconuri:Z

.field private mIsentry:Z

.field private mIsmedia:Z

.field private mIsreferredInfo:Z

.field private mIsroles:Z

.field private mIsserviceuri:Z

.field private mMessageElement:Lorg/codeaurora/ims/parser/Element;

.field private mMessageSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersElement:Lorg/codeaurora/ims/parser/Element;

.field private mUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserEndPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserSubElementlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private usersubElementList:Ljava/util/List;
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

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsserviceuri:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsmedia:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    const-string/jumbo v0, "SAXXMLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v0, "SAXXMLHandler"

    const-string/jumbo v1, "New List obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

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

    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 4

    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    const-string/jumbo v1, "SAXXMLHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super/range {p0 .. p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v12, :cond_c

    const-string/jumbo v12, "SAXXMLHandler"

    const-string/jumbo v13, "endelment:inside"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    if-eqz v12, :cond_e

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "display-text"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    :cond_1
    :goto_1
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v12, :cond_2

    new-instance v9, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v9}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v12, "entry"

    invoke-virtual {v9, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "conf_uris"

    invoke-virtual {v9, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v12, :cond_a

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v12, "user"

    invoke-virtual {v7, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "users"

    invoke-virtual {v7, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v11}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    if-eqz v12, :cond_15

    :cond_3
    :goto_3
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    if-eqz v12, :cond_4

    new-instance v1, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v12, :cond_16

    const-string/jumbo v12, "associated-aors"

    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "user"

    invoke-virtual {v1, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v12, :cond_7

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v12, "endpoint"

    invoke-virtual {v8, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "user"

    invoke-virtual {v8, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1a

    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    if-eqz v12, :cond_6

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    if-eqz v12, :cond_1f

    new-instance v10, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v10}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v12, "refrred"

    invoke-virtual {v10, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "endpoint"

    invoke-virtual {v10, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const-string/jumbo v12, "when"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_6
    invoke-virtual {v8, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v12, "associated-aors"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    :cond_8
    const-string/jumbo v12, "user"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string/jumbo v12, "SAXXMLHandler"

    const-string/jumbo v13, "User need to added end"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    :cond_9
    const-string/jumbo v12, "users"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersList:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo v12, "conference-info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_b
    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_c
    return-void

    :cond_d
    const-string/jumbo v12, "maximum-user-count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "maximum-user-count"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v12, "subject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "subject"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v12, "free-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "free-text"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v12, "keywords"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v13, "keywords"

    iget-object v14, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v12, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string/jumbo v12, "uri"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v12, "purpose"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    const-string/jumbo v12, "purpose"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v12, "conf_uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v12, v13}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    goto/16 :goto_2

    :cond_15
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v12, :cond_3

    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_16
    const-string/jumbo v12, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v12, :cond_17

    const-string/jumbo v12, "uri"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v12, :cond_18

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_4

    :cond_18
    const-string/jumbo v12, "entry"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_19

    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    if-eqz v12, :cond_19

    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v12, "roles"

    invoke-virtual {v5, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "associated-aors"

    invoke-virtual {v5, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    const-string/jumbo v12, "entry"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_19
    const-string/jumbo v12, "languages"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "languages"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1a
    const-string/jumbo v12, "status"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const-string/jumbo v12, "status"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v12, "joining-method"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1c

    const-string/jumbo v12, "joining-method"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v12, "disconnection-method"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "disconnection-method"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1d
    const-string/jumbo v12, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "by"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    if-eqz v12, :cond_22

    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v12, "joining-info"

    invoke-virtual {v4, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "endpoint"

    invoke-virtual {v4, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    const-string/jumbo v12, "when"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_20
    const-string/jumbo v12, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_21

    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_21
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "by"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_22
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    if-eqz v12, :cond_25

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v12, "disconnection-info"

    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "endpoint"

    invoke-virtual {v2, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "when"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    const-string/jumbo v12, "when"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_23
    const-string/jumbo v12, "reason"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    const-string/jumbo v12, "reason"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    const-string/jumbo v12, "by"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "by"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_25
    iget-boolean v12, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    if-eqz v12, :cond_6

    new-instance v6, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v6}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    invoke-virtual {v6}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v12, "call-info"

    invoke-virtual {v6, v12}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v12, "endpoint"

    invoke-virtual {v6, v12}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "display-text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_26

    const-string/jumbo v12, "display-text"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_26
    const-string/jumbo v12, "call-id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_27

    const-string/jumbo v12, "call-id"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v12, "from-tag"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_28

    const-string/jumbo v12, "from-tag"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_28
    const-string/jumbo v12, "to-tag"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "to-tag"

    iget-object v13, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6
.end method

.method public getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriEntryList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    const-string/jumbo v2, "conference-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "state"

    const-string/jumbo v4, "state"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "version"

    const-string/jumbo v4, "version"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "entity"

    const-string/jumbo v4, "entity"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    const-string/jumbo v2, "SAXXMLHandler"

    const-string/jumbo v3, "New ConfreInf obj created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "conference-description"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "maximum-user-count"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-description"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    const-string/jumbo v2, "refrred"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v2, "users"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "users"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-info"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "user"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "SAXXMLHandler"

    const-string/jumbo v3, "User need to added start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v2, "state"

    const-string/jumbo v3, "state"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "entity"

    const-string/jumbo v3, "entity"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v2, :cond_8

    :cond_7
    const-string/jumbo v2, "associated-aors"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v2, :cond_9

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v2, :cond_a

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "uri"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v2, :cond_b

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "roles"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "endpoint"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v2, :cond_d

    new-instance v1, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    const-string/jumbo v2, "endpoint"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    const-string/jumbo v2, "entity"

    const-string/jumbo v3, "entity"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "conf_uris"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    new-instance v2, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conf_uris"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v3, "conference-description"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v2, "entry"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "joining-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v2, "disconnection-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v2, "call-info"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    goto/16 :goto_1
.end method
