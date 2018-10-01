.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsService$1;,
        Lorg/codeaurora/ims/ImsService$2;
    }
.end annotation


# static fields
.field private static final ACTION_GET_RADIO_ACCESS_FAMILY_CHANGED:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final MAX_SUBSCRIPTIONS:I = 0x1


# instance fields
.field private final ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final READ_PHONE_STATE:Ljava/lang/String;

.field private final READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

.field private final mBinder:Lcom/android/ims/internal/IImsService$Stub;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mImsPhoneId:I

.field protected mIsReceiverRegistered:Z

.field protected mNumMultiModeStacks:I

.field private mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

.field private mServiceSubMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0
.end method

.method static synthetic -get1(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lorg/codeaurora/ims/ImsService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->enforceReadPhoneState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/codeaurora/ims/ImsService;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    return-void
.end method

.method static synthetic -wrap2(Lorg/codeaurora/ims/ImsService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mServiceSubMap:Ljava/util/Map;

    const-string/jumbo v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->ACCESS_IMS_CALL_SERVICE:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->MODIFY_PHONE_STATE:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PRIVILEGED_PHONE_STATE:Ljava/lang/String;

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->READ_PHONE_STATE:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    iput v1, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    new-instance v0, Lorg/codeaurora/ims/ImsService$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$1;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lorg/codeaurora/ims/ImsService$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsService$2;-><init>(Lorg/codeaurora/ims/ImsService;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    return-void
.end method

.method private enforceReadPhoneState(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, p1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getNumSubscriptions()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private handleRafInfoChange()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRafInfoChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Multimode stacks. Handled by DDS switch. EXIT!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRafInfoChange: Phone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsService;->isMultiModeSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    move v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRafInfoChange: NumPhones: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Multiple Multimode stacks: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-le v5, v8, :cond_4

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    const/4 v5, -0x1

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneBySubId(I)V

    iget-object v5, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v8, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    const-string/jumbo v5, "handleRafInfoChange: registered for DDS switch..."

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    iput v7, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    goto :goto_1
.end method

.method private initCallDeflectStatus()V
    .locals 3

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "qti.ims.call_deflect"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "initSubscriptionStatus: multi-sim..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->handleRafInfoChange()V

    iget v0, p0, Lorg/codeaurora/ims/ImsService;->mNumMultiModeStacks:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "initSubscriptionStatus: registered for RAF info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "org.codeaurora.intent.action.ACTION_RADIO_CAPABILITY_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsService;->mIsReceiverRegistered:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "initSubscriptionStatus: Not multi-sim..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isMultiModeSupported(I)Z
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x4000

    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private switchImsPhoneByPhoneId(I)V
    .locals 7

    const/high16 v6, 0x20000000

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switschImsPhone: Invalid phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-ne v4, p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchImsPhone: ImsPhoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " UNchanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "switchImsPhone: ImsPhoneId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/ImsServiceSub;->registerForPhoneId(I)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    iget v4, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    if-eq v4, v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android:phone_id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android:phone_id"

    iget v5, p0, Lorg/codeaurora/ims/ImsService;->mImsPhoneId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private switchImsPhoneBySubId(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchImsPhoneBySubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    return-void

    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v2, "ImsService created!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v2

    new-array v2, v2, [Lorg/codeaurora/ims/ImsServiceSub;

    iput-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    new-instance v3, Lorg/codeaurora/ims/ImsServiceSub;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(ILandroid/content/Context;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "ims"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mBinder:Lcom/android/ims/internal/IImsService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v2, "qti.ims.ext"

    iget-object v3, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsServiceSub;->getQtiImsExtBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsService;->switchImsPhoneByPhoneId(I)V

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v2, v2, v5

    invoke-static {v2, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initSubscriptionStatus()V

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->initCallDeflectStatus()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v1, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->getNumSubscriptions()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsService;->mServiceSub:[Lorg/codeaurora/ims/ImsServiceSub;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
