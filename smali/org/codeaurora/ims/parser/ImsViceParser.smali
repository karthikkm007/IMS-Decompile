.class public Lorg/codeaurora/ims/parser/ImsViceParser;
.super Lorg/codeaurora/ims/parser/ConfInfo;
.source "ImsViceParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;,
        Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;
    }
.end annotation


# static fields
.field private static final LOCAL_TARGET_PARAM_NAME:Ljava/lang/String; = "+sip.rendering"

.field private static final LOCAL_TARGET_PARAM_PVAL_NO:Ljava/lang/String; = "no"

.field private static mDialogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialogIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogStr:Ljava/lang/String;

.field private mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    const-string/jumbo v0, "ImsViceParser"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->preparePartialList()V

    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "full"

    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    return-object v1
.end method

.method private getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_12

    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    const-string/jumbo v8, "confirmed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_9

    iget-object v7, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    if-eqz v2, :cond_8

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "sendrecv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v0, "volteactive"

    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "audioState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", videoState = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", portPresent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "sendonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "recvonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "inactive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    const-string/jumbo v0, "volteheld"

    goto :goto_1

    :cond_3
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "sendrecv"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v6, "vttxrx"

    :cond_4
    :goto_2
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "video"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "sendonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v6, "vttx"

    goto :goto_2

    :cond_6
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "recvonly"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v6, "vtrx"

    goto :goto_2

    :cond_7
    iget-object v7, v2, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    const-string/jumbo v8, "inactive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v6, "vtheld"

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "Media Parameter incorrect!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_14

    const-string/jumbo v7, "volteactive"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    if-eqz v6, :cond_a

    if-eqz v6, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    const-string/jumbo v7, "volteactive"

    return-object v7

    :cond_b
    const-string/jumbo v7, "vttxrx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string/jumbo v7, "vttxrx"

    return-object v7

    :cond_c
    const-string/jumbo v7, "vttx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "vttx"

    return-object v7

    :cond_d
    const-string/jumbo v7, "vtrx"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "vtrx"

    return-object v7

    :cond_e
    const-string/jumbo v7, "vtheld"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string/jumbo v7, "vtheld"

    return-object v7

    :cond_f
    const-string/jumbo v7, "volteheld"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v6, :cond_10

    if-eqz v6, :cond_11

    if-eqz v3, :cond_11

    :cond_10
    const-string/jumbo v7, "volteheld"

    return-object v7

    :cond_11
    if-eqz v6, :cond_12

    if-eqz v3, :cond_13

    :cond_12
    :goto_3
    return-object v10

    :cond_13
    const-string/jumbo v7, "vtheld"

    return-object v7

    :cond_14
    iget-object v7, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v8, "audioState null!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "vttxrx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "vttx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "vtrx"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    const-string/jumbo v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "volteactive"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramName:Ljava/lang/String;

    const-string/jumbo v4, "+sip.rendering"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->paramVal:Ljava/lang/String;

    const-string/jumbo v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method private isDialogIdsEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preparePartialList()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->allowedPartial:Ljava/util/ArrayList;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;)V
    .locals 0

    sput-object p0, Lorg/codeaurora/ims/parser/ImsViceParser;->sHandler:Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;

    return-void
.end method


# virtual methods
.method public getCallPullInfo(ZZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->isDialogIdsEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v4, "getCallPullInfo mDialogIds null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    aput-object v3, v0, v6

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    aput-object v3, v0, v7

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallType(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {p0, v3, p1, p2}, Lorg/codeaurora/ims/parser/ImsViceParser;->isCallPullable(Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;ZZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v3, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    aput-object v3, v0, v10

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCallPullInfo ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", DialogId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Is Pullable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Call Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Direction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v10

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v1
.end method

.method public getDialogInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getDialogInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViceDialogInfoAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    return-object v0
.end method

.method public updateViceXmlBytes([B)V
    .locals 6

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VICE XML in string = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceDialogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->getInstance()Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mViceparser:Lorg/codeaurora/ims/parser/ViceSaxXmlParser;

    invoke-static {v1}, Lorg/codeaurora/ims/parser/ViceSaxXmlParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const-string/jumbo v2, "*************New Vice Notification*****************"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->debugLog(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v2, v3, v5}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ImsViceParser;->getDialogInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ImsViceParser;->mDialogIds:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
