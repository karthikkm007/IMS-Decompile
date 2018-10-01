.class public Lorg/codeaurora/ims/QtiImsExt;
.super Lorg/codeaurora/ims/QtiImsExtBase;
.source "QtiImsExt.java"


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtBase;-><init>()V

    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->MODIFY_PHONE_STATE:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->READ_PHONE_STATE:Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    return-void
.end method


# virtual methods
.method protected onGetCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "getCallForwardUncondTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->getCallForwardUncondTimer(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "getHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getHandoverConfig(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetImsPhoneId()I
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "getImsPhoneId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsPhoneId()I

    move-result v0

    return v0
.end method

.method protected onGetPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "getPacketCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getPacketCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onGetPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "getPacketErrorCount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->getPacketErrorCount(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQuerySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "querySsacStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->querySsacStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQueryVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "queryVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/ImsServiceSub;->queryVoltePreference(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onQueryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const-string/jumbo v2, "queryVopsStatus"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->queryVopsStatus(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onRegisterForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "registerForParticipantStatusInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->registerForParticipantStatusInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onRegisterForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "registerForViceRefreshInfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->registerForViceRefreshInfo(Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onResumePendingCall(I)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "resumePendingCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceSub;->resumePendingCall(I)V

    return-void
.end method

.method protected onSendCallDeflectRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "sendCallDeflectRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->sendCallDeflectRequest(Ljava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSendCallTransferRequest(IILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "sendCallTransferRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p2, p3, p4}, Lorg/codeaurora/ims/ImsServiceSub;->sendCallTransferRequest(ILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 10

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setCallForwardUncondTimer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/codeaurora/ims/ImsServiceSub;->setCallForwardUncondTimer(IIIIIIILjava/lang/String;Lorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onSetHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "setHandoverConfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setHandoverConfig(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method

.method protected onUpdateVoltePreference(IILorg/codeaurora/ims/internal/IQtiImsExtListener;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.MODIFY_PHONE_STATE"

    const-string/jumbo v2, "updateVoltePreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExt;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->updateVoltePreference(ILorg/codeaurora/ims/internal/IQtiImsExtListener;)V

    return-void
.end method
