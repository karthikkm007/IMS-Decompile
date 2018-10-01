.class public Lorg/codeaurora/ims/SmartCallForward;
.super Ljava/lang/Object;
.source "SmartCallForward.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final SIM_NUMBER:Ljava/lang/String; = "sim_number_key"

.field private static final XDIVERT_STATUS:Ljava/lang/String; = "xdivert_status_key"


# instance fields
.field private mCallForwardEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mListenForCallStateEnabled:Z

.field private mPhoneCount:I

.field private mPhoneObj:[Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    return v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/SmartCallForward;)Z
    .locals 1

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->isAllSubsActive()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->listen()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/SmartCallForward;ILandroid/telephony/PreciseCallState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/SmartCallForward;->processSmartCallForward(ILandroid/telephony/PreciseCallState;)V

    return-void
.end method

.method static synthetic -wrap3(Lorg/codeaurora/ims/SmartCallForward;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->unRegisterPhoneStateListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;-><init>(Lorg/codeaurora/ims/SmartCallForward;Lorg/codeaurora/ims/SmartCallForward$SubInfoBroadcastReceiver;)V

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    iput-boolean v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    iput-boolean v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v2, v3, :cond_1

    iput-object p1, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/SmartCallForward;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private enableSmartCallForward(ZILjava/lang/String;)V
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableSmartCallForward enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " current callforward status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p2

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lorg/codeaurora/ims/SmartCallForward;->mCallForwardEnabled:Z

    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneObj:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v0, p2

    const/4 v7, 0x4

    move v8, v1

    move-object v9, p3

    move v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private getLineNumber(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sim_number_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLineNumber phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private getNextPhoneId(I)I
    .locals 2

    add-int/lit8 p1, p1, 0x1

    move v0, p1

    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-lt p1, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    new-instance v1, Lorg/codeaurora/ims/SmartCallForward$1;

    invoke-direct {v1, p0, p2}, Lorg/codeaurora/ims/SmartCallForward$1;-><init>(Lorg/codeaurora/ims/SmartCallForward;I)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private getXDivertStatus()Z
    .locals 5

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v3, "xdivert_status_key"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllSubsActive()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/SmartCallForward;->isSlotActive(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isSlotActive(I)Z
    .locals 6

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private listen()V
    .locals 7

    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    const-string/jumbo v5, "Register for call state change"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v5, :cond_1

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "register for call state change subInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Register for call state change subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for phone Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    const/16 v6, 0x800

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    return-void
.end method

.method private processSmartCallForward(ILandroid/telephony/PreciseCallState;)V
    .locals 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v2, "processSmartCallForward invalid phone ID"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/SmartCallForward;->getXDivertStatus()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "processSmartCallForward xdivert is not enabled"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getLineNumber(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "processSmartCallForward invalid phone number"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/SmartCallForward;->isActiveOrHoldingCallPresent(Landroid/telephony/PreciseCallState;)Z

    move-result v2

    :goto_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/SmartCallForward;->getNextPhoneId(I)I

    move-result v3

    invoke-direct {p0, v2, v3, v0}, Lorg/codeaurora/ims/SmartCallForward;->enableSmartCallForward(ZILjava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private unRegisterPhoneStateListener()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "unRegister for call state change"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v4, p0, Lorg/codeaurora/ims/SmartCallForward;->mListenForCallStateEnabled:Z

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lorg/codeaurora/ims/SmartCallForward;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v5, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
